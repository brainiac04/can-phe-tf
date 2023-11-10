<!--
 * @Description: In User Settings Edit
 * @Author: your name
 * @Date: 2019-07-29 09:50:07
 * @LastEditTime: 2019-08-19 10:11:44
 * @LastEditors: Please set LastEditors
 -->
<template>
  <div class="img">
    <div id="div-video">
      <video
        id="my-video"
        muted
        loop
        controls
        autoplay
        width="250"
        poster="../assets/header/videoposter.png"
        webkit-playsinline="true"
        playsinline="true"
      >
        <source src="../assets/header/video.mp4" type="video/mp4" />Sorry, your browser doesn't support embedded videos.
      </video>
    </div>
    <div class="top">
      <!-- <h1 style="color:#fff">{{appNet}}</h1> -->
      <div class="top_img box_all">
        <div class="Visible logo_Visible">
          <img
            v-show="show1"
            class="logo animated fadeIn"
            src="../assets/header/header-logo-white.svg"
            alt
          />
        </div>
        <div class="Visible top_test">
          <p v-show="show2" class="animated fadeInDown"> BYTON M-Byte</p>
          <p v-show="show2" class="animated fadeInDown">新一代智能终端，即将到来</p>
        </div>
        <div class="Visible buttom_Visible" id="reservation">
          <div
            v-if="$route.query.reservation=='true'"
            v-show="show3"
            @click="reservation(0)"
            class="buttom animated fadeInUp delay-1s"
            style="cursor: pointer;"
          >预约 M-Byte</div>
          <div
            v-else
            v-show="show3"
            @click="reservation(1)"
            class="buttom animated fadeInUp delay-1s"
            style="cursor: pointer;"
          >预约 M-Byte</div>
        </div>
        <div class="Visible line_Visible">
          <img class="line line_1_1" src="../assets/header/line1_1_1.png" alt />
          <img
            v-show="show4"
            class="line line_1_2 animated fadeIn rotateInUpLeft slow"
            src="../assets/header/line1_2.png"
            alt
          />
        </div>
      </div>
    </div>
    <div class="two">
      <div class="two_img box_all">
        <!-- <div class="xiebian"></div> -->
        <div class="Visible two_text">
          <p v-show="show5" class="animated fadeInUp">BYTON 首款智能互联汽车</p>
          <p v-show="show5" class="animated fadeInUp">极具张力的车身结构与标志性的数字化元素</p>
          <p v-show="show5" class="animated fadeInUp">揭示着未来的出行模式：智能驱动</p>
        </div>
        <div class="Visible rotation rotation_1">
          <div class="rotation1_1" :style="`background-image:url(${rotation1_1})`"></div>
          <!-- <swiper v-show="show6" class="animated fadeIn 1s" :options="swiperOption">
            <swiper-slide>
              <div :style="`background-image:url(${rotation1_1})`"></div>
            </swiper-slide>
            <div  style="display:none" class="swiper-pagination" slot="pagination"></div>
          </swiper>-->
        </div>
      </div>
    </div>
    <div class="three">
      <div class="Visible"></div>
      <!-- <div class="three_img box_all">
        <div class="Visible three_text">
          <p v-show="show7" class="animated slideInUp">这就是 BYTON ，</p>
          <p v-show="show7" class="animated slideInUp">一款真正的智能互联汽车。</p>
        </div>
      </div>-->
      <div class="Visible three_line">
        <!-- <img v-show="show8" class="line animated rotateInUpRight" src="../assets/header/line1.png" alt> -->
        <img class="line line_2_1" src="../assets/header/line2_1.png" alt />
        <img
          v-show="show8"
          class="line line_2_2 animated fadeIn rotateInUpLeft slow"
          src="../assets/header/line2_2.png"
          alt
        />
      </div>
    </div>
    <div class="four">
      <div class="four_img box_all">
        <div class="Visible four_text">
          <p v-show="show9" class="animated fadeInUp">数字生活进行时</p>
          <p v-show="show9" class="animated fadeInUp">多屏联动的数字座舱，私享愉悦驾乘时光</p>
          <p v-show="show9" class="animated fadeInUp">创新的五维人机交互方式</p>
          <p v-show="show9" class="animated fadeInUp">为你重塑智能移动出行新体验</p>
        </div>
        <div class="Visible rotation rotation_2">
          <swiper v-show="show10" class="animated" :options="swiperOption">
            <swiper-slide>
              <div :style="`background-image:url(${rotation2_1})`"></div>
            </swiper-slide>
            <swiper-slide>
              <div :style="`background-image:url(${rotation2_2})`"></div>
            </swiper-slide>
            <swiper-slide>
              <div :style="`background-image:url(${rotation2_3})`"></div>
            </swiper-slide>
            <swiper-slide>
              <div :style="`background-image:url(${rotation2_4})`"></div>
            </swiper-slide>
            <div class="swiper-pagination" slot="pagination"></div>
            <!-- <div class="swiper-button-prev" slot="button-prev"></div>
            <div class="swiper-button-next" slot="button-next"></div>-->
          </swiper>
        </div>
      </div>
      <div class="Visible four_line">
        <!-- <img v-show="show11" class="line animated rotateInUpRight" src="../assets/header/line2.png" alt> -->
        <img class="line line_3_1" src="../assets/header/line3_1.png" alt />
        <img
          v-show="show11"
          class="line line_3_2 animated rotateInDownRight slow"
          src="../assets/header/line3_2.png"
          alt
        />
      </div>
    </div>
    <div class="fives">
      <div class="fives_img box_all">
        <div class="Visible fives_text">
          <h5 v-show="show12" class="animated fadeInUp">欢迎来到你的数字会客厅拓展智慧边界</h5>
          <div></div>
          <p v-show="show12" class="animated fadeInUp">为了让你和爱车时刻心意相通</p>
          <p v-show="show12" class="animated fadeInUp">BYTON 率先将超大48英寸车载共享全面屏投入量产</p>
          <p v-show="show12" class="animated fadeInUp">为你的数字生活提供专属空间</p>
        </div>
        <div style="position:relative">
          <video
            id="video1"
            preload:auto
            controlsList='nodownload noremote footbar'
            poster="../assets/header/image1.jpg"
            controls="controls"
            webkit-playsinline
            playsinline
          >
            <source
              src="https://official-2-product-app.oss-cn-shanghai.aliyuncs.com/StaticMovie/video1.7aeb725.mp4"
              type="video/mp4"
            />Sorry, your browser doesn't support embedded videos.
          </video>
          <!-- <div @click="video1()" class="buttom2"></div> -->
        </div>
      </div>
      <div class="Visible fives_line">
        <!-- <img v-show="show13" class="line animated rotateInUpRight" src="../assets/header/line3.png" alt> -->
        <img class="line line_4_1" src="../assets/header/line4_1.png" alt />
        <img
          v-show="show13"
          class="line line_4_2 animated fadeIn rotateInUpLeft slow"
          src="../assets/header/line4_2.png"
          alt
        />
      </div>
    </div>
    <div class="six">
      <div class="six_img box_all">
        <div class="Visible six_text">
          <p v-show="show14" class="animated fadeInUp">数据安全和车辆安全同等重要</p>
          <!-- <p v-show="show14" class="animated fadeInUp">车辆安全和数据安全，是 BYTON 的基本安全原则</p> -->
          <p v-show="show14" class="animated fadeInUp">用尖端技术保证车辆的安全性</p>
          <p v-show="show14" class="animated fadeInUp">打造成真正的智能终端</p>
        </div>
        <video
          id="video2"
          preload:auto
          poster="../assets/header/image2.png"
          controlsList='nodownload noremote footbar'
          controls="controls"
          width="250"
          webkit-playsinline
          playsinline
        >
          <source
            src="https://official-2-product-app.oss-cn-shanghai.aliyuncs.com/StaticMovie/video2.cb6dba8.mp4"
            type="video/mp4"
          />Sorry, your browser doesn't support embedded videos.
        </video>
        <!-- <div @click="button(2)" class="buttom3"></div> -->
      </div>
      <div class="Visible six_line4">
        <!-- <img v-show="show15" class="line animated rotateInUpRight" src="../assets/header/line4.png" alt> -->
        <!-- <img class="line line_5_1" src="../assets/header/line5_1.png" alt> -->
        <!-- <img v-show="show15" class="line line_5_2 animated fadeIn rotateInUpLeft slow" src="../assets/header/line5_2.png" alt> -->
      </div>
    </div>
    <div class="seven">
      <div class="seven_img box_all">
        <div class="Visible seven_text">
          <p v-show="show16" class="animated fadeInUp">为愉悦出行保驾护航</p>
          <p v-show="show16" class="animated fadeInUp">拜腾自主设计安装的电池包</p>
          <p v-show="show16" class="animated fadeInUp">由宁德时代提供电芯及模组</p>
          <p v-show="show16" class="animated fadeInUp">经100%下线检测，确保电池包的性能和安全</p>
        </div>
        <img style="width: 100vw;margin-top: 7vw;" src="../assets/header/seven111.png" alt />
        <div class="Visible seven_version">
          <div v-show="show17" class="animated fadeInUp">
            <p>后驱版本</p>
            <p>72千瓦时电池容量</p>
            <p>续航里程: 400公里*</p>
          </div>
          <div v-show="show17" class="animated fadeInUp delay-z5s">
            <p>四驱版本</p>
            <p>95千瓦时电池容量</p>
            <p>续航里程: 520公里*</p>
          </div>
          <p v-show="show18" class="Visible remarks animated fadeInUp">*在 NEDC 工况标准下</p>
        </div>
      </div>
    </div>
    <div class="eight">
      <div class="eight_img box_all">
        <div class="Visible eight_text">
          <p v-show="show19" class="animated fadeInUp delay-z5s">“智”同道合，终将互联</p>
          <p v-show="show19" class="animated fadeInUp delay-z5s">相聚的时光总是最为珍贵</p>
          <p v-show="show19" class="animated fadeInUp delay-z5s">这也是 BYTON Place诞生的原因</p>
          <p v-show="show19" class="animated fadeInUp delay-z5s">欢迎你来到这里，与我们深度互联</p>
        </div>
        <div v-show="show19" class="buttom3 animated fadeInUp delay-z5s" @click="button(3)" style="cursor: pointer;">探索 BYTON Place
          <img class="ioc" src="../assets/header/ioc.png" alt />
        </div>
      </div>
    </div>
    <div v-if="buttom4if">
      <div class="buttom4 animated slideInUp" v-if="$route.query.reservation !== 'true'">
        <img src="../assets/header/header-logo-dark.svg" alt srcset />
        <div class="reservebtn" @click="reservation(1)" style="cursor: pointer;">预约 M-Byte</div>
      </div>
    </div>
    <img id="image" style="width:100vw;" src="" alt="">
  </div>
  <!-- <video id="my-video" class="video-js" src="http://www.changan.com.cn/changanvideo/video/qyjs.mp4" controls="" preload="none" width="710" height="400" ></video> -->
</template>
<script>
// import axios from "axios";

import rotation1_1 from "../assets/header/rotation1-1.png";
import rotation2_1 from "../assets/header/rotation2-1.png";
import rotation2_2 from "../assets/header/interior_1.png";
import rotation2_3 from "../assets/header/interior_2.png";
import rotation2_4 from "../assets/header/interior_3.png";
import { log } from "util";

import Amx from 'vue-amx'

var u = navigator.userAgent,
  app = navigator.appVersion;
var isAndroid = u.indexOf("Android") > -1 || u.indexOf("Linux") > -1; //g
var isIOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/);

// let data = "alert('aa')"
// let a = new Function(data);
// a();

export default {
  name: "HomeHeader",
  data() {
    return {
      rotation1_1,
      rotation2_1,
      rotation2_2,
      rotation2_3,
      rotation2_4,
      show1: false,
      show2: false,
      show3: false,
      show4: false,
      show5: false,
      show6: false,
      show7: false,
      show8: false,
      show9: false,
      show10: false,
      show11: false,
      show12: false,
      show13: false,
      show14: false,
      show15: false,
      show16: false,
      show17: false,
      show18: false,
      show19: false,
      show20: false,
      show21: false,
      show22: false,
      swiperOption: {
        loop: true,
        pagination: {
          el: ".swiper-pagination"
        }
        // navigation: {
        //   nextEl: '.swiper-button-next',
        //   prevEl: '.swiper-button-prev'
        // }
      },
      buttom4if: true,
      reservationif: false
    };
  },
  mixins:[Amx.read('appNet')],
  methods: {
    button(e) {
      if (this.reservationif) {
        return;
      }
      let _this = this;
      setTimeout(function() {
        _this.reservationif = false;
      }, 1000);
      if (isAndroid) {
        this.reservationif = true;
        android.toBrandStore(JSON.stringify({ id: "1138691628384722945" }));
      }
      if (isIOS) {
        this.reservationif = true;
        window.webkit.messageHandlers.getBrandStoreId.postMessage({
          id: "1138691628384722945"
        });
      }
    },
    reservation(e) {
      // console.log(this.reservationif);
      if (this.reservationif) {
        return;
      }
      let _this = this;
      setTimeout(function() {
        _this.reservationif = false;
      }, 1000);
      if (e === 0) {
        if (isAndroid) {
          this.reservationif = true;
          android.toAppointment(JSON.stringify({ reservation: true }));
        }
        if (isIOS) {
          this.reservationif = true;
          window.webkit.messageHandlers.getReservationInfo.postMessage({
            reservation: true
          });
        }
      } else {
        if (isAndroid) {
          this.reservationif = true;
          android.toAppointment(JSON.stringify({ reservation: false }));
        }
        if (isIOS) {
          this.reservationif = true;
          window.webkit.messageHandlers.getReservationInfo.postMessage({
            reservation: false
          });
        }
      }
    },
    huadong() {
      let height = window.screen.availHeight - 50;
      // console.log(height);
      let lists = document.getElementsByClassName("Visible").length;
      // console.log(lists);
      for (let a = 0; a < lists; a++) {
        // console.log(lists-1 +"=" +document.getElementsByClassName("Visible")[lists-1].getBoundingClientRect().top);
        if (
          document.getElementsByClassName("Visible")[a].getBoundingClientRect()
            .top < height
        ) {
          this["show" + (a + 1)] = true;
        }
      }
      if (
        document.getElementById("reservation").getBoundingClientRect().top <
          window.screen.availHeight &&
        document.getElementById("reservation").getBoundingClientRect().top > 0
      ) {
        this.buttom4if = false;
      } else {
        this.buttom4if = true;
      }
    }
  },
  mounted() {
    let _this = this,
      type = true;
    this.huadong();
    window.onscroll = function(e) {
      _this.huadong();
    };
    let video1 = document.getElementById('video1')
    let video2 = document.getElementById('video2')
    video1.addEventListener('play',function(){
      video2.pause();
    })
    video2.addEventListener('play',function(){
      video1.pause();
    })
  }
};
</script>

<style scoped>
.img {
  width: 100vw;
  overflow: hidden;
  /* background-color: #e3e4e3; */
}
.top,
.tow,
.three,
.four,
.fives,
.six,
.seven,
.eight {
  /* background-color: #e3e4e3; */
}
p {
  font-size: 3.8vw;
}
#div-video {
  width: 100vw;
  height: 190.4584094vw;
  position: absolute;
  top: 0;
  overflow: hidden;
  z-index: -1;
}
#my-video {
  width: 382.3vw;
  height: 215vw;
  margin: 0 auto;
  margin-left: -1vw;
  margin-top: -10vw;
}
#my-video::-webkit-media-controls {
  display: none !important;
}

.fadeIn rotateInUpLeft {
  animation-name: fadeIn rotateInUpLeft;
}

/* .rotateInUpLeft {
  animation-name: rotateInUpLeft;
} */
.logo_Visible {
  margin-top: 10vw;
  height: 8vw;
}
.logo {
  height: 8vw;
}
.box_all {
  background-size: 100vw auto;
  color: #777a7d;
  text-align: center;
  padding-top: 1px;
}
.rotation {
  width: 100vw;
}
.rotation_1 {
  margin-top: 74vw;
}
.swiper-container {
  width: 100vw;
}
.swiper-container .swiper-slide div {
  width: 100vw;
  height: 60vw;
  background-repeat: no-repeat;
  background-size: contain;
  background-position: center;
}
.rotation1_1 {
  width: 100vw;
  height: 60vw;
  background-repeat: no-repeat;
  background-size: contain;
  background-position: center;
}
.rotation_1 .swiper-container {
  height: 60vw;
}
.rotation_1 .swiper-container .swiper-slide div {
  height: 60vw;
}
.rotation >>> .swiper-pagination-bullet {
  background: #000;
  width: 10px;
  height: 10px;
  /* border: 0.4vw solid #000; */
}
.rotation >>> .swiper-pagination-bullet-active {
  background: #d2a38e;
  /* border: 0.4vw solid #d2a38e; */
}
.rotation_2 {
  margin-top: 10vw;
}
.rotation_2 .swiper-container {
  height: 75vw;
}
.rotation_2 .swiper-container .swiper-slide div {
  height: 60;
}
.top {
  /* background-color: rgba(0,0,0,0.7); */
}
.top_img {
  width: 100vw;
  height: 190.4584094vw;
  /* background-image: url("../assets/header/top1.png"); */
  color: #ffffff;
}
.line {
  width: 100vw;
  position: absolute;
  left: 0;
}

.top_test {
  margin-top: 29vw;
  height: 30vw;
}
.top_img div h1 {
  font-size: 6.5vw;
}
.top_img div p {
  font-size: 7vw;
  margin-top: 2vw;
}
.buttom_Visible {
  margin: 10vw auto 0;
  width: 35vw;
  height: 10vw;
}
.top_img .buttom {
  border: 1px solid rgba(255, 255, 255, 0.2);
  line-height: 9vw;
  width: 35vw;
}
.line_Visible {
  margin-top: 80.5vw;
  height: 13vw;
  position: relative;
}
.line_1_1 {
  top: 4vw;
}
.line_1_2 {
  top: 2vw;
}

.xiebian {
  width: 100vw;
  height: 4vw;
  margin-top: 4.5vw;
  transform: rotate(4.8deg);
  background: #000;
}
.two {
  margin-top: 2vw;
}
.two .two_img {
  width: 100vw;
  height: 194.4584094vw;
  background-image: url("../assets/header/two1.png");
  background-color: #e3e4e3;
  background-repeat: no-repeat;
  background-position-y: 60vw;
}
.two .two_img .two_text {
  margin-top: 20vw;
}
.two .two_img p {
  line-height: 6vw;
}
.two .two_img p:first-child {
  font-size: 7vw;
  line-height: 6vw;
  margin-bottom: 7vw;
}
.three {
  margin-top: -6px;
}
.three .three_img {
  width: 100vw;
  height: 104.2vw;
  background-image: url("../assets/header/three.png");
}
.three .three_img .three_text {
  margin-top: 22vw;
}
.three .three_img .three_text p {
  font-size: 7vw;
  margin-bottom: 1vw;
}
.three_line {
  margin-top: -0.2vw;
  position: relative;
}
.line_2_1 {
  top: -14.2vw;
}
.line_2_2 {
  top: -10vw;
}
.four {
  margin-top: -14.5vw;
}
.four .four_img {
  width: 100vw;
  height: 166vw;
  background-image: url("../assets/header/four.png");
}
.four .four_text {
  margin-top: 24vw;
}
.four .four_text p {
  line-height: 6vw;
}
.four .four_text p:first-child {
  font-size: 7vw;
  line-height: 6vw;
  margin-bottom: 7vw;
}
.four_line {
  margin-top: -18vw;
  position: relative;
}
.four_line .line_3_1 {
}
.four_line .line_3_2 {
  top: -6vw;
}
.fives {
  margin-top: -18vw;
}
.fives .fives_img {
  width: 100vw;
  height: 175vw;
  background-image: url("../assets/header/fives.png");
  background-color: #e3e4e3;
}
.fives .fives_text {
  margin-top: 24vw;
}
.fives .fives_text h5 {
  font-size: 7vw;
  font-weight: 400;
  margin-bottom: 2vw;
}
.fives .fives_text p {
  line-height: 6vw;
}
.fives .fives_text div {
  height: 4vw;
}
 #video1 {
  width: 85vw;
  height: 37vw;
  margin-top: 9vw;
}
.fives_line {
  margin-top: -5.7vw;
  position: relative;
}
.fives_line .line_4_1 {
  top: -0.9vw;
}
.fives_line .line_4_2 {
}

.buttom2 {
  width: 10vw;
  height: 10vw;
  border: 1px solid #fff;
  margin: 21.5vw auto;
}
.six {
  margin-top: 5.4vw;
}
.six .six_img {
  width: 100vw;
  height: 124vw;
  /* background-image: url("../assets/header/six.png"); */
  background-color: #e3e4e3;
}
.six .six_text {
  margin-top: 22vw;
}
.six .six_text p {
  line-height: 6vw;
}
.six .six_text p:first-child {
  font-size: 7vw;
  line-height: 6vw;
  margin-bottom: 7vw;
}
#video2 {
  width: 100vw;
  margin-top: 15vw;
}
/* .six .buttom3{
  width: 10vw;
  height: 10vw;
  border: 1px solid #fff;
  margin: 32.5vw auto 0;
} */
.six .six_line4 {
  margin-top: -14vw;
  position: relative;
}
.six .line_5_1 {
}
.six .line_5_2 {
  top: -8vw;
}
.seven {
  margin-top: 10vw;
}
.seven .seven_img {
  width: 100vw;
  height: 169vw;
  /* background-image: url("../assets/header/seven.png"); */
  background-color: #e3e4e3;
}
.seven .seven_text {
  margin-top: 22vw;
}
.seven .seven_text p {
  line-height: 6vw;
}
.seven .seven_text p:first-child {
  font-size: 7vw;
  line-height: 6vw;
  margin-bottom: 7vw;
}
.seven .seven_version {
  display: block;
  margin-top: 10vw;
}
.seven .seven_version div {
  float: left;
  width: 50vw;
}
.seven .seven_version div p {
  line-height: 6vw;
}
.seven .seven_version div p:first-child {
  font-size: 5.5vw;
  color: #d1a18d;
  margin-bottom: 3vw;
}
.seven .seven_version .remarks {
  font-size: 3vw;
  text-align: right;
  margin-right: 3vw;
  padding-top: 24vw;
  color: #c5c7c7;
}
.eight {
  margin-top: -6vw;
}
.eight .eight_img {
  width: 100vw;
  height: 210vw;
  background-image: url("../assets/header/eight.png");
}
.eight .eight_text {
  margin-top: 39vw;
}
.eight .eight_text p {
  line-height: 6vw;
}
.eight .eight_text p:first-child {
  font-size: 7vw;
  line-height: 6vw;
  margin-bottom: 9vw;
}
.eight .buttom3 {
  font-size: 6vw;
  line-height: 6vw;
  width: 56vw;
  margin: 100vw auto 0;
  position: relative;
  text-align: left;
}
.eight .buttom3 .ioc {
  height: 5vw;
  position: absolute;
  right: 0vw;
  top: 0.9vw;
}

.buttom4 {
  position: fixed;
  width: 100vw;
  background-color: #ffffff;
  bottom: -1px;
  left: 0px;
  z-index: 1;
  color: #fff;
  display: flex;
  justify-content: space-between;
  align-items: center;
  color: white;
  padding: 2vw 0px;
  font-size: 4vw;
  box-shadow: 0px -6vw 17vw rgba(0, 0, 0, 0.1);
  animation-duration: 1s !important;
}

.buttom4 > img {
  height: 6vw;
  margin-left: 2vw;
}

.reservebtn {
  display: inline-block;
  line-height: 6vw;
  background-color: #ba6954;
  padding: 1.5vw 6vw;
  margin-right: 2vw;
}

.animated {
  animation-duration: 2s;
}
.delay-z5s {
  animation-delay: 0.5s;
}
</style>
