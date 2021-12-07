import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks';
import axios from 'axios';
import '../components/index.js.erb';

Vue.use(TurbolinksAdapter);
const csrf = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

Vue.use({
  install(Vue) {
    Vue.prototype.$http = axios.create({
      headers: { "X-CSRF-TOKEN": csrf }
    })
  }
})

document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    el: '[data-behavior="vue"]'
  })
  console.log(app)
});
