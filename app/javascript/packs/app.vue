<template>
  <div>
    <router-view></router-view>
  </div>
</template>

<script>
import Vue from 'vue'
import VueRouter from 'vue-router'

import UserIndexPage from './UserIndexPage.vue'
import UserNewPage from './UserNewPage.vue'

const router = new VueRouter({
  routes: [
    { path: '/index',
      name: 'UserIndexPage',
      component: UserIndexPage  },
    { path: '/users/new',
      name: 'UserNewPage',
      component: UserNewPage    }
  ]
})

// ref. https://jp.vuejs.org/v2/guide/plugins.html#%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%E3%81%AE%E4%BD%BF%E7%94%A8
Vue.use(VueRouter)

export default {
  router
}
console.log(VueRouter)
</script>

<style scoped>
</style>