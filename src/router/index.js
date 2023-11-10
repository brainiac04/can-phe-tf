
import Vue from 'vue'
import Router from 'vue-router'

import NewPage from '@/carshow/NewPage.vue'
import US from '@/carshow/US.vue'

Vue.use(Router)

export default new Router({
  routes: [{
    path: '/',
    name: 'us',
    component: US
  }
  ]
})
