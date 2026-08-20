# CV GitHub Pages Site

Static CV site built from Typst sources and a Vue/Vite shell.

## Local Commands

```bash
bun install
bun run build
```

`bun run build` does the full GitHub Pages build:

1. finds every `.typ` file in `cv_pipeline`;
2. compiles each source to standalone HTML and PDF;
3. runs the Vite build, which bundles Vue/TypeScript/CSS imports into `dist`;
4. copies direct-link CV HTML/PDF files into `dist/cv_pipeline`.

For Typst-only regeneration:

```bash
bun run build:typst
```

The GitHub Pages workflow is in `.github/workflows/pages.yml` and deploys `dist`.
