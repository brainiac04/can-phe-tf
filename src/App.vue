<!--
 * @Author: PiPi
 * @Github: https://github.com/SenLiangpi
 * @Email: pisenliang@gmail.com
 * @Date: 2019-08-20 10:46:03
 * @LastEditors: PiPi
 * @LastEditTime: 2019-09-08 13:26:58
 -->
<template>
  <div id="app">
    <router-view />
  </div>
</template>

<script>
import vueAmx from "vue-amx";
import Vue from "vue";
import { setTimeout } from "timers";
// let appNet = {
//   name: "appNet",
//   type: false,
//   store: {
//     type: "none"
//   }
// };
// let store = [appNet];
// Vue.use(vueAmx, store);
export default {
  name: "App",
  mounted() {
    try {
      document.querySelector(".box").style.opacity = "0";
      setTimeout(() => {
        document.querySelector(".box").style.display = "none";
      }, 1000);
    } catch (e) {}
  }
};
</script>

<style>
* {
  padding: 0;
  margin: 0;
}
@font-face {
  font-family: Facto;
  src: url("./assets/fonts/Facto.otf");
}

@font-face {
  font-family: Facto-Medium;
  src: url("./assets/fonts/Facto_Medium.otf");
}

/* @font-face {
  font-family: Facto-Light;
  src: url("./assets/fonts/Facto_Light.otf");
} */

#app {
  font-family: Facto, -apple-system-font, BlinkMacSystemFont, "Helvetica Neue",
    "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei",
    Arial, sans-serif;
  background-color: #dedede;
  text-align: center;
}
</style>
