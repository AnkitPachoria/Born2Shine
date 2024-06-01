 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script href="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js "></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script href=" "></script>
    <style>
        .modal-body h1 {
            font-weight: 900;
            font-size: 2.3em;
            text-transform: uppercase;
        }

        .modal-body a.pre-order-btn {
        
            background-color: gold;
            border-radius: 1em;
            padding: 1em;
            display: block;
            margin: 2em auto;
           
            font-size: 1.25em;
            font-weight: 6600;
        }

            .modal-body a.pre-order-btn:hover {
                background-color: #000;
                text-decoration: none;
                color: gold;
            }
    </style>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
           /* background: #eaeaea;*/
            overflow-x:hidden;
           
            font-family: 'Exo 2', sans-serif;
        }

        a {
            color: #34495e;
        }




        /*WRAPPER*/
       /* #wrapper {
            margin: 40px auto 0;
            width: 266px;
            position: relative;
        }*/

        #txt {
            color: #eaeaea;
        }


        /*WHEEL*/
        #wheel {
            width: 250px;
            height: 250px;
            border-radius: 50%;
            position: relative;
            overflow: hidden;
            border: 8px solid #fff;
            box-shadow: rgba(0,0,0,0.2) 0px 0px 10px, rgba(0,0,0,0.05) 0px 3px 0px;
            transform: rotate(0deg);
        }

            #wheel:before {
                content: '';
                position: absolute;
              /*  border: 4px solid rgba(0,0,0,0.1);*/
                width: 242px;
                height: 242px;
                border-radius: 50%;
                z-index: 1000;
            }

        #inner-wheel {
            width: 100%;
            height: 100%;
            -webkit-transition: all 6s cubic-bezier(0,.99,.44,.99);
            -moz-transition: all 6 cubic-bezier(0,.99,.44,.99);
            -o-transition: all 6s cubic-bezier(0,.99,.44,.99);
            -ms-transition: all 6s cubic-bezier(0,.99,.44,.99);
            transition: all 6s cubic-bezier(0,.99,.44,.99);
        }

        #wheel div.sec {
            position: absolute;
            width: 0;
            height: 0;
            border-style: solid;
            border-width: 130px 75px 0;
            border-color: #19c transparent;
            transform-origin: 75px 129px;
            left: 50px;
            top: -4px;
            opacity: 1;
        }

            #wheel div.sec:nth-child(1) {
                transform: rotate(60deg);
                -webkit-transform: rotate(60deg);
                -moz-transform: rotate(60deg);
                -o-transform: rotate(60deg);
                -ms-transform: rotate(60deg);
                border-color: #16a085 transparent;
            }

            #wheel div.sec:nth-child(2) {
                transform: rotate(120deg);
                -webkit-transform: rotate(120deg);
                -moz-transform: rotate(120deg);
                -o-transform: rotate(120deg);
                -ms-transform: rotate(120deg);
                border-color: #2980b9 transparent;
            }

            #wheel div.sec:nth-child(3) {
                transform: rotate(180deg);
                -webkit-transform: rotate(180deg);
                -moz-transform: rotate(180deg);
                -o-transform: rotate(180deg);
                -ms-transform: rotate(180deg);
                border-color: #34495e transparent;
            }

            #wheel div.sec:nth-child(4) {
                transform: rotate(240deg);
                -webkit-transform: rotate(240deg);
                -moz-transform: rotate(240deg);
                -o-transform: rotate(240deg);
                -ms-transform: rotate(240deg);
                border-color: #f39c12 transparent;
            }

            #wheel div.sec:nth-child(5) {
                transform: rotate(300deg);
                -webkit-transform: rotate(300deg);
                -moz-transform: rotate(300deg);
                -o-transform: rotate(300deg);
                -ms-transform: rotate(300deg);
                border-color: #d35400 transparent;
            }

            #wheel div.sec:nth-child(6) {
                transform: rotate(360deg);
                -webkit-transform: rotate(360deg);
                -moz-transform: rotate(360deg);
                -o-transform: rotate(360deg);
                -ms-transform: rotate(360deg);
                border-color: #c0392b transparent;
            }


            #wheel div.sec .fa {
                margin-top: -100px;
                color: rgba(0,0,0,0.2);
                position: relative;
                z-index: 10000000;
                display: block;
                text-align: center;
                font-size: 36px;
                margin-left: -15px;
                text-shadow: rgba(255, 255, 255, 0.1) 0px -1px 0px, rgba(0, 0, 0, 0.2) 0px 1px 0px;
            }




        #spin {
            width: 68px;
            height: 68px;
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -34px 0 0 -34px;
            border-radius: 50%;
            box-shadow: rgba(0,0,0,0.1) 0px 3px 0px;
            z-index: 1000;
            background: #fff;
            cursor: pointer;
            font-family: 'Exo 2', sans-serif;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            -o-user-select: none;
            user-select: none;
        }


            #spin:after {
                content: "SPIN";
                text-align: center;
                line-height: 68px;
                color: #CCC;
                text-shadow: 0 2px 0 #fff, 0 -2px 0 rgba(0,0,0,0.3);
                position: relative;
                z-index: 100000;
                width: 68px;
                height: 68px;
                display: block;
            }

            #spin:before {
                content: "";
                position: absolute;
                width: 0;
                height: 0;
                border-style: solid;
                border-width: 0 20px 28px 20px;
                border-color: transparent transparent #ffffff transparent;
                top: -12px;
                left: 14px;
            }

        #inner-spin {
            width: 54px;
            height: 54px;
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -27px 0 0 -27px;
            border-radius: 50%;
            background: red;
            z-index: 999;
            box-shadow: rgba(255,255,255,1) 0px -2px 0px inset, rgba(255,255,255,1) 0px 2px 0px inset, rgba(0,0,0,0.4) 0px 0px 5px;
            background: rgb(255,255,255); /* Old browsers */
            background: -moz-radial-gradient(center, ellipse cover, rgba(255,255,255,1) 0%, rgba(234,234,234,1) 100%); /* FF3.6+ */
            background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%,rgba(255,255,255,1)), color-stop(100%,rgba(234,234,234,1))); /* Chrome,Safari4+ */
            background: -webkit-radial-gradient(center, ellipse cover, rgba(255,255,255,1) 0%,rgba(234,234,234,1) 100%); /* Chrome10+,Safari5.1+ */
            background: -o-radial-gradient(center, ellipse cover, rgba(255,255,255,1) 0%,rgba(234,234,234,1) 100%); /* Opera 12+ */
            background: -ms-radial-gradient(center, ellipse cover, rgba(255,255,255,1) 0%,rgba(234,234,234,1) 100%); /* IE10+ */
            background: radial-gradient(ellipse at center, rgba(255,255,255,1) 0%,rgba(234,234,234,1) 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#eaeaea',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
        }

        #spin:active #inner-spin {
            box-shadow: rgba(0,0,0,0.4) 0px 0px 5px inset;
        }

        #spin:active:after {
            font-size: 15px;
        }



        #shine {
            width: 250px;
            height: 250px;
            position: absolute;
            top: 0;
            left: 0;
            background: -moz-radial-gradient(center, ellipse cover, rgba(255,255,255,1) 0%, rgba(255,255,255,0.99) 1%, rgba(255,255,255,0.91) 9%, rgba(255,255,255,0) 100%); /* FF3.6+ */
            background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%,rgba(255,255,255,1)), color-stop(1%,rgba(255,255,255,0.99)), color-stop(9%,rgba(255,255,255,0.91)), color-stop(100%,rgba(255,255,255,0))); /* Chrome,Safari4+ */
            background: -webkit-radial-gradient(center, ellipse cover, rgba(255,255,255,1) 0%,rgba(255,255,255,0.99) 1%,rgba(255,255,255,0.91) 9%,rgba(255,255,255,0) 100%); /* Chrome10+,Safari5.1+ */
            background: -o-radial-gradient(center, ellipse cover, rgba(255,255,255,1) 0%,rgba(255,255,255,0.99) 1%,rgba(255,255,255,0.91) 9%,rgba(255,255,255,0) 100%); /* Opera 12+ */
            background: -ms-radial-gradient(center, ellipse cover, rgba(255,255,255,1) 0%,rgba(255,255,255,0.99) 1%,rgba(255,255,255,0.91) 9%,rgba(255,255,255,0) 100%); /* IE10+ */
            background: radial-gradient(ellipse at center, rgba(255,255,255,1) 0%,rgba(255,255,255,0.99) 1%,rgba(255,255,255,0.91) 9%,rgba(255,255,255,0) 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#00ffffff',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */


            opacity: 0.1;
        }



        /*ANIMATION*/
        @-webkit-keyframes hh {
            0%, 100% {
                transform: rotate(0deg);
                -webkit-transform: rotate(0deg);
            }

            50% {
                transform: rotate(7deg);
                -webkit-transform: rotate(7deg);
            }
        }

        @keyframes hh {
            0%, 100% {
                transform: rotate(0deg);
                -webkit-transform: rotate(0deg);
            }

            50% {
                transform: rotate(7deg);
                -webkit-transform: rotate(7deg);
            }
        }

        .spin {
            -webkit-animation: hh 0.1s; /* Chrome, Safari, Opera */
            animation: hh 0.1s;
        }
    </style>

    <script>$(document).ready(function () {
            $('#myModal').modal('show');
        }); </script>
    <script>
        //set default degree (360*5)
        var degree = 1800;
        //number of clicks = 0
        var clicks = 0;
        var position = [];
        var position_name = [];
        var position_left = [];

        $(document).ready(function () {

            /*WHEEL SPIN FUNCTION*/
            $('#spin').click(function () {

                //add 1 every click
                clicks++;

                /*multiply the degree by number of clicks
              generate random number between 1 - 360, 
            then add to the new degree*/
                var newDegree = degree * clicks;
                var extraDegree = Math.floor(Math.random() * (360 - 1 + 1)) + 1;
                totalDegree = newDegree + extraDegree;

                /*let's make the spin btn to tilt every
                time the edge of the section hits 
                the indicator*/
                var function_call = false;
                $('#wheel .sec').each(function () {
                    var t = $(this);
                    var noY = 0;

                    var c = 0;
                    var n = 700;
                    var interval = setInterval(function () {
                        c++;
                        if (c === n) {
                            clearInterval(interval);
                        }

                        var aoY = t.offset().top;
                        $("#txt").html(aoY);
                        //console.log(aoY);
                        //console.log('this',position);


                        /*23.7 is the minumum offset number that 
                        each section can get, in a 30 angle degree.
                        So, if the offset reaches 23.7, then we know
                        that it has a 30 degree angle and therefore, 
                        exactly aligned with the spin btn*/
                        if (aoY < 23.89) {
                            console.log('<<<<<<<<');
                            $('#spin').addClass('spin');
                            setTimeout(function () {
                                $('#spin').removeClass('spin');
                            }, 100);
                        }

                        if (c == n) {
                            if (function_call == false) {
                                console.log('done');
                                console.log('ans', t.data('name'));
                                function_call = true;
                                getCounterData(aoY);

                            }

                        }
                    }, 10);

                    $('#inner-wheel').css({
                        'transform': 'rotate(' + totalDegree + 'deg)'
                    });

                    noY = t.offset().top;

                });
            });
            function setPosition() {
                position = [];
                position_name = [];
                position_left = [];
                console.log('reset');
                $('.sec').each(function () {
                    var pos = $(this).offset().top;
                    var left_pos = $(this).offset().left;
                    position_left.push(left_pos);
                    position.push(pos);
                    position_name.push($(this).data('name'));
                    $(this).attr('data-position', pos);
                });
            }
            setPosition();

            //console.log(position); 


            function getCounterData(num) {
                setPosition();
                //console.log("position",position_left,position_name);
                current = position[0];
                current_name = position_name[0];
                console.log(current_name);
                var $i = 0;
                position = sortWithIndeces(position);
                console.log('wqewew', position, position[1], position.sortIndices[1]); current_name = position_name[position.sortIndices[1]];
                //console.log('kk',current_name);          
                alert(current_name);
                setPosition();
            }

        });//DOCUMENT READY 


        function sortWithIndeces(toSort) {
            for (var i = 0; i < toSort.length; i++) {
                toSort[i] = [toSort[i], i];
            }
            toSort.sort(function (left, right) {
                return left[0] < right[0] ? -1 : 1;
            });
            toSort.sortIndices = [];
            for (var j = 0; j < toSort.length; j++) {
                toSort.sortIndices.push(toSort[j][1]);
                toSort[j] = toSort[j][0];
            }
            return toSort;
        }



    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 <%--   <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog" style="margin:0px!important;">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <!--         <h4 class="modal-title">Modal Header</h4> -->
                </div>
                <div class="modal-body text-center">
                    <div id="wrapper">

                        <div id="wheel">
                            <div id="inner-wheel">
                                <div class="sec" data-name="bell"><span class="fa fa-bell-o"></span></div>
                                <div class="sec" data-name="comment"><span class="fa fa-comment-o"></span></div>
                                <div class="sec" data-name="smile"><span class="fa fa-smile-o"></span></div>
                                <div class="sec" data-name="heart"><span class="fa fa-heart-o"></span></div>
                                <div class="sec" data-name="star"><span class="fa fa-star-o"></span></div>
                                <div class="sec" data-name="lightbulb"><span class="fa fa-lightbulb-o"></span></div>
                            </div>

                            <div id="spin">
                                <div id="inner-spin"></div>
                            </div>

                            <div id="shine"></div>
                        </div>


                        <div id="txt"></div>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <!--         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
            </div>
        </div>

    </div>
    </div>--%>

    <!--Main Slider-->
    <section class="main-slider" id="scroll-section-one" data-start-height="900" data-slide-overlay="yes">

        <div class="tp-banner-container">
            <div class="tp-banner">
                <ul>

                    <li data-transition="zoomout" data-slotamount="1" data-masterspeed="1000" data-thumb="images/main-slider/slide1.jpg" data-saveperformance="off" data-title="Awesome Title Here">
                        <img src="images/main-slider/slide1.jpg" alt="" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">

                        <div class="tp-caption sft sfb tp-resizeme"
                            data-x="center" data-hoffset="0"
                            data-y="center" data-voffset="-100"
                            data-speed="1500"
                            data-start="500"
                            data-easing="easeOutExpo"
                            data-splitin="none"
                            data-splitout="none"
                            data-elementdelay="0.01"
                            data-endelementdelay="0.3"
                            data-endspeed="1200"
                            data-endeasing="Power4.easeIn">
                            <figure class="content-image">
                                <img src="images/main-slider/leaf-icon.png" alt="">
                            </figure>
                        </div>

                        <div class="tp-caption sft sfb tp-resizeme"
                            data-x="center" data-hoffset="0"
                            data-y="center" data-voffset="30"
                            data-speed="1500"
                            data-start="500"
                            data-easing="easeOutExpo"
                            data-splitin="none"
                            data-splitout="none"
                            data-elementdelay="0.01"
                            data-endelementdelay="0.3"
                            data-endspeed="1200"
                            data-endeasing="Power4.easeIn">
                            <h3 class="text-center">Amplify your Hair Growth with our <br />very own Homemade Hair oil
                                <br>
                                </h3>
                        </div>

                        <div class="tp-caption sfb sfb tp-resizeme"
                            data-x="center" data-hoffset="0"
                            data-y="center" data-voffset="150"
                            data-speed="1500"
                            data-start="500"
                            data-easing="easeOutExpo"
                            data-splitin="none"
                            data-splitout="none"
                            data-elementdelay="0.01"
                            data-endelementdelay="0.3"
                            data-endspeed="1200"
                            data-endeasing="Power4.easeIn">
                           <%-- <a href="#" class="theme-btn btn-style-one">Shop Now</a> &ensp;&ensp; <a href="#" class="theme-btn btn-style-three">Buy Now</a>--%>
                        </div>


                    </li>


                    <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-thumb="images/main-slider/slide2.jpg" data-saveperformance="off" data-title="Awesome Title Here">
                        <img src="images/main-slider/slide2.jpg" alt="" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">

                        <div class="tp-caption sfl sfb tp-resizeme"
                            data-x="left" data-hoffset="15"
                            data-y="center" data-voffset="-100"
                            data-speed="1500"
                            data-start="500"
                            data-easing="easeOutExpo"
                            data-splitin="none"
                            data-splitout="none"
                            data-elementdelay="0.01"
                            data-endelementdelay="0.3"
                            data-endspeed="1200"
                            data-endeasing="Power4.easeIn">
                            <figure class="content-image">
                                <img src="images/main-slider/leaf-icon.png" alt="">
                            </figure>
                        </div>

                        <div class="tp-caption sfr sfb tp-resizeme"
                            data-x="left" data-hoffset="15"
                            data-y="center" data-voffset="30"
                            data-speed="1500"
                            data-start="500"
                            data-easing="easeOutExpo"
                            data-splitin="none"
                            data-splitout="none"
                            data-elementdelay="0.01"
                            data-endelementdelay="0.3"
                            data-endspeed="1200"
                            data-endeasing="Power4.easeIn">
                            <h3>Amplify your Hair Growth with our <br />very own Homemade Hair oil
                               </h3>
                        </div>

                        <div class="tp-caption sfl sfb tp-resizeme"
                            data-x="left" data-hoffset="15"
                            data-y="center" data-voffset="150"
                            data-speed="1500"
                            data-start="500"
                            data-easing="easeOutExpo"
                            data-splitin="none"
                            data-splitout="none"
                            data-elementdelay="0.01"
                            data-endelementdelay="0.3"
                            data-endspeed="1200"
                            data-endeasing="Power4.easeIn">
                           <%-- <a href="#" class="theme-btn btn-style-one">Shop Now</a> &ensp;&ensp; <a href="#" class="theme-btn btn-style-three">Buy Now</a>--%>
                        </div>


                    </li>

                   

                </ul>

                <div class="tp-bannertimer"></div>
            </div>
        </div>
    </section>


    <!--Intro Section-->
    <section class="intro-section">
        <div class="inner-part">
            <div class="auto-container">
                <div class="content-box">
                    <div class="inner-box">
                        <!--Section Title-->
                        <div class="sec-title-one">
                            <h2>100% Natural Handmade Oil</h2>
                        </div>

                        <div class="row clearfix">
                            <!--Content Column-->
                            <div class="content-column col-md-6 col-sm-6 col-xs-12">
                                <div class="inner text-left wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                                    <h3>01.	Homemade Hair Oil </h3>
                                    <div class="text">Born2Shine is a synonym of natural hair care. We are a small, passionate team dedicated to bringing you the best of nature’s gift in the form of hand crafted hair Oil.</div>
                                   <%-- <a href="#" class="theme-btn btn-style-two">Read More</a>--%>
                                </div>
                            </div>
                            <!--Content Column-->
                            <div class="content-column col-md-6 col-sm-6 col-xs-12">
                                <div class="inner text-right wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
                                    <h3>02. Straight from Nature</h3>
                                    <div class="text">Born2Shine is not just a hair care brand, it's a true gift from nature. We from our core believe that personal touch makes a world difference. </div>
                                   <%-- <a href="#" class="theme-btn btn-style-two">Read More</a>--%>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>


    <!--About Farm Section-->
    <section class="about-farm">
        <div class="auto-container">
            <!--Section Title-->
            <div class="sec-title-one">
                <h2>Top Ingridient In Our Product</h2>
            </div>

            <div class="row clearfix">
                <!--Column-->
                <div class="column col-lg-5 col-md-4 col-sm-12 col-xs-12">
                    <figure class="image-box wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                        <img src="images/resource/y.png" alt="">
                    </figure>
                </div>
                <!--Column-->
                <div class="column col-lg-7 col-md-8 col-sm-12 col-xs-12">
                    <div class="tabs-box tabs-style-one">
                        <div class="row clearfix">

                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <!--Tab Buttons-->
                                <ul class="tab-buttons clearfix">
                                    <li class="tab-btn" data-tab="#tab-one"><span class="txt">Almond</span></li>
                                    <li class="tab-btn active-btn" data-tab="#tab-two"><span class="txt">Curry leaves</span></li>
                                    <li class="tab-btn" data-tab="#tab-three"><span class="txt">Amla</span></li>
                                </ul>
                            </div>

                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                <!--Tabs Content-->
                                <div class="tabs-content">

                                    <!--Tab-->
                                    <div class="tab" id="tab-one">
                                        <h3>“A route of nature that binds heart”</h3>
                                        <div class="content">
                                            <p>Almond are really good for the growth of hair. With the regular application of it, hair growth exceeds gradually. </p>
                                            <p>It also strengthen hair. Almond also stimulates the keratin production which is extremely important for hair growth.</p>
                                            </div>
                                       <%-- <h5 class="author-name">Muhibbur Rashid</h5>--%>
                                    </div>

                                    <!--Tab / Active Tab-->
                                    <div class="tab active-tab" id="tab-two">
                                        <h3>“A promise of healthy hair straight from nature” </h3>
                                        <div class="content">
                                            <p>Curry leaves is best to promote hair growth. It also makes hair visibly darker. With the goodness of curry leaves the hair fall also get less.</p>
                                            <p> It has immense of benefits but it has magic for the mane as it boosts hair growth completely.</p>
                                              </div>
                                        <%--<h5 class="author-name">Stevan Smith</h5>--%>
                                    </div>

                                    <!--Tab-->
                                    <div class="tab" id="tab-three">
                                        <h3>“Life is too short for unhealthy hair” </h3>
                                        <div class="content">
                                            <p>Amla has lots of minerals & vitamins. Along with that the presence if phytonutrients increase blood circulation. This ultimately increases the stimulation of hair growth.</p>
                                            <p> Not only this with the use of amla the premature pigment from hair will be reduced drastically.</p>
 
                                        </div>
                                  <%--      <h5 class="author-name">Tafseer Hussain</h5>--%>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>


    <!--Fluid Section One-->
    <section class="fluid-section-one">
        <div class="oval-cut"></div>

        <!--FLoated Image Left-->
        <figure class="floated-image-left wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
            <img src="images/resource/oil2.png" alt="">
        </figure>
        <!--FLoated Image Right-->
        <figure class="floated-image-right wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
            <img src="images/resource/oil1.png" alt="">
        </figure>

        <div class="outer-box clearfix">
            <!--Left Column-->
            <div class="left-column">
                <div class="clearfix">
                    <div class="inner-box">
                        <h3>Save up to 20 %</h3>
                        <h5>on your first purchase</h5>
                        <a href="Shop.aspx" class="theme-btn btn-style-three">Shop Now</a>
                    </div>
                </div>
            </div>

            <!--Right Column-->
            <div class="right-column">
                <div class="clearfix">
                    <div class="inner-box">
                        <h3>Order Now</h3>
                        <h5>Only ₹ 499/-</h5>
                        <a href="Shop.aspx" class="theme-btn btn-style-three">Shop Now</a>
                    </div>
                </div>
            </div>

        </div>
    </section>




    <!--Deal of the Day-->
   

    <section class="team-section">
        <div class="auto-container">
            <!--Section Title-->
            <div class="sec-title-one">
                <h2>Our Founders</h2>
            </div>

            <div class="row clearfix">
                <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
                    <!--Default Team Member-->
                    <div class="default-team-member">
                        <div class="inner-box clearfix">
                            <!--Image Column-->
                            <div class="image-column">
                                <figure class="image">
                                    <a href="#">
                                        <img src="images/pic/r1.png" alt=""></a>
                                </figure>
                            </div>
                            <!--Content Column-->
                            <div class="content-column">
                                <div class="inner">
                                    <h3>Ruchi - Founder </h3>
                                    <div class="text">Our Founder got this unique idea of having Born2Shine a few years back when her own mother was facing hair fall. She truly believes that nature has magical powers to overcome hair fall problems in a short span of time. She believes that today the care from nature is the best thing that can happen to us. </div>
                                    <div class="social-links">
                                        <a href="#"><span class="fa fa-facebook-official"></span></a>

                                        <a href="#"><span class="fa fa-instagram"></span></a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Default Team Member-->
                    <div class="default-team-member alternate">
                        <div class="inner-box clearfix">
                            <!--Image Column-->
                            <div class="image-column">
                                <figure class="image">
                                    <a href="#">
                                        <img src="images/pic/mom.png" alt=""></a>
                                </figure>
                            </div>
                            <!--Content Column-->
                            <div class="content-column">
                                <div class="inner">
                                    <h3>Mom - Founder</h3>
                                    <div class="text">We all have heard of Ghar ke Nuskhe! Right? We all know where it comes from? Either from our Grandmother or from our mother. Similarly, Born2Shine is a brand that promotes Ghar ke Nuskhe in innovative forms. That “Mother Sparsh” is all we believe in and want to go with. </div>
                                    <div class="social-links">
                                        <a href="#"><span class="fa fa-facebook-official"></span></a>

                                        <a href="#"><span class="fa fa-instagram"></span></a>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                    <!--Default Team Member / Vertical-->
                    <div class="default-team-member vertical">
                        <div class="inner-box clearfix">
                            <!--Image Column-->
                            <div class="image-column">
                                <figure class="image">
                                    <a href="#">
                                        <img src="images/resource/prp.png" alt=""></a>
                                </figure>
                            </div>
                            <!--Content Column-->
                            <div class="content-column">
                                <div class="inner">
                                    <h3>Anurag - Proprietor</h3>
                                    <div class="text">We have come up with the idea of "Born2Shine" in the brilliance of making natural products, especially for hair growth. Born2Shine miracle hair oil is chemical free such as parabens, silicones, sulfates & petroleum products. Our homemade hair oil is simply the best example of all-natural ingredients.</div>
                                    <div class="social-links">
                                        <a href="#"><span class="fa fa-facebook-official"></span></a>

                                        <a href="#"><span class="fa fa-instagram"></span></a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!--Testimonials Section-->
    <section class="testimonial-section">

        <div class="oval-cut"></div>

        <div class="auto-container">
            <div class="carousel-outer">
                <div class="icon-box"><span class="flaticon-blocks-with-angled-cuts"></span></div>

                <div class="single-item-carousel">
                    <!--Slide Item-->
                    <div class="slide-item">
                        <div class="text-content">The mother of two was not easy for me and that was leading to extreme hair fall. I got to know about born 2 shine home made hair oil through a friend and just after using it for 15 days I was completely shocked by the results!</div>
                        <div class="quote-info">
                            <%--  <figure class="author-thumb img-circle">
                                <img class="img-circle" src="images/resource/author-thumb-1.jpg" alt="">
                            </figure>--%>
                            <h4>Sangeeta khurana</h4>
                            <div class="designation">Happy Customer</div>
                        </div>
                    </div>

                    <!--Slide Item-->
                    <div class="slide-item">
                        <div class="text-content">I was having hair fall due to extreme pollution and dirt. After using born 2 shine home made hair oil my hair fall completely vanished in one month.</div>
                        <div class="quote-info">
                            <%-- <figure class="author-thumb img-circle">
                                <img class="img-circle" src="images/resource/author-thumb-1.jpg" alt="">
                            </figure>--%>
                            <h4>Prerna Singh</h4>
                            <div class="designation">Happy Customer</div>
                        </div>
                    </div>

                    <!--Slide Item-->
                    <div class="slide-item">
                        <div class="text-content">Best home made hair oil so far! I was just fed up of using chemical hair oil. Thank you born 2 shine you are a saviour.</div>
                        <div class="quote-info">
                            <%--<figure class="author-thumb img-circle">
                                <img class="img-circle" src="images/resource/author-thumb-1.jpg" alt="">
                            </figure>--%>
                            <h4>Loveena Mathur</h4>
                            <div class="designation">Happy Customer</div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>


    <!--sponsors style one-->
    <section class="sponsors-style-one">
        <div class="auto-container">
            <!--Section Title-->
            <div class="sec-title-one">
                <h2>Our partners</h2>
            </div>

            <div class="sponsors-outer">
                <!--Sponsors Carousel-->
                <ul class="sponsors-carousel">
                    <li class="slide-item">
                        <figure class="image-box">
                            <a href="#">
                                <img src="images/sponsors/am.png" alt=""></a>
                        </figure>
                    </li>
                    <li class="slide-item">
                        <figure class="image-box">
                            <a href="#">
                                <img src="images/sponsors/mes.png" alt=""></a>
                        </figure>
                    </li>
                    <li class="slide-item">
                        <figure class="image-box">
                            <a href="#">
                                <img src="images/sponsors/mn.png" alt=""></a>
                        </figure>
                    </li>
                    <li class="slide-item">
                        <figure class="image-box">
                            <a href="#">
                                <img src="images/sponsors/ny.png" alt=""></a>
                        </figure>
                    </li>
                    <li class="slide-item">
                        <figure class="image-box">
                            <a href="#">
                                <img src="images/sponsors/flip.png" alt=""></a>
                        </figure>
                    </li>

                </ul>
            </div>
        </div>
    </section>


    <!--Fluid Section Two-->
    <section class="fluid-section-two">

        <div class="outer-box clearfix">
            <!--Left Column-->
            <div class="left-column">
                <div class="clearfix">
                    <div class="inner-box">
                        <h5>Newsletter</h5>
                        <h3>Stay tune for updates</h3>

                        <%--                        <div class="subscribe-form">
                            <form method="post" action="Contactus.aspx">
                                <div class="form-group">
                                    <input type="email" name="email" value="" placeholder="Enter Your Email" required>
                                    <button type="submit" class="theme-btn btn-style-three">Send Now</button>
                                </div>
                            </form>
                        </div>--%>
                    </div>
                </div>
            </div>

            <!--Right Column-->
            <div class="right-column">
                <!--Map Canvas-->
                <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3556.5183902316903!2d75.7700584245838!3d26.950478508468137!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1s%20Flat%20No.%20-601%2C%20Opposite%20Dher%20ke%20balaji%20mandir%2C%20Arihant%20shree%20krishnam%20residency%2C%20Jaipur%2C%20Jaipur%2C%20Rajasthan%2C%20302020!5e0!3m2!1sen!2sin!4v1699004392656!5m2!1sen!2sin" width="674" height="290" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                <%--  <div class="map-canvas"
                    data-zoom="10"
                    data-lat="23.815811"
                    data-lng="90.412580"
                    data-type="roadmap"
                    data-hue="#fc721e"
                    data-title="Dhaka"
                    data-content="Dhaka 1000-1200, Bangladesh<br><a href='mailto:info@youremail.com'>info@youremail.com</a>">
                </div>--%>
            </div>

        </div>
    </section>
</asp:Content>

