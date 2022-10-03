import axios from 'axios';

import {createApp} from 'vue';
import App from './App.vue';
const application = createApp(App);

export function init(){
  application.mount('#app');
}
