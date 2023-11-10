<!--
 * @Description: In User Settings Edit
 * @Author: your name
 * @Date: 2019-08-16 09:28:40
 * @LastEditTime: 2019-08-27 15:35:09
 * @LastEditors: PiPi
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
          <p v-show="show2" class="animated fadeInDown">BYTON M-Byte</p>
          <p v-show="show2" class="animated fadeInDown">你的下一台智能终端</p>
          <p v-show="show2" class="animated fadeInDown">即将到来</p>
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
        <img class="arrow animated fadeInDown infinite" src="../assets/headerb/Arrow.svg" alt="">
        <div class="line_Visible">
          <img class="line line_1_1 fadeIn" src="../assets/headerb/two_line.png" alt />
        </div>
      </div>
    </div>
    <div class="two">
      <div class="two_img box_all">
        <!-- <div class="xiebian"></div> -->
        <div class="Visible two_text">
          <div class="title">
            <p v-show="show4" class="animated fadeInUp">BYTON 首款</p>
            <p v-show="show4" class="animated fadeInUp">智能互联汽车</p>
          </div>
          <div class="text">
            <p v-show="show4" class="animated fadeInUp">极具张力的车身结构与标志性的数字化元素</p>
            <p v-show="show4" class="animated fadeInUp">揭示着未来的出行模式：智能驱动</p>
          </div>
        </div>
        <div>
          <video
            id="video2"
            preload:auto
            poster="../assets/headerb/video2.png"
            controlslist="nodownload noremote footbar"
            controls="controls"
            webkit-playsinline
            playsinline
          >
            <source src="http://appcn-static.byton.cn/StaticMovie/vedio-second.mp4" type="video/mp4" />
            Sorry, your browser doesn't support embedded videos.
          </video>
        </div>
        
        <div class="Visible two_text">
          <div class="title" v-show="show5">
            <p class="animated fadeInUp">外观设计</p>
            <h3 class="animated fadeInUp" style="margin-top:4vw;">BYTON 智能设计美学</h3>
          </div>
        </div>
        <div class="rotation rotation_2 Visible">
          <swiper v-show="show6" class="animated" :options="swiperOption">
            <swiper-slide>
              <img class="img1 animated fadeIn" src="../assets/headerb/1.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp subtitle">智能表情</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp">智能感应灯带使用标志性联接线设计</p>
                  <p class="animated fadeInUp">可根据不同情境切换显示模式,与用户和行人“对话”</p>
                </div>
              </div>
            </swiper-slide>
            <swiper-slide>
              <img class="img1 animated fadeIn" src="../assets/headerb/1.2.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp subtitle">锋型眉</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp">极具辨识度的锋型眉</p>
                  <p class="animated fadeInUp">协调前脸线条，更彰显时尚设计</p>
                </div>
              </div>
            </swiper-slide>
            <swiper-slide>
              <img class="img1 animated fadeIn" src="../assets/headerb/1.3.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp subtitle">悬浮式天线</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp">天线被集成在车顶弧线里</p>
                  <p class="animated fadeInUp">使得整车更流畅简洁</p>
                </div>
              </div>
            </swiper-slide>
            <div class="swiper-pagination" slot="pagination"></div>
            <!-- <div class="swiper-button-prev" slot="button-prev"></div>
            <div class="swiper-button-next" slot="button-next"></div>-->
          </swiper>
        </div>
        <div class="Visible two_text">
          <div class="title" v-show="show7">
            <p class="animated fadeInUp delay-z5s">车内设计</p>
            <h3 class="animated fadeInUp delay-z5s" style="margin-top:4vw;">打造下一代数字会客厅</h3>
          </div>
        </div>
        <video
            id="video1"
            preload:auto
            controlslist="nodownload noremote footbar"
            poster="../assets/header/image1.jpg"
            controls="controls"
            webkit-playsinline
            playsinline
          >
          <source
            src="http://appcn-static.byton.cn/StaticMovie/video1.7aeb725_x264%202.mp4"
            type="video/mp4"
          />Sorry, your browser doesn't support embedded videos.
        </video>
        <div class="rotation rotation_2 Visible">
          <swiper v-show="show8" class="animated" :options="swiperOption">
            <swiper-slide>
              <img class="img2 animated fadeIn" src="../assets/headerb/2.1.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp subtitle">奢华私人空间</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp">将空调系统置于前发动机舱</p>
                  <p class="animated fadeInUp">彻底释放腿部空间，给你舒适体验</p>
                </div>
              </div>
            </swiper-slide>
            <swiper-slide>
              <img class="img2 animated fadeIn" src="../assets/headerb/2.2.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp subtitle">环抱式中控布局</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp">搭载驾驶员监控摄像头,在自动驾驶模式下</p>
                  <p class="animated fadeInUp">可对驾驶员进行疲劳监测,保证行车安全</p>
                </div>
              </div>
            </swiper-slide>
            <div class="swiper-pagination" slot="pagination"></div>
            <!-- <div class="swiper-button-prev" slot="button-prev"></div>
            <div class="swiper-button-next" slot="button-next"></div>-->
          </swiper>
        </div>
        <div class="Visible two_text">
          <div class="title">
            <p v-show="show9" class="animated fadeInUp">交互体验</p>
            <h3 v-show="show9" class="animated fadeInUp" style="margin-top:4vw;">智能直观 超乎想象</h3>
          </div>
        </div>
        <div class="rotation rotation_2 Visible" style="margin-top:10vw;">
          <swiper v-show="show10" class="animated" :options="swiperOption">
            <swiper-slide>
              <img class="img3 animated fadeIn" src="../assets/headerb/3.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp delay-z5s subtitle">7英寸驾驶员触控屏</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">独家专利设计，确保屏幕在方向盘转动时</p>
                  <p class="animated fadeInUp delay-z5s">始终保持一致，让驾驶员在方寸之间即可操控“全车”</p>
                </div>
              </div>
            </swiper-slide>
            <swiper-slide>
              <img class="img2 animated fadeIn" src="../assets/headerb/3.2.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp delay-z5s subtitle">8英寸中央触控屏</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">四个触摸手势就能轻松与共享全面屏联动</p>
                  <p class="animated fadeInUp delay-z5s">配合物理按键迅速控制车内功能</p>
                </div>
              </div>
            </swiper-slide>
            <swiper-slide>
              <img class="img2 animated fadeIn" src="../assets/headerb/3.3.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp delay-z5s subtitle">48英寸端到端共享全面屏</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">超大车载全面屏满足目标市场车规级要求</p>
                  <p class="animated fadeInUp delay-z5s">为你的数字生活提供专属内容</p>
                </div>
              </div>
            </swiper-slide>
            <div class="swiper-pagination" slot="pagination"></div>
            <!-- <div class="swiper-button-prev" slot="button-prev"></div>
            <div class="swiper-button-next" slot="button-next"></div>-->
          </swiper>
        </div>
        
        <!-- <div class="Visible two_text">
          <div class="title">
            <p v-show="show11" class="animated fadeInUp">定制化车载应用</p>
            <h3 v-show="show11" class="animated fadeInUp" style="margin-top:4vw;">车内车外无缝连接</h3>
          </div>
        </div>
        <img class="img4 animated" src="../assets/headerb/4.png" alt />
        <div class="Visible two_text" style="margin-top:5vw;">
          <div class="text">
            <p v-show="show12" class="animated fadeInUp">不断更新和丰富的车载应用生态系统</p>
            <p v-show="show12" class="animated fadeInUp">涵盖视频流媒体、智能家居</p>
            <p v-show="show12" class="animated fadeInUp">健康、娱乐等领域</p>
          </div>
        </div> -->
      </div>
    </div>
    <div class="three">
      <div class="three_img box_all">
        <div class="Visible two_text">
          <div class="title">
            <p v-show="show11" class="animated fadeInUp">屏幕安全</p>
            <h3 v-show="show11" class="animated fadeInUp" style="margin-top:4vw;">符合所有目标市场安全标准</h3>
          </div>
        </div>
        <div class="rotation rotation_2 Visible">
          <swiper v-show="show12" class="animated fadeIn" :options="swiperOption" style="height:140vw;">
            <swiper-slide>
              <img class="img5 animated fadeIn" src="../assets/headerb/safety-1.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp delay-z5s subtitles">屏幕安全涂层</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">防碎裂 防炫目保护</p>
                </div>
              </div>
            </swiper-slide>
            <swiper-slide>
              <img class="img5 animated fadeIn" src="../assets/headerb/safety-2.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3  class="animated fadeInUp delay-z5s subtitles">屏幕位置</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">符合人体工学设计，让驾驶者更专注</p>
                </div>
              </div>
            </swiper-slide>
            <swiper-slide>
              <img class="img5 animated fadeIn" src="../assets/headerb/safety-3.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3  class="animated fadeInUp delay-z5s subtitles">自适应屏幕亮度</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">根据外部环境自动调节亮度</p>
                </div>
              </div>
            </swiper-slide>
            <div class="swiper-pagination" slot="pagination"></div>
            <!-- <div class="swiper-button-prev" slot="button-prev"></div>
            <div class="swiper-button-next" slot="button-next"></div>-->
          </swiper>
        </div>
        <div class="Visible two_text">
          <div class="title">
            <p v-show="show13" class="animated fadeInUp">BYTON EV智能平台</p>
            <h3 v-show="show13" class="animated fadeInUp" style="margin-top:4vw;">兼具优秀的操控性和舒适性</h3>
          </div>
        </div>
        <img class="img6 animated fadeIn" src="../assets/headerb/6.png" alt />
        <div class="rotation rotation_3 Visible chassis">
          <swiper v-show="show14" class="animated" :options="swiperOption" style="height:52vw;">
            <swiper-slide>
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp delay-z5s">底盘架构</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">由 BYTON 自主设计研发</p>
                  <p class="animated fadeInUp delay-z5s">拥有领先的总布局</p>
                  <p class="animated fadeInUp delay-z5s">减轻车重的同时又保障安全</p>
                </div>
              </div>
            </swiper-slide>
            <swiper-slide>
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp delay-z5s">在线升级</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">整车支持深度OTA升级</p>
                  <p class="animated fadeInUp delay-z5s">可更新5G网络硬件和</p>
                  <p class="animated fadeInUp delay-z5s">BYTON OS操作系统</p>
                </div>
              </div>
            </swiper-slide>
            <swiper-slide>
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp delay-z5s">动力系统</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">前后均使用德国博世最新永磁电机</p>
                  <p class="animated fadeInUp delay-z5s">体积小，能耗低</p>
                  <p class="animated fadeInUp delay-z5s">让你续航无忧</p>
                </div>
              </div>
            </swiper-slide>
            <swiper-slide>
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp delay-z5s">车身结构</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">采用钢铝混合车身结构减轻车重</p>
                  <p class="animated fadeInUp delay-z5s">使用多连杆独立前后悬架</p>
                  <p class="animated fadeInUp delay-z5s">兼顾舒适感与运动性能</p>
                </div>
              </div>
            </swiper-slide>
            <div class="swiper-pagination" slot="pagination"></div>
            <!-- <div class="swiper-button-prev" slot="button-prev"></div>
            <div class="swiper-button-next" slot="button-next"></div>-->
          </swiper>
        </div>
      </div>
    </div>
    <div class="four">
      <div class="four_img box_all">
        <div class="Visible two_text" style="margin:5vw 0vw;">
          <div class="title">
            <p v-show="show15" class="animated fadeInUp delay-z5s">为愉悦出行保驾护航</p>
          </div>
          <div class="text">
            <p v-show="show15" class="animated fadeInUp delay-z5s">拜腾自主设计安装的电池包</p>
            <p v-show="show15" class="animated fadeInUp delay-z5s">由宁德时代提供电芯及模组</p>
            <p v-show="show15" class="animated fadeInUp delay-z5s">经100%下线监测，确保性能和安全</p>
          </div>
        </div>
        <img class="img7 animated fadeIn" src="../assets/headerb/7.png" alt />
        <div class="Visible seven_version">
          <div v-show="show16" class="animated fadeInUp delay-z5s">
            <p>后驱版本</p>
            <p>72千瓦时电池容量</p>
            <p>续航里程: 400公里*</p>
          </div>
          <div v-show="show16" class="animated fadeInUp delay-z5s">
            <p>四驱版本</p>
            <p>95千瓦时电池容量</p>
            <p>续航里程: 520公里*</p>
          </div>
          <p v-show="show16" class="remarks animated fadeInUp v">*在 NEDC 工况标准下</p>
        </div>
        <div class="Visible two_text">
          <div class="title">
            <p v-show="show17" class="animated fadeInUp">拜腾南京生产基地</p>
            <h3 v-show="show17" class="animated fadeInUp" style="margin-top:4vw;">工业4.0标准，秉承德系工艺</h3>
          </div>
        </div>
        <div class="rotation rotation_4 Visible">
          <swiper v-show="show18" class="animated" :options="swiperOption" style="height:134vw;">
            <swiper-slide>
              <img class="img8 animated fadeIn" src="../assets/headerb/8.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp delay-z5s cha">焊装车间</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">335台专属定制“拜腾金”色机器人</p>
                  <p class="animated fadeInUp delay-z5s">自动化率高达99%</p>
                </div>
              </div>
            </swiper-slide>
            <swiper-slide>
              <img class="img8 animated fadeIn" src="../assets/headerb/8.2.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp delay-z5s cha">冲压车间</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">采用全球领先的伺服压机</p>
                  <p class="animated fadeInUp delay-z5s">平均3秒压出一个工件</p>
                  <p class="animated fadeInUp delay-z5s">目前国内最快汽车冲压生产线之一</p>
                </div>
              </div>
            </swiper-slide>
            <swiper-slide>
              <img class="img8 animated fadeIn" src="../assets/headerb/8.3.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp delay-z5s cha">涂装车间</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">国内首次采用横置烘房技术及三涂两烘工艺</p>
                  <p class="animated fadeInUp delay-z5s">薄膜前处理等前沿涂装技艺</p>
                  <p class="animated fadeInUp delay-z5s">呈现美观耐用的豪华漆面</p>
                </div>
              </div>
            </swiper-slide>
            <swiper-slide>
              <img class="img8 animated fadeIn" src="../assets/headerb/8.4.png" alt />
              <div class="two_text" style="margin-top:5vw;">
                <div class="title">
                  <h3 class="animated fadeInUp delay-z5s">电池车间</h3>
                </div>
                <div class="text">
                  <p class="animated fadeInUp delay-z5s">车间自动化率达92%</p>
                  <p class="animated fadeInUp delay-z5s">电池包经过100%下线检测并配备温控系统</p>
                  <p class="animated fadeInUp delay-z5s">确保使用安全</p>
                </div>
              </div>
            </swiper-slide>
            <div class="swiper-pagination" slot="pagination"></div>
            <!-- <div class="swiper-button-prev" slot="button-prev"></div>
            <div class="swiper-button-next" slot="button-next"></div>-->
          </swiper>
        </div>
        
        <div class="eight_img box_all">
          <div class="Visible two_text" style="margin-top:35vw;">
            <div class="title">
              <p v-show="show19" class="animated fadeInUp">“智”同道合，终将互联</p>
            </div>
            <div class="text">
              <p v-show="show19" class="animated fadeInUp">相聚的时光总是最为珍贵</p>
              <p v-show="show19" class="animated fadeInUp">这也是 BYTON Place诞生的原因</p>
              <p v-show="show19" class="animated fadeInUp">欢迎你来到这里，与我们深度互联</p>
            </div>
          </div>
          <div
            v-show="show19"
            class="buttom3 animated fadeInUp delay-z5s"
            @click="button(3)"
            style="cursor: pointer;"
          >
            探索 BYTON Place
            <img class="ioc" src="../assets/header/ioc.png" alt />
          </div>
        </div>
      </div>
    </div>
    <div v-if="buttom4if">
      <div class="buttom4 animated slideInUp" v-if="$route.query.reservation !== 'true'">
        <img src="../assets/header/header-logo-dark.svg" alt srcset />
        <div class="reservebtn" @click="reservation(1)" style="cursor: pointer;">预约 M-Byte</div>
      </div>
    </div>
    <img id="image" style="width:100vw;" src alt />
  </div>
  <!-- <video id="my-video" class="video-js" src="http://www.changan.com.cn/changanvideo/video/qyjs.mp4" controls="" preload="none" width="710" height="400" ></video> -->
</template>
<script>
// import axios from "axios";

// import rotation1_1 from "../assets/header/rotation1-1.png";
// import rotation2_1 from "../assets/header/rotation2-1.png";
// import rotation2_2 from "../assets/header/interior_1.png";
// import rotation2_3 from "../assets/header/interior_2.png";
// import rotation2_4 from "../assets/header/interior_3.png";

import { log } from "util";

import Amx from "vue-amx";

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
  mixins: [Amx.read("appNet")],
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
      let height = window.screen.availHeight - 100;
      // console.log(height);
      let lists = document.getElementsByClassName("Visible").length;
      // console.log(lists);
      for (let a = 0; a < lists; a++) {
        // console.log(document.getElementsByClassName("Visible")[5].getBoundingClientRect().top);
        if (
          document.getElementsByClassName("Visible")[a].getBoundingClientRect().top < height
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
    // let myPlayer = this.$video('#video1', {
    //   //确定播放器是否具有用户可以与之交互的控件。没有控件，启动视频播放的唯一方法是使用autoplay属性或通过Player API。
    //   controls: true,
    //   //自动播放属性,muted:静音播放
    //   // autoplay: "muted",
    //   //建议浏览器是否应在<video>加载元素后立即开始下载视频数据。
    //   preload: "auto",
    //   //设置视频播放器的显示宽度（以像素为单位）
    //   width: "800px",
    //   //设置视频播放器的显示高度（以像素为单位）
    //   height: "400px"
    // });
    // let myPlayer2 = this.$video('#video2', {
    //   //确定播放器是否具有用户可以与之交互的控件。没有控件，启动视频播放的唯一方法是使用autoplay属性或通过Player API。
    //   controls: true,
    //   //自动播放属性,muted:静音播放
    //   // autoplay: "muted",
    //   //建议浏览器是否应在<video>加载元素后立即开始下载视频数据。
    //   preload: "auto",
    //   //设置视频播放器的显示宽度（以像素为单位）
    //   width: "800px",
    //   //设置视频播放器的显示高度（以像素为单位）
    //   // height: "400px"
    // });
  }
};
</script>

<style scoped>
.img {
  width: 100vw;
  overflow: hidden;
  /* background-color: #e3e4e3; */
  /* background: linear-gradient(to top, #1e1e1e, #fff); */
}
.title p {
  color: #fffefe;
  font-size: 8vw;
  font-weight: bold;
  font-weight: 400;
}
.title h3 {
  color: rgba(255, 254, 254, 0.6);
  font-size: 5vw;
  font-weight: 200;
}
.text p {
  color: #a39f9f;
  font-size: 4vw;
  font-weight: 200;
  line-height: 5vw;
}
#video1 {
  width: 100vw;
  margin-top: 6vw;
  /* box-shadow: 0px 30px 62px 15px #000; */
  position:relative;
  z-index:2;
}
#video2 {
  width: 96vw;
  /* height: 54vw; */
  margin-top: 15vw;
}
#div-video {
  width: 100vw;
  height: 190.4584094vw;
  position: absolute;
  top: 0;
  overflow: hidden;
  z-index: 0;
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
  margin-top: 25vw;
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
.swiper-container {
  width: 100vw;
}
.rotation >>> .swiper-pagination-bullet {
  background: #d6d4d4;
  width: 10px;
  height: 10px;
  /* border: 0.4vw solid #000; */
}
.rotation >>> .swiper-pagination-bullet-active {
  background: #d0a08b;
  /* border: 0.4vw solid #d2a38e; */
}
.rotation_2 {
  /* margin-top: 10vw; */
}
.rotation_2 .swiper-container {
  height: 125vw;
}
.rotation_3 >>> .swiper-pagination-bullet{
  background: #fff;
}
.rotation_3 >>> .swiper-pagination-bullet-active {
  background: #d0a08b;
}
.rotation_4 >>> .swiper-pagination-bullet{
  background: #000;
}
.rotation_4 >>> .swiper-pagination-bullet-active {
  background: #d0a08b;
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
  margin-top: 25vw;
  height: 30vw;
}
.top_img div h1 {
  font-size: 6.5vw;
}
.top_img div p {
  font-size: 5vw;
  margin-top: 2vw;
}

.top_img div p:first-child {
  font-size: 8vw;
  letter-spacing: 3px;
  margin-bottom: 4vw;

}
.buttom_Visible {
  margin: 14vw auto 0;
  width: 35vw;
  height: 10vw;
}
.top_img .buttom {
  border: 1px solid rgba(255, 255, 255, 0.2);
  line-height: 9vw;
  width: 35vw;
}
.line_Visible {
  margin-top: 65.2vw;
  height: 13vw;
  position: relative;
}
.line_1_1 {
  top: 5vw;
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
  margin-top: -0.7vw;
  /* background-color: #1e1e1e; */
}
.two .two_img {
  width: 100vw;
  /* height: 300vw; */
  /* background-image: url("../assets/header/two1.png"); */
  background-color: #1e1e1e;
}
.two .two_img .two_text {
  margin-top: 25vw;
}
.two .two_img .title {
  margin-bottom: 4vw;
}
.two .two_img .title p {
  line-height: 11vw;
}
.two .two_img .text p {
  line-height: 7vw;
}
.two .img1 {
  width: 100vw;
  margin-top: 5vw;
}
.two .img2 {
  width: 100vw;
}
.two .img3 {
  width: 100vw;
}
.two .img4 {
  width: 100vw;
  margin-top: 5vw;
}

.three {
  margin-top: -1px;
}
.three .three_img {
  width: 100vw;
  /* height: 104.2vw; */
  /* background-image: url("../assets/header/three.png"); */
  background: linear-gradient(to top, #fff, 30%, #1e1e1e);
  padding-bottom: 16vw;
}
.three .three_img .two_text {
  margin-top: 25vw;
}
.three .three_img .title {
  margin-bottom: 4vw;
}
.three .three_img .title p {
  line-height: 11vw;
}
.three .three_img .text p {
  line-height: 7vw;
  color: #d8d8d8;
}

.three .img5 {
  width: 100vw;
  margin-top: 5vw;
}
.three .img6 {
  width: 100vw;
  margin-top: 5vw;
}

.four {
  margin-top: 0;
}
.four .four_img {
  width: 100vw;
  /* height: 166vw; */
  background-color: #fff;
  /* background-image: url("../assets/header/four.png"); */
}
.four .four_img .two_text {
  margin-top: 25vw;
}
.four .four_img .title {
  margin-bottom: 4vw;
  color: #7a7b7c;
}
.four .four_img .title p {
  line-height: 11vw;
  color: #7a7b7c;
}
.four .four_img .title h3 {
  color: #7a7b7c;
}
.four .four_img .text p {
  line-height: 7vw;
  color: #656565;
  font-weight: 200;
}
.four .seven_version {
  display: block;
  margin-top: 10vw;
}
.four .seven_version div {
  float: left;
  width: 50vw;
}
.four .seven_version div p {
  line-height: 6vw;
  color: #919192 !important;
}
.four .seven_version div p:first-child {
  font-size: 5.5vw;
  color: #d1a18d;
  margin-bottom: 3vw;
}
.four .seven_version .remarks {
  font-size: 3vw;
  text-align: right;
  margin-right: 3vw;
  padding-top: 24vw;
  color: #919192;
  font-weight: 200;
}
.four .img7 {
  width: 100vw;
  margin-top: 5vw;
}
.four .img8 {
  width: 100vw;
  margin-top: 5vw;
}
.four .eight_img {
  width: 100vw;
  height: 200vw;
  background-image: url("../assets/headerb/9.png");
}
.four .eight_text {
  margin-top: 39vw;
}
.four .eight_text p {
  line-height: 6vw;
}
.four .eight_text p:first-child {
  font-size: 7vw;
  line-height: 6vw;
  margin-bottom: 9vw;
}
.four .buttom3 {
  font-size: 6vw;
  line-height: 6vw;
  width: 56vw;
  margin: 100vw auto 0;
  position: relative;
  text-align: left;
}
.four .buttom3 .ioc {
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
  z-index: 2;
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

.chassis p, .chassis h3{
  color: #545454!important;
}

.Visible.seven_version > div > p:nth-child(1){
  color: #ba6954 !important;
}

.Visible.seven_version > div > p:not(:first-child){
  font-weight: 200;
  color: #656565!important;
}

.subtitle{
  color: #a39f9f !important;
}

.subtitles{
  color: #d8d8d8 !important;
}

.arrow{
  position: absolute;
  bottom: 8vw;
  left: 46vw;
  width: 8vw;
  z-index: 2;
}
.cha{
  color: #656565 !important;
}
</style>
