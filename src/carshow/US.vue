<!--
 * @Author: PiPi
 * @Github: https://github.com/SenLiangpi
 * @Email: pisenliang@gmail.com
 * @Date: 2019-09-10 17:53:18
 * @LastEditors: PiPi
 * @LastEditTime: 2019-10-23 09:51:28
 -->
<template>
  <div>
    <section class="top" id="reservation">
      <div class="Visible">
        <img
          v-show="show1"
          style="margin-top:12vh;margin-bottom:8vh"
          class="logo animated fadeIn"
          src="../assets/headerc/header-logo-white.svg"
          alt
        />
      </div>
      <div class="Visible slogan">
        <h1 v-show="show2">BYTON M-Byte</h1>
        <h1 v-show="show2">The premium electric SUV</h1>
        <h1 v-show="show2">that empowers your digital life.</h1>
      </div>
      <div class="Visible button1">
        <div
          v-show="show3"
          @click="reservation(0)"
          class="buttom animated fadeInUp delay-1s"
          style="cursor: pointer;"
        >RESERVE</div>
        <div
          v-show="show3"
          class="buttom animated fadeInUp delay-2s"
          style="cursor: pointer;"
          @click="outsidechain()"
        >VISUALIZE</div>
      </div>
      <img class="arrow animated fadeInDown infinite" src="../assets/headerc/Arrow.svg" alt />
    </section>

    <section class="container">
      <div class="Visible two_text">
        <h2 v-show="show4" class="animated fadeInUp">Your platform for life</h2>
        <p
          v-show="show4"
          class="desc animated fadeInUp"
        >Designed to become your new platform for life, the BYTON M-Byte makes the most of data power rather than horsepower.</p>
      </div>
      <video
        id="video2"
        preload:auto
        poster="../assets/headerc/shuzili.png"
        controlslist="nodownload noremote footbar"
        controls="controls"
        webkit-playsinline
        playsinline
      >
        <source
          src="https://weboss.byton.cn/videos/20190910/190909_Byton_IAA19_EDIT10_60sec_TXT_LOGO_x264.mp4"
          type="video/mp4"
        />Sorry, your browser doesn't support embedded videos.
      </video>
    </section>

    <section class="container">
      <div class="Visible">
        <h3 v-show="show5" class="animated fadeInUp">Digital design icons</h3>
      </div>
      <div class="slider Visible">
        <swiper v-show="show6" class="animated" :options="swiperOption">
          <swiper-slide v-for="(item,index) in page2" :key="index">
            <img class="animated fadeIn" :src="item.img" alt />
            <div class="slider-desc">
              <h4 class="animated fadeInUp">{{item.title}}</h4>
              <p class="animated fadeInUp" v-for="(k,i) in item.desc" :key="i">{{k}}</p>
            </div>
          </swiper-slide>
          <div class="swiper-pagination" slot="pagination"></div>
        </swiper>
      </div>
    </section>

    <section class="container">
      <div class="Visible">
        <h3 v-show="show7" class="animated fadeInUp">Multi-dimensional interactions</h3>
      </div>
      <div class="slider Visible">
        <swiper v-show="show8" class="animated" :options="swiperOption">
          <swiper-slide v-for="(item,index) in page3" :key="index">
            <img class="animated fadeIn" :src="item.img" alt />
            <div class="slider-desc">
              <h4 class="animated fadeInUp">{{item.title}}</h4>
              <p class="animated fadeInUp" v-for="(k,i) in item.desc" :key="i">{{k}}</p>
            </div>
          </swiper-slide>
          <div class="swiper-pagination" slot="pagination"></div>
        </swiper>
      </div>
    </section>

    <section class="container">
      <div class="Visible">
        <h3 v-show="show9" class="animated fadeInUp">Personal digital lounge</h3>
      </div>
      <div class="slider Visible">
        <swiper v-show="show10" class="animated" :options="swiperOption">
          <swiper-slide v-for="(item,index) in page4" :key="index">
            <img class="animated fadeIn" :src="item.img" alt />
            <div class="slider-desc">
              <h4 class="animated fadeInUp">{{item.title}}</h4>
              <p class="animated fadeInUp" v-for="(k,i) in item.desc" :key="i">{{k}}</p>
            </div>
          </swiper-slide>
          <div class="swiper-pagination" slot="pagination"></div>
        </swiper>
      </div>
    </section>

    <section class="container">
      <div class="Visible">
        <h3 v-show="show11" class="animated fadeInUp">Personal living space</h3>
      </div>
      <div class="slider Visible">
        <swiper v-show="show11" class="animated" :options="swiperOption">
          <swiper-slide v-for="(item,index) in spacePage" :key="index">
            <img class="animated fadeIn" :src="item.img" alt />
            <div class="slider-desc">
              <h4 class="animated fadeInUp">{{item.title}}</h4>
              <p class="animated fadeInUp" v-for="(k,i) in item.desc" :key="i">{{k}}</p>
            </div>
          </swiper-slide>
          <div class="swiper-pagination" slot="pagination"></div>
        </swiper>
      </div>
    </section>

    <!-- <section class="container">
      <div class="Visible">
        <h3 v-show="show11" class="Visible animated fadeInUp">Personal living space</h3>
      </div>
      <div class="slider Visible">
        <img class="animated fadeIn" src="../assets/headerc/tiyan.png" alt />
        <div class="slider-desc">
          <h4 class="animated fadeInUp">BYTON Orbiters</h4>
          <p class="animated fadeInUp">10-degree inward rotation of the front seats</p>
          <p
            class="animated fadeInUp"
          >Open the view of the BYTON Stage display for the rear occupants</p>
          <p
            class="animated fadeInUp"
          >Create a conversational atmosphere between all vehicle occupants</p>
        </div>
      </div>
    </section>-->

    <section class="container">
      <div class="Visible">
        <h3 v-show="show12" class="animated fadeInUp">World-class</h3>
        <h3 v-show="show12" class="animated fadeInUp">safety and quality</h3>
      </div>
      <div class="slider">
        <swiper v-show="show13" class="Visible animated" :options="swiperOption">
          <swiper-slide v-for="(item,index) in page6" :key="index">
            <img class="animated fadeIn" :src="item.img" alt />
            <div class="slider-desc">
              <h4 class="animated fadeInUp">{{item.title}}</h4>
              <p class="animated fadeInUp center" v-for="(k,i) in item.desc" :key="i">{{k}}</p>
            </div>
          </swiper-slide>
          <div class="swiper-pagination" slot="pagination"></div>
        </swiper>
      </div>
    </section>

    <section class="container">
      <div class="Visible">
        <h3 v-show="show14" class="animated fadeInUp">BYTON Stage</h3>
        <h3 v-show="show14" class="animated fadeInUp">display safety</h3>
      </div>
      <div class="slider Visible">
        <swiper v-show="show15" class="animated" :options="swiperOption">
          <swiper-slide v-for="(item,index) in page7" :key="index">
            <img class="animated fadeIn" :src="item.img" alt />
            <div class="slider-desc">
              <h4 class="animated fadeInUp">{{item.title}}</h4>
              <p class="animated fadeInUp center" v-for="(k,i) in item.desc" :key="i">{{k}}</p>
            </div>
          </swiper-slide>
          <div class="swiper-pagination" slot="pagination"></div>
        </swiper>
      </div>
    </section>

    <section class="container" style="padding-bottom:18vh;">
      <div class="Visible">
        <h3 v-show="show16" class="animated fadeInUp">BYTON Intelligent Manufacturing Base</h3>
      </div>
      <div class="slider Visible">
        <swiper v-show="show17" class="animated" :options="swiperOption">
          <swiper-slide v-for="(item,index) in page8" :key="index">
            <img class="animated fadeIn" :src="item.img" alt />
            <div class="slider-desc">
              <h4 class="animated fadeInUp">{{item.title}}</h4>
              <p class="animated fadeInUp center" v-for="(k,i) in item.desc" :key="i">{{k}}</p>
            </div>
          </swiper-slide>
          <div class="swiper-pagination" slot="pagination"></div>
        </swiper>
      </div>
    </section>

    <section class="full-page expectation">
      <div class="Visible">
        <h2 v-show="show18" class="animated fadeInUp" style="font-family:Facto-Medium">BYTON M-Byte</h2>
        <p v-show="show18" class="desc animated fadeInUp">
          <span style="font-weight: normal;opacity: 0.8;">Your platform for life.</span>
        </p>
      </div>
    </section>

    <section class="spec-table">
      <h4>Technical data</h4>
      <div class="spec-box" v-for="(item,index) in specTable" :key="index">
        <div class="header-wraper">
          <div class="header">{{item.header}}</div>
        </div>
        <div class="item" v-for="(k,i) in item.list" :key="i">
          <div v-for="(s,t) in k.key" :key="t">{{s}}</div>
          <div class="item-highlight">{{k.data}}</div>
        </div>
      </div>
      <div
        class="remark"
      >*Achievable, where local regulations, infrastructure and actual environment conditions allow.</div>
      <div
        class="remark"
      >*BYTON M-Byte is not yet available for sale. Specifications are preliminary and may change without notice. The content hereis provided fo informational purposes only.</div>
    </section>

    <section class="full-page footer">
      <div class="Visible">
        <h2
          v-show="show19"
          class="animated fadeInUp"
          style="font-family:Facto-Medium"
        >BYTON Visualizer</h2>
        <p v-show="show19" class="desc animated fadeInUp">
          <span style="font-weight: normal;opacity: 0.8;">You're invited to be a co-creator.</span>
        </p>
      </div>
      <div
        class="buttom3 animated fadeInUp delay-z5s"
        v-show="show20"
        @click="outsidechain()"
        style="cursor: pointer;"
      >
        <div>VISUALIZE</div>
        <!-- <img class="ioc" src="../assets/headerc/ioc.svg" alt /> -->
      </div>
    </section>
    <div style="height: 10vw;"></div>
    <div v-if="buttom4if">
      <div class="buttom4 animated fadeIn">
        <img src="../assets/headerc/header-logo-dark.svg" alt srcset />
        <div class="reservebtn" @click="reservation(1)" style="cursor: pointer;">RESERVE</div>
      </div>
    </div>
    <!-- <img v-if="buttom4if" class="share animated fadeIn" @click="share()" src="../assets/share.svg" alt="" > -->
    <!-- <div>
      <div class="buttom4 animated slideInUp">
        <img @click="share()" src="../assets/share.svg" alt="" >
        <div class="reservebtn" @click="reservation(1)" style="cursor: pointer;">RESERVE</div>
      </div>
    </div>-->
  </div>
</template>
<script>
import { log } from "util";
// import Amx from "vue-amx";

var u = navigator.userAgent,
  app = navigator.appVersion;
var isAndroid = u.indexOf("Android") > -1 || u.indexOf("Linux") > -1; //g
var isIOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/);

import page2_1 from "../assets/headerc/page2/1.png";
import page2_2 from "../assets/headerc/page2/2.png";
import page2_3 from "../assets/headerc/page2/3.png";
import duoping_1 from "../assets/headerc/duoping/1.png";
import duoping_2 from "../assets/headerc/duoping/2.png";
import duoping_3 from "../assets/headerc/duoping/3.png";
import duoping_4 from "../assets/headerc/duoping/4.gif";
import duoping_5 from "../assets/headerc/duoping/5.png";
import keting_1 from "../assets/headerc/keting/1.png";
import keting_2 from "../assets/headerc/keting/2.png";
import keting_3 from "../assets/headerc/keting/3.png";
import keting_4 from "../assets/headerc/keting/4.png";
import space_1 from "../assets/headerc/seats/1.gif";
import space_2 from "../assets/headerc/seats/2.png";
import pinzhi_1 from "../assets/headerc/pinzhi/1.png";
import pinzhi_2 from "../assets/headerc/pinzhi/2.png";
import pinzhi_3 from "../assets/headerc/pinzhi/3.png";
import pingmu_1 from "../assets/headerc/pingmu/1.png";
import pingmu_2 from "../assets/headerc/pingmu/2.png";
import pingmu_3 from "../assets/headerc/pingmu/3.png";
import gongchang_1 from "../assets/headerc/gongchang/1.png";
import gongchang_2 from "../assets/headerc/gongchang/2.jpg";
import gongchang_3 from "../assets/headerc/gongchang/3.jpg";
import gongchang_4 from "../assets/headerc/gongchang/4.jpg";
import gongchang_5 from "../assets/headerc/gongchang/5.jpg";

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
      show20: false,
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
      page2: [
        {
          img: page2_1,
          title: "BYTON Smart Surfaces",
          desc: [
            "Interactive surfaces complemented by matrix LED headlights",
            "Luminous graphics adapt to different situations",
            "Interact with users, pedestrians and road users"
          ]
        },
        {
          img: page2_2,
          title: "Flat antenna ",
          desc: [
            "Perfectly integrated into the sloping roofline",
            "High-speed bandwidth available"
          ]
        },
        {
          img: page2_3,
          title: "Remote control",
          desc: [
            "Advanced controls via mobile app and smart key fob",
            "Access to vehicle location and vehicle settings"
          ]
        }
      ],
      page3: [
        {
          img: duoping_1,
          title: "BYTON Stage",
          desc: [
            "Largest display ever fitted in a series production vehicle",
            "One-piece 48-inch, high-resolution curved LCD display",
            "Automatic brightness adjustment for maximized safety and comfort",
            "Stages your favorite content to enrich your digital life"
          ]
        },
        {
          img: duoping_2,
          title: "BYTON Driver Tablet",
          desc: [
            "7-inch, high-resolution display with multitouch capability",
            "Patented steering wheel design with fixed hub maintains the display in horizontal position",
            "Driver’s frontal airbag integrated below the display"
          ]
        },
        {
          img: duoping_3,
          title: "BYTON Co-driver Tablet",
          desc: [
            "8-inch, high-resolution multitouch display in center console",
            "Easy access to the BYTON Stage display and vehicle functions",
            "Mainly dedicated to the front passenger but it can also be operated by the driver"
          ]
        },
        {
          img: duoping_4,
          title: "Gesture control",
          desc: [
            "Forward-looking hand gesture recognition technology",
            "Time-of-flight sensor integrated in the headliner",
            "Provides a more intuitive way to quickly interact with the system"
          ]
        },
        {
          img: duoping_5,
          title: "Facial recognition",
          desc: [
            "User recognized by a camera-based sensor set",
            "Safe acquisition of user’s BYTON ID",
            "Matches personal settings and content preferences to adjust the cabin"
          ]
        }
      ],
      page4: [
        {
          img: keting_1,
          title: "Premium living space",
          desc: [
            "Wraparound lounge atmosphere",
            "Floating dashboard and flat floor design",
            "Traditional craftmanship meets digital interface"
          ]
        },
        {
          img: keting_2,
          title: "Panoramic glass roof",
          desc: [
            "Unmatched feeling of roominess maximizes comfort",
            "Automotive-grade glass with optimized UV protection",
            "Compatible with the highest vehicle safety standards"
          ]
        },
        {
          img: keting_3,
          title: "Advanced audio system",
          desc: [
            "Harman Kardon technology",
            "17 speakers and extra amplification",
            "Graphic aluminum speaker grilles with BYTON Connecting Lines"
          ]
        },
        {
          img: keting_4,
          title: "Ambient lighting",
          desc: [
            "Unlimited choice of shades from the color wheel",
            "Customizable set of favorite colors",
            "Renders multiple color gradient transitions"
          ]
        }
      ],
      spacePage: [
        {
          img: space_1,
          title: "BYTON Orbiters",
          desc: [
            "10-degree inward rotation of the front seats",
            "Open the view of the BYTON Stage display for the rear occupants",
            "Create a conversational atmosphere between all vehicle occupants"
          ]
        },
        {
          img: space_2,
          title: "Rear premium seats",
          desc: [
            "Optional upgrade from rear bench to individual rear seats",
            "2-way power backrest adjustment",
            "4-way lumbar adjustment",
            "Massage and heating functions"
          ]
        }
      ],
      page6: [
        {
          img: pinzhi_1,
          title: "Electric powertrain",
          desc: [
            "Latest permanent-magnet motor from BOSCH®",
            "Compact size and packaging",
            "Low energy consumption and improved efficiency"
          ]
        },
        {
          img: pinzhi_2,
          title: "Body structure",
          desc: [
            "Steel-aluminum hybrid structure for reduced weight",
            "Multi-link independent front and rear suspensions",
            "Combines comfort and agility"
          ]
        },
        {
          img: pinzhi_3,
          title: "OTA upgrades",
          desc: [
            "Deep over-the-air updates supported",
            "Architecture compatible with 5G network hardware"
          ]
        }
      ],
      page7: [
        //屏幕
        {
          img: pingmu_1,
          title: "High strength",
          desc: [
            "Reinforced tempered glass structure",
            "Anti-shatter rubber coating layer",
            "Avoids bursting hazard caused by severe collisions"
          ]
        },
        {
          img: pingmu_2,
          title: "Durability",
          desc: [
            "Automotive grade component",
            "Tested between -30°C and +85°C in extreme weather conditions",
            "Working under prolonged sunlight exposure"
          ]
        },
        {
          img: pingmu_3,
          title: "UI safety",
          desc: [
            "Interface design optimized for driving safety",
            "Eye-tracking machine learning",
            "Eyes quickly travel across all functional areas"
          ]
        }
      ],
      page8: [
        //工厂
        {
          img: gongchang_1,
          title: "Welding shop",
          desc: [
            "335 sets of KUKA® robots made in Germany",
            "Automation rate of up to 99%",
            "Body strength meets the standards of China, the U.S. and Europe"
          ]
        },
        {
          img: gongchang_2,
          title: "Stamping shop",
          desc: [
            "One of the fastest auto-stamping production lines in China",
            "Rolls out a vehicle part in an average time of 3 seconds",
            "High precision stamping ensures body quality"
          ]
        },
        {
          img: gongchang_3,
          title: "Paint shop",
          desc: [
            "Cutting-edge technology and consistent craftsmanship present the beautiful and durable paint surface befitting a luxury car",
            "International leading environment protection level"
          ]
        },
        {
          img: gongchang_4,
          title: "Battery assembly shop",
          desc: [
            "Integrated quality inspection system",
            "100% off-line checking"
          ]
        },
        {
          img: gongchang_5,
          title: "R&D center",
          desc: [
            "First-class R&D and test capabilities",
            "Meeting the test standards in China, the U.S. and Europe"
          ]
        }
      ],
      specTable: [
        {
          header: "Dimensions / Interior",
          list: [
            {
              key: ["Body type"],
              data: "Steel / aluminum composite construction"
            },
            { key: ["Number of seats"], data: "5 (optional 4-seat-variant)" },
            {
              key: ["Dimensions"],
            },
            { 
              key: ["(length / width without mirrors / height)"],
              data: "4875mm * 1970mm * 1665mm"
            },
            { key: ["Wheelbase"], data: "2950mm" },
            { key: ["Primary trunk volume in liters"], data: "550L - 1450L" }
          ]
        },
        {
          header: "Engine / Performance",
          list: [
            { key: ["Drivetrain"], data: "Rear-Wheel Drive / All-Wheel Drive" },
            { key: ["Peak electrical output front axle (AWD)"], data: "150kW" },
            { key: ["Peak electrical output rear axle"], data: "200kW" },
            { key: ["Top speed"], data: "190km/h" },
            {
              key: ["Acceleration 0-100 km/h [0-62mph],"],
            },
            {
              key: ["RWD / AWD"],
              data: "7.5s / 5.5s"
            }
          ]
        },
        {
          header: "Consumption / Range NEDC",
          list: [
            { key: ["Battery type"], data: "Lithium-ion" },
            { key: ["Battery capacity"], data: "72kWh / 95kWh" },
            { key: ["RWD, Regular battery"], data: "Range: 430km" },
            { key: ["RWD, Extended battery"], data: "Range: 550km" },
            { key: ["AWD, Extended battery"], data: "Range: 505km" }
          ]
        },
        {
          header: "Charging*",
          list: [
            { key: ["DC Charging time from 0-80%"], data: "35min" },
            {
              key: [
                "DC charging - maximum charging power (Regular / Extended battery)"
              ],
              data: "120kW / 150kW"
            } 
          ]
        }
      ],
      buttom4if: true,
      reservationif: false
    };
  },
  // mixins: [Amx.read("appNet")],
  methods: {
    outsidechain() {
      if (this.reservationif) {
        return;
      }
      let _this = this;
      setTimeout(function() {
        _this.reservationif = false;
      }, 1000);
      if (isAndroid) {
        this.reservationif = true;
        android.outsidechain(
          JSON.stringify({ url: "https://www.byton.cn/chexing/visualizer" })
        );
      }
      if (isIOS) {
        this.reservationif = true;
        window.webkit.messageHandlers.outsidechain.postMessage({
          url: "https://www.byton.cn/chexing/visualizer"
        });
      }
    },
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
          document.getElementsByClassName("Visible")[a].getBoundingClientRect()
            .top < height
        ) {
          this["show" + (a + 1)] = true;
        }
      }
      let reservationTop = document
        .getElementById("reservation")
        .getBoundingClientRect().bottom;
      try {
        if (reservationTop > 0) {
          this.buttom4if = false;
          if (isAndroid) {
            android.vehicleShare(JSON.stringify({ type: false }));
          }
          if (isIOS) {
            window.webkit.messageHandlers.vehicleShare.postMessage({
              type: false
            });
          }
        } else {
          this.buttom4if = true;
          if (isAndroid) {
            android.vehicleShare(JSON.stringify({ type: true }));
          }
          if (isIOS) {
            window.webkit.messageHandlers.vehicleShare.postMessage({
              type: true
            });
          }
        }
      } catch (error) {
        console.log(error);
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
    // let video1 = document.getElementById("video1");
    // let video2 = document.getElementById("video2");
    // video1.addEventListener("play", function() {
    //   video2.pause();
    // });
    // video2.addEventListener("play", function() {
    //   video1.pause();
    // });
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
/* common use */

section {
  text-align: center;
}

section.container {
  background-color: #dedede;
  padding-top: 18vh;
}

h1 {
  font-size: 1.2rem;
  color: white;
  line-height: 1.6;
  margin-top: 2.8vh;
  font-weight: normal;
}

h2 {
  color: #000;
  font-size: 1.6rem;
  font-weight: normal;
}
.desc {
  font-size: 1rem;
  font-weight: lighter;
  margin-top: 2.5vh;
  padding: 0 10vw;
  line-height: 1.4rem;
}

h3 {
  color: #000;
  font-size: 1.5rem;
  font-weight: normal;
  padding: 0 6vh;
  }
h4 {
  color: #000;
  font-size: 1.2rem;
  font-weight: normal;
}

.slider-desc {
  margin-top: 1.14rem;
  margin-top: 6vh;
}

.slider-desc h4 {
  margin-bottom: 2vh;
}

.slider-desc p {
  font-size: 4vw;
  line-height: 1.2rem;
  color: #636363;
  padding: 0 14vw 0 17vw;
  text-align: left;
  position: relative;
  display: block;
  margin: 2vh 0;
}

.slider-desc p::before {
  content: "";
  color: #636363;
  position: absolute;
  left: 8vw;
}

.slider {
  margin-top: 5vh;
}

.slider .swiper-container {
  width: 100vw;
}

.slider >>> .swiper-pagination-bullet {
  background: #525252;
  width: 10px;
  height: 10px;
}
.slider >>> .swiper-pagination-bullet-active {
  background: #252525;
}

.swiper-pagination {
  position: relative !important;
  margin-top: 6vh;
}

.slider img {
  width: 100vw;
  /* height: 30vh; */
}

/* .swiper-slide,
.swiper-wrapper {
  margin-bottom: 8vh !important;
} */

/* first page */

.top {
  background-image: url("../assets/headerc/home1.jpg");
  background-size: cover;
  background-position: top center;
  height: 100vh;
  width: 100vw;
  color: #ffffff;
  padding-top: 1px;
}

.top .logo {
  width: 30vw;
  margin: 11vh auto 0;
  display: block;
}


.top .slogan h1 {
  line-height: 1.3;
}

.top .slogan h1:first-child {
  letter-spacing: 0.02rem;
  font-family: Facto-Medium;
  font-size: 1.7rem;
}

.top .slogan h1:last-child {
  font-size: 1.2rem;
  padding: 0 4vw;
  margin-top: 0.2vh;
  letter-spacing: 0.02rem;
}

.top .buttom {
  border: 1px solid rgba(255, 255, 255, 0.8);
  line-height: 9vw;
  width: 35vw;
  margin-top: 2.5vh;
}
.top .buttom a {
  color: #ffffff;
  text-decoration: none;
}

.button1 {
  margin: 5vh auto 0;
  width: 35vw;
  height: 10vw;
}

/* second page */

#video2 {
  width: 100vw;
  margin-top: 5vh;
  object-fit: cover;
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

.arrow {
  position: absolute;
  bottom: 8vw;
  left: 46vw;
  width: 8vw;
}

/* spec-table */

.spec-table {
  background-color: #d7d7d7;
  padding: 10vh 4vw;
  text-align: left !important;
}

.spec-box {
  margin-bottom: 5vh;
}
.spec-table h4 {
  padding-left: 4vw;
}
.spec-table .header-wraper {
  border-bottom: 1px solid #b9b9b9;
  display: block;
  padding-left: 4vw;
  margin-top: 3vh;
  padding-bottom: 1vh;
}

.spec-table .header {
  font-size: 1.14rem;
  line-height: 4vh;
}

.spec-table .header-wraper > .remark {
  padding-left: 0vw !important;
}

.spec-table .item div {
  line-height: 2;
  padding-left: 4vw;
  padding-right: 4vw;
  font-size: 1rem;
  margin: 0.6vh 0;
  color: #333;
}

.item-highlight {
  /* background-color: #e7e7e7; */
  background-color: #d0d0d0;
}

.remark {
  font-size: 0.8rem;
  color: #3f3f3f;
  padding-left: 4vw;
  padding-right: 4vw;
  margin: 1vh 0;
}

/* last page */

.full-page {
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  width: 100vw;
  height: 143vw;
  position: relative;
}

.full-page.footer {
  background-image: url("../assets/headerc/suoqi1.png");
}

.full-page.expectation {
  background-image: url("../assets/headerc/footer.png");
}

.full-page .desc {
  margin-top: 4vh;
  font-size: 1.3rem;
}

.full-page h2 {
  padding-top: 10vh;
}

.full-page .buttom3 {
  width: 38vw;
  /* position: absolute; */
  bottom: 10vh;
  font-size: 4vw;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  margin: 10vw auto;
  border: 1px solid #000;
  line-height: 9vw;
}

.full-page .buttom3 .ioc {
  width: 4vw;
  margin-left: 2vw;
}
.share {
  position: fixed;
  top: 88px;
  right: 6vw;
  z-index: 1;
}
</style>
