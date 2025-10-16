<style>
    html {
    background: #22324a;
}

body {
    background: #22324a;
    position: relative;
    cursor: url('https://ionicframework.com/img/finger.png'), auto;    
    font-family: 'Lato', sans-serif;
    display: none;
}

h1, h2, h3, h4, h5, p, a, div, span, small {
    font-family: 'Lato', sans-serif;
}

#container {
    overflow: hidden;
    width: 375px;
    height: 600px;
    background: -webkit-linear-gradient(345deg, #2b4488, #a7b5cb);
    background: linear-gradient(345deg, #2b4488, #a7b5cb);    
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    -webkit-transform: translate(-50%,-50%);
    -ms-transform: translate(-50%,-50%);
}

.card {
    height: 400px;
    margin: 0 auto;
    margin-left: 8.5%;
    margin-right: 8.5%;
    width: calc(100% - 17%);
    border-radius: 9px;
    box-shadow: 0 10px 40px rgba(0,0,0,0.3);
    margin-top: 170px;
    overflow: hidden;
    z-index: 5;
    position: relative;
}

.bg-img {
    position: relative;
    height: 270px;
    background-position: center center;
    background-size: cover;
    background-repeat: no-repeat;
    border-top-left-radius: 9px;
    border-top-right-radius: 9px;
}

.coffee .bg-img {
    background-image: url('https://images.unsplash.com/photo-1444418185997-1145401101e0?format=auto&auto=compress&dpr=2&crop=entropy&fit=crop&w=1355&h=858&q=80');
}

.transit .bg-img {
    background-image: url('https://images.unsplash.com/photo-1431620828042-54af7f3a9e28?format=auto&auto=compress&dpr=2&crop=entropy&fit=crop&w=1102&h=740&q=80');
}

.event .bg-img {
    background-image: url('https://images.unsplash.com/photo-1440965185352-15fcce00e477?format=auto&auto=compress&dpr=1&crop=entropy&fit=crop&w=1385&h=923&q=80');
}

.coffee .border {
    background: #ebaf70;
}

.bg-img .inner {
    padding: 32px 32px;
    z-index: 3;
    position: relative;
}

.bg-img .inner h1 {
    color: #fff;
    font-size: 28px;
    max-width: 150px;
    line-height: 1.2em;
    margin-bottom: 12px;
    font-weight: 300;
}

small.small {
    color: #fff;
    font-size: 12px;
    display: block;
    margin-bottom: 84px;
    font-weight: 300;
}

.overlay {
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: 2;
    background: #757575;
    opacity: 0.3;
    border-top-left-radius: 9px;
    border-top-right-radius: 9px;
}

.card_top, .info .right small, .info .left .wrapper {
    position: absolute;
    top: 10%;
    left: 50%;
    transform: translate(-50%,-50%);
    -webkit-transform: translate(-50%,-50%);
    -ms-transform: translate(-50%,-50%);
    width: 100%;
    text-align: center;
}

.owl-carousel .owl-item .card_top h3 {
    font-size: 14px;
    color: #fff;
    letter-spacing: 1px;
    text-transform: uppercase;
    margin-top: 58px;
    font-weight: 300;
    transform: translateX(-60px);
    transition: all 0.3s;
}

.owl-carousel .owl-item .transit .card_top h3, .owl-carousel .owl-item .event .card_top h3 {
    transform: translateX(-199px);
    opacity: 0.3;
}

.owl-carousel .owl-item .transit .border, .owl-carousel .owl-item .event .border {
    transform: translateX(-200px);
    opacity: 0;
}

.owl-carousel .owl-item .border {
    background: #ebaf70;
    width: 70px;
    height: 3px;
    margin: 40px auto 0px auto;
    transform: translateX(-100px);
    transition: all 0.3s;    
}

.owl-carousel .owl-item.active .card_top h3, .owl-carousel .owl-item.active .border {
    transform: translateX(0px);
    opacity: 1;
}

.info {
    font-size: 0em;
}

.info .left, .info .right {
    position: relative;
    font-size: 1rem;
    display: inline-block;
    vertical-align: top;
    height: 132px;
}

.info .left {
    background: #fff;
    width: 70%;
    float: left;
}

.info .right {
    background: #dee7e7;
    width: 30%;
    float: right;
}

.info .right small, .info .left .wrapper {
    top: 50%;
    color: #a5a5af;
    text-transform: uppercase;
    font-size: 18px;
}

.info .right small span {
    margin-top: 10px;
    display: block;
    font-size: 12px;
}

.info .left .wrapper h4, .info .left .wrapper small {
    display: inline-block;
    color: #a5a5af;    
}

.info .left .wrapper small {
    font-size: 12px;
    font-weight: 300;
    margin-left: 20px;
}

.dollar {
    font-size: 35px;
    display: block;
    float: left;
    color: #fff;
    font-weight: 300;
    margin-right: 6px;
}

span.text {
    color: #fff;
    font-weight: 100;
    font-size: 12px;
}

@media screen and (max-width: 375px) and (min-width: 0) {
    #container {
        width: 100%;
    }
}



/* 
 *  Owl Carousel - Animate Plugin
 */
.owl-carousel .animated {
  -webkit-animation-duration: 1000ms;
  animation-duration: 1000ms;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}
.owl-carousel .owl-animated-in {
  z-index: 0;
}
.owl-carousel .owl-animated-out {
  z-index: 1;
}
.owl-carousel .fadeOut {
  -webkit-animation-name: fadeOut;
  animation-name: fadeOut;
}

@-webkit-keyframes fadeOut {
  0% {
    opacity: 1;
  }

  100% {
    opacity: 0;
  }
}
@keyframes fadeOut {
  0% {
    opacity: 1;
  }

  100% {
    opacity: 0;
  }
}

/* 
 *  Owl Carousel - Auto Height Plugin
 */
.owl-height {
  -webkit-transition: height 500ms ease-in-out;
  -moz-transition: height 500ms ease-in-out;
  -ms-transition: height 500ms ease-in-out;
  -o-transition: height 500ms ease-in-out;
  transition: height 500ms ease-in-out;
}

/* 
 *  Core Owl Carousel CSS File
 */
.owl-carousel {
  display: none;
  width: 100%;
  -webkit-tap-highlight-color: transparent;
  /* position relative and z-index fix webkit rendering fonts issue */
  position: relative;
  z-index: 1;
}
.owl-carousel .owl-stage {
  position: relative;
  -ms-touch-action: pan-Y;
}
.owl-carousel .owl-stage:after {
  content: ".";
  display: block;
  clear: both;
  visibility: hidden;
  line-height: 0;
  height: 0;
}
.owl-carousel .owl-stage-outer {
  position: relative;
  overflow: visible;
  -webkit-transform: translate3d(0px, 0px, 0px);
}
.owl-carousel .owl-controls .owl-nav .owl-prev,
.owl-carousel .owl-controls .owl-nav .owl-next,
.owl-carousel .owl-controls .owl-dot {
  cursor: pointer;
  cursor: hand;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.owl-carousel.owl-loaded {
  display: block;
}
.owl-carousel.owl-loading {
  opacity: 0;
  display: block;
}
.owl-carousel.owl-hidden {
  opacity: 0;
}
.owl-carousel .owl-refresh .owl-item {
  display: none;
}
.owl-carousel .owl-item {
  position: relative;
  min-height: 1px;
  float: left;
  -webkit-backface-visibility: hidden;
  -webkit-tap-highlight-color: transparent;
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.owl-carousel .owl-item img {
  display: block;
  width: 100%;
  -webkit-transform-style: preserve-3d;
}
.owl-carousel.owl-text-select-on .owl-item {
  -webkit-user-select: auto;
  -moz-user-select: auto;
  -ms-user-select: auto;
  user-select: auto;
}
.owl-carousel .owl-grab {
  cursor: move;
  cursor: -webkit-grab;
  cursor: -o-grab;
  cursor: -ms-grab;
  cursor: grab;
}
.owl-carousel.owl-rtl {
  direction: rtl;
}
.owl-carousel.owl-rtl .owl-item {
  float: right;
}

/* No Js */
.no-js .owl-carousel {
  display: block;
}

/* 
 *  Owl Carousel - Lazy Load Plugin
 */
.owl-carousel .owl-item .owl-lazy {
  opacity: 0;
  -webkit-transition: opacity 400ms ease;
  -moz-transition: opacity 400ms ease;
  -ms-transition: opacity 400ms ease;
  -o-transition: opacity 400ms ease;
  transition: opacity 400ms ease;
}
.owl-carousel .owl-item img {
  transform-style: preserve-3d;
}

/* 
 *  Owl Carousel - Video Plugin
 */
.owl-carousel .owl-video-wrapper {
  position: relative;
  height: 100%;
  background: #000;
}
.owl-carousel .owl-video-play-icon {
  position: absolute;
  height: 80px;
  width: 80px;
  left: 50%;
  top: 50%;
  margin-left: -40px;
  margin-top: -40px;
  background: url("owl.video.play.png") no-repeat;
  cursor: pointer;
  z-index: 1;
  -webkit-backface-visibility: hidden;
  -webkit-transition: scale 100ms ease;
  -moz-transition: scale 100ms ease;
  -ms-transition: scale 100ms ease;
  -o-transition: scale 100ms ease;
  transition: scale 100ms ease;
}
.owl-carousel .owl-video-play-icon:hover {
  -webkit-transition: scale(1.3, 1.3);
  -moz-transition: scale(1.3, 1.3);
  -ms-transition: scale(1.3, 1.3);
  -o-transition: scale(1.3, 1.3);
  transition: scale(1.3, 1.3);
}
.owl-carousel .owl-video-playing .owl-video-tn,
.owl-carousel .owl-video-playing .owl-video-play-icon {
  display: none;
}
.owl-carousel .owl-video-tn {
  opacity: 0;
  height: 100%;
  background-position: center center;
  background-repeat: no-repeat;
  -webkit-background-size: contain;
  -moz-background-size: contain;
  -o-background-size: contain;
  background-size: contain;
  -webkit-transition: opacity 400ms ease;
  -moz-transition: opacity 400ms ease;
  -ms-transition: opacity 400ms ease;
  -o-transition: opacity 400ms ease;
  transition: opacity 400ms ease;
}
.owl-carousel .owl-video-frame {
  position: relative;
  z-index: 1;
}

</style>
<link href='//fonts.googleapis.com/css?family=Lato:400,300,100,700,900' rel='stylesheet' type='text/css'>

<body>
<div id="container">
    <div id="cards">
        <div class="cards_container coffee">
            <div class="card_top">
                <h3 class="title">active tracks</h3>
                <div class="border"></div>
            </div>
            <div class="card">
                <div class="bg-img">
                    <div class="overlay"></div>
                    <div class="inner">
                        <h1>Coffee Spending</h1><small class="small">Weekly
                        track</small> <small class="price"><span class=
                        "dollar">$14</span> <span class="text">spent so far<br>
                        $28 remaining</span></small>
                    </div>
                </div>
                <div class="info">
                    <div class="right">
                        <small>nov<span>13 - 17</span></small>
                    </div>
                    <div class="left">
                        <div class="wrapper">
                            <h4>28</h4><span class="small_border"></span>
                            <small>campers</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="cards_container transit">
            <div class="card_top">
                <h3 class="title">shared tracks</h3>
                <div class="border"></div>
            </div>
            <div class="card">
                <div class="bg-img">
                    <div class="overlay"></div>
                    <div class="inner">
                        <h1>Transit Spending</h1><small class="small">Monthly
                        track</small> <small class="price"><span class=
                        "dollar">$80</span> <span class="text">spent so far<br>
                        $64 remaining</span></small>
                    </div>
                </div>
                <div class="info">
                    <div class="right">
                        <small>nov<span>13 - 17</span></small>
                    </div>
                    <div class="left">
                        <div class="wrapper">
                            <h4>28</h4><span class="small_border"></span>
                            <small>campers</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="cards_container event">
            <div class="card_top">
                <h3 class="title">event tracks</h3>
                <div class="border"></div>
            </div>
            <div class="card">
                <div class="bg-img">
                    <div class="overlay"></div>
                    <div class="inner">
                        <h1>Twin Pines Excursion</h1><small class="small">Event
                        track</small> <small class="price"><span class=
                        "dollar">$141</span> <span class="text">spent so
                        far<br>
                        $89 remaining</span></small>
                    </div>
                </div>
                <div class="info">
                    <div class="right">
                        <small>nov<span>13 - 17</span></small>
                    </div>
                    <div class="left">
                        <div class="wrapper">
                            <h4>28</h4><span class="small_border"></span>
                            <small>campers</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    var $window = $(window);

$('body').fadeIn('fast');

function getWidth() {
    $('body').css({
        height: $window.height(),
        width: $window.width(),
    });   
}

function go(){
    $('#cards').owlCarousel({
        loop:false,
        items:1,
        margin:10,
        nav:false
    });
    
    (function($) {
        $.fn.clickToggle = function(func1, func2) {
            var funcs = [func1, func2];
            this.data('toggleclicked', 0);
            this.click(function() {
                var data = $(this).data();
                var tc = data.toggleclicked;
                $.proxy(funcs[tc], this)();
                data.toggleclicked = (tc + 1) % 2;
            });
            return this;
        };
    }(jQuery));    
    
    $('.card').each(function(){
        var that = $(this);
        var b = that.find('.bg-img');
        var o = that.find('.overlay');
        
        var r = that.find('.info .right');
        var l = that.find('.info .left');
        var tl = new TimelineMax();        
        
        
        var tween1 = TweenMax.to(that, 0.35, {height:600, margin:0, width:'100%', background:'#fff', borderRadius:0, ease: Expo.easeInOut, y: 0 });
        var tween2 = TweenMax.to(b, 0.35, {borderRadius:0, ease: Expo.easeInOut, y: 0 });
        var tween3 = TweenMax.to(o, 0.35, {borderRadius:0, ease: Expo.easeInOut, y: 0 });
        
        var tween4 = TweenMax.to(r, 0.35, {width:'100%', height:'100px', ease: Expo.easeInOut });
        var tween5 = TweenMax.to(l, 0.35, {width:'100%', height:'100px', ease: Expo.easeInOut });
        
        tween1.pause();
        tween2.pause();
        tween3.pause();    
        tween4.pause();
        tween5.pause();
        
        $(that).clickToggle(function() {   
            tween1.play();
            tween2.play();
            tween3.play();
            tween4.play();
            tween5.play();
        },
        function() {
            tween1.reverse();
            tween2.reverse();
            tween3.reverse();
            TweenMax.to(r, 0.35, {width:'30%', height:'132px', ease: Expo.easeInOut });
            TweenMax.to(l, 0.35, {width:'70%', height:'132px', ease: Expo.easeInOut });
            
        });        
    });
    
    $('body').on('swipe',function(){
        $('.card').click(false);
        tween1.reverse();
        tween2.reverse();
        tween3.reverse(); 
    });      
};

go();
getWidth();
$window.resize(getWidth);
</script>