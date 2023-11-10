<!--
 * @Author: PiPi
 * @Github: https://github.com/SenLiangpi
 * @Email: pisenliang@gmail.com
 * @Date: 2019-09-10 17:53:18
 * @LastEditors: PiPi
 * @LastEditTime: 2019-12-02 11:57:21
 -->
<template>
  <div>
    <section class="top" id="reservation">
      <div class="Visible">
        <img
          v-show="show1"
          class="logo animated fadeIn"
          src="../assets/headerc/header-logo-white.svg"
          alt
        />
      </div>
      <div class="Visible slogan">
        <h1 v-show="show2">BYTON M-Byte</h1>
        <h1 v-show="show2" style="font-size:1.6rem;">豪华智能电动SUV</h1>
      </div>
      <div class="Visible button1">
        <div
          v-show="show3"
          @click="reservation(0)"
          class="buttom animated fadeInUp delay-1s"
          style="cursor: pointer;"
        >预约 M-Byte</div>
        <div
          v-show="show3"
          class="buttom animated fadeInUp delay-2s"
          style="cursor: pointer;"
          @click="outsidechain()"
        >互动赏车</div>
      </div>
      <img class="arrow animated fadeInDown infinite" src="../assets/headerc/Arrow.svg" alt />
    </section>

    <section class="container">
      <div class="Visible two_text">
        <h2 v-show="show4" class="animated fadeInUp">以数字力取代马力</h2>
        <p v-show="show4" class="desc animated fadeInUp">智造你的生活</p>
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
        <h3 v-show="show5" class="animated fadeInUp">数字设计语言</h3>
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
        <h3 v-show="show7" class="animated fadeInUp">多维度交互</h3>
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
        <h3 v-show="show9" class="animated fadeInUp">数字会客厅</h3>
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
        <h3 v-show="show11" class="animated fadeInUp">分享式车内体验</h3>
      </div>
      <div class="slider Visible">
        <swiper v-show="show11" class="animated" :options="swiperOption">
          <swiper-slide v-for="(item,index) in seats" :key="index">
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
        <h3 v-show="show11" class="Visible animated fadeInUp">分享式车内体验</h3>
      </div>
      <div class="slider Visible">
        <img class="animated fadeIn" src="../assets/headerc/tiyan.png" alt />
        <div class="slider-desc">
          <h4 class="animated fadeInUp">BYTON Orbiters 旋转座椅</h4>
          <p class="animated fadeInUp">前排座位可内向旋转10度</p>
          <p class="animated fadeInUp">方便与全车乘客进行交流</p>
          <p class="animated fadeInUp">开启你的数字会客厅模式</p>
        </div>
      </div>
    </section>-->

    <section class="container">
      <div class="Visible">
        <h3 v-show="show12" class="animated fadeInUp">全球标准的性能和品质</h3>
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
        <h3 v-show="show14" class="animated fadeInUp">屏幕安全</h3>
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
        <h3 v-show="show16" class="animated fadeInUp">自建工业4.0工厂</h3>
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
        <h2 v-show="show18" class="animated fadeInUp">不负所期</h2>
        <p v-show="show18" class="desc animated fadeInUp">
          <span style="font-weight: normal;opacity: 0.8;">M-Byte</span>
          <span style="font-weight: normal;opacity: 0.8;">已日趋接近量产</span>
        </p>
      </div>
    </section>

    <section class="spec-table">
      <h4>技术参数</h4>
      <div class="spec-box" v-for="(item,index) in specTable" :key="index">
        <div class="header-wraper">
          <div class="header">{{item.header}}</div>
        </div>
        <div class="item" v-for="(k,i) in item.list" :key="i">
          <div v-for="(s,t) in k.key" :key="t">{{s}}</div>
          <div class="item-highlight">{{k.data}}</div>
        </div>
      </div>
      <div class="remark">*仅在当地法规允许及充电设施支持的情况下可以达到（直流充电能力目前在中国市场受限）</div>
      <div class="remark">*考虑到拜腾汽车可能随时对上述配置信息进行更新和调整，以上配置信息仅供参考。实物车辆配置可能会与前述信息存在一定差异，具体车辆信息以销售的实车为准。</div>
    </section>

    <section class="full-page footer">
      <div class="Visible">
        <h2 v-show="show19" class="animated fadeInUp">车内车外，焕然一新</h2>
        <!-- <p v-show="show19" class="desc animated fadeInUp">
          <span style="font-weight: normal;opacity: 0.8;">M-Byte</span>
          <span style="font-weight: normal;opacity: 0.8;">智造你的生活</span>
        </p>-->
      </div>
      <div
        class="buttom3 animated fadeInUp delay-z5s"
        v-show="show20"
        @click="outsidechain()"
        style="cursor: pointer;"
      >
        <div>互动赏车</div>
        <!-- <img class="ioc" src="../assets/headerc/ioc.svg" alt /> -->
      </div>
    </section>
    <div style="height: 10vw;"></div>
    <div v-if="buttom4if">
      <div class="buttom4 animated fadeIn">
        <img src="../assets/headerc/header-logo-dark.svg" alt srcset />
        <div class="reservebtn" @click="reservation(1)" style="cursor: pointer;">预约 M-Byte</div>
      </div>
    </div>
    <!-- <img v-if="buttom4if" class="share animated fadeIn" @click="share()" src="../assets/share.svg" alt="" > -->
    <!-- <div>
      <div class="buttom4 animated slideInUp">
        <img @click="share()" src="../assets/share.svg" alt="" >
        <div class="reservebtn" @click="reservation(1)" style="cursor: pointer;">预约 M-Byte</div>
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
import seats_1 from "../assets/headerc/seats/1.gif";
import seats_2 from "../assets/headerc/seats/2.png";

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
          title: "BYTON 智能表情",
          desc: [
            "交互式智能表情及矩阵式LED大灯",
            "可根据不同情境切换显示模式",
            "与用户、行人和其它车辆“对话”"
          ]
        },
        {
          img: page2_2,
          title: "隐形天线",
          desc: ["天线集成在车顶内，线条更流畅", "并可提供高速的带宽"]
        },
        {
          img: page2_3,
          title: "远程控制",
          desc: ["通过智能钥匙或手机APP可远程", "查找车辆位置及操控车内设置"]
        }
      ],
      page3: [
        {
          img: duoping_1,
          title: "BYTON Stage 全面屏",
          desc: [
            "首次应用于量产车",
            "一体式48英寸横向4K曲面屏",
            "自适应亮度调整，超车规级安全",
            "为你的数字生活提供丰富内容"
          ]
        },
        {
          img: duoping_2,
          title: "驾驶员触控屏",
          desc: [
            "开创性的专利设计",
            "方向盘转动时，屏幕保持静止",
            "并将安全气囊集成在屏幕下方"
          ]
        },
        {
          img: duoping_3,
          title: "副驾触控屏",
          desc: [
            "前排乘客可轻松操控",
            "BYTON Stage 全面屏及车内各种应用",
            "其界面功能与驾驶员触控屏一致"
          ]
        },
        {
          img: duoping_4,
          title: "手势控制",
          desc: [
            "前瞻性手势控制技术",
            "TOF传感器集成在车内顶棚上",
            "为人机交互提供更多可能"
          ]
        },
        {
          img: duoping_5,
          title: "面部识别",
          desc: [
            "车内摄像头传感器",
            "可精确采集、识别用户人脸数据",
            "匹配你的个性化内容和座舱设置"
          ]
        }
      ],
      page4: [
        {
          img: keting_1,
          title: "环绕式内饰设计",
          desc: ["独特的环绕式氛围体验", "搭配前排纯平地板"]
        },
        {
          img: keting_2,
          title: "超大全景天窗",
          desc: [
            "超大尺寸天窗营造宽适体验",
            "车规级特殊玻璃",
            "带防紫外线保护功能"
          ]
        },
        {
          img: keting_3,
          title: "HIFI 音响系统",
          desc: ["可选配17个扬声器的", "Harman Kardon发烧级车载音响系统"]
        },
        {
          img: keting_4,
          title: "炫酷氛围灯",
          desc: [
            "10种预设拜腾色",
            "呈现多种颜色渐变切换效果",
            "更有无限自定义颜色选择"
          ]
        }
      ],
      seats: [
        {
          img: seats_1,
          title: "BYTON Orbiters 旋转座椅",
          desc: [
            "前排座位可内向旋转10度",
            "方便与全车乘客进行交流",
            "开启你的数字会客厅模式"
          ]
        },
        {
          img: seats_2,
          title: "后排独立舰长椅",
          desc: [
            "配置双向电动靠背调节",
            "4向腰托调节",
            "可设置座椅按摩及座椅加热"
          ]
        }
      ],
      page6: [
        {
          img: pinzhi_1,
          title: "动力系统",
          desc: ["前后均使用德国博世最新永磁电机", "体积小，能耗低"]
        },
        {
          img: pinzhi_2,
          title: "车身结构",
          desc: [
            "钢铝混合车身结构，减轻车重",
            "多连杆独立前后悬架",
            "兼顾舒适感与运动性能"
          ]
        },
        {
          img: pinzhi_3,
          title: "软硬件升级",
          desc: ["整车可支持深度OTA升级", "可支持5G网络硬件升级"]
        }
      ],
      page7: [
        //屏幕
        {
          img: pingmu_1,
          title: "高强度防碰撞",
          desc: [
            "屏幕的物理硬度比拟车漆表面硬度",
            "同时配备防爆胶层",
            "防反光层和防指纹层"
          ]
        },
        {
          img: pingmu_2,
          title: "高低温耐久",
          desc: ["可在零下30度极端天气和零上85度", "长期曝晒的工况环境下工作"]
        },
        {
          img: pingmu_3,
          title: "快速获取信息",
          desc: [
            "通过眼动追踪的机器学习",
            "优化界面设计",
            "让驾驶员快速获取屏幕信息"
          ]
        }
      ],
      page8: [
        //工厂
        {
          img: gongchang_1,
          title: "焊装车间",
          desc: [
            "335台德国KUKA",
            "专属定制的“拜腾金”色机器人",
            "自动化率高达99%"
          ]
        },
        {
          img: gongchang_2,
          title: "冲压车间",
          desc: ["目前国内最快汽车冲压生产线之一", "平均3秒压出一个工件"]
        },
        {
          img: gongchang_3,
          title: "涂装车间",
          desc: [
            "国内首次采用横置烘房技术及三涂两烘工艺",
            "呈现美观耐用的豪华漆面"
          ]
        },
        {
          img: gongchang_4,
          title: "电池车间",
          desc: [
            "自主设计电池包",
            "采用主动水冷技术",
            "宁德时代提供电芯模组",
            "100%下线检测"
          ]
        },
        {
          img: gongchang_5,
          title: "研发中心",
          desc: [
            "拥有一流的研发测试能力",
            "实验室的种类和数量",
            "在“新势力”中处于领先"
          ]
        }
      ],
      specTable: [
        {
          header: "整车",
          list: [
            { key: ["车身结构"], data: "钢铝合混合结构" },
            { key: ["座位数"], data: "5（选配4座舰长椅）" },
            {
              key: ["尺寸: 长*宽（不包含后视镜）*高"],
              data: "4875mm * 1970mm * 1665mm"
            },
            { key: ["轴距"], data: "2950mm" },
            { key: ["后备箱储物容积"], data: "550L - 1450L" }
          ]
        },
        {
          header: "动力系统与性能",
          list: [
            { key: ["驱动形式"], data: "后轮驱动 / 四轮驱动" },
            { key: ["前电机最大输出功率（四驱配备）"], data: "150kW" },
            { key: ["后电机最大输出功率"], data: "200kW" },
            { key: ["最高车速"], data: "190km/h" },
            { key: ["百公里加速 后驱 / 四驱"], data: "7.5s / 5.5s" }
          ]
        },
        {
          header: "电池与续航里程（NEDC）",
          list: [
            { key: ["电池种类"], data: "三元锂电池" },
            { key: ["电池容量"], data: "72kWh / 95kWh" },
            { key: ["后驱，标准电池"], data: "续航：430km" },
            { key: ["后驱，长续航电池"], data: "续航：550km" },
            { key: ["四驱，长续航电池"], data: "续航：505km" }
          ]
        },
        {
          header: "充电*",
          list: [
            { key: ["0-80% 直流充电时间"], data: "35min" },
            {
              key: ["直流充电-最大充电功率", "（标准 / 长续航电池）"],
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
  font-size: 2rem;
  color: white;
  line-height: 1.6;
  font-weight: normal;
}

h2 {
  color: #000;
  font-size: 1.6rem;
  font-weight: normal;
}
.desc {
  font-size: 1.25rem;
  font-weight: lighter;
  margin-top: 2vh;
}

h3 {
  color: #000;
  font-size: 1.5rem;
  font-weight: normal;
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
  line-height: 1.6rem;
  color: #636363;
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

.top .slogan {
  margin-top: 6vh;
}

.top .slogan h1 {
  line-height: 1.6;
}

.top .slogan h1:first-child {
  letter-spacing: 0.16rem;
}

.top .buttom {
  border: 1px solid rgba(255, 255, 255, 0.8);
  line-height: 9vw;
  width: 35vw;
  margin-top: 4vh;
}
.top .buttom a {
  color: #ffffff;
  text-decoration: none;
}

.button1 {
  margin: 14vw auto 0;
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
  font-size: 1.4rem;
}

/* .expectation h2 {
  padding-top: 21vh !important;
} */

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
