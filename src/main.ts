import { createApp } from 'vue'
import '@fortawesome/fontawesome-free/css/all.min.css'
import './style.css'
import App from './App.vue'
import { applyTheme } from './theme'

applyTheme()
createApp(App).mount('#app')
