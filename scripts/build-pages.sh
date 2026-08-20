#!/usr/bin/env bash
set -euo pipefail

script_path="$(readlink -f "${BASH_SOURCE[0]}")"
script_dir="$(cd "$(dirname "$script_path")" && pwd)"
project_dir="$(cd "$script_dir/.." && pwd)"
pipeline_dir="$project_dir/cv_pipeline"
dist_dir="$project_dir/dist"
typst_only=false

if [[ "${1:-}" == "--typst-only" ]]; then
  typst_only=true
elif [[ "${1:-}" != "" ]]; then
  printf 'Unknown option: %s\n' "$1" >&2
  printf 'Usage: %s [--typst-only]\n' "$0" >&2
  exit 2
fi

require_command() {
  if ! command -v "$1" >/dev/null 2>&1; then
    printf 'Required command is missing: %s\n' "$1" >&2
    exit 127
  fi
}

require_command typst
require_command python3

mapfile -t typst_sources < <(find "$pipeline_dir" -maxdepth 1 -type f -name '*.typ' | sort)

if [[ "${#typst_sources[@]}" -eq 0 ]]; then
  printf 'No Typst sources found in %s\n' "$pipeline_dir" >&2
  exit 1
fi

mkdir -p "$pipeline_dir/archive"

for source in "${typst_sources[@]}"; do
  html_output="${source%.typ}.html"
  pdf_output="$pipeline_dir/archive/$(basename "${source%.typ}").pdf"

  bash "$pipeline_dir/build_typst_print_html.sh" "$source" "$html_output"
  typst compile --root "$project_dir" "$source" "$pdf_output"
  printf 'Generated %s\n' "$pdf_output"
done

if [[ "$typst_only" == true ]]; then
  exit 0
fi

if command -v bun >/dev/null 2>&1; then
  bun run build:app
else
  require_command npm
  npm run build:app
fi

mkdir -p "$dist_dir/cv_pipeline/archive"
cp "$pipeline_dir"/*.html "$dist_dir/cv_pipeline/"
cp "$pipeline_dir/archive"/*.pdf "$dist_dir/cv_pipeline/archive/"
touch "$dist_dir/.nojekyll"

printf 'GitHub Pages bundle is ready in %s\n' "$dist_dir"
