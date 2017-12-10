(function($) {
    "use strict";

    $(document).ready(function(){

        function IEVersion() {
            var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
            var isOpera = userAgent.indexOf("Opera") > -1;
            var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera; //判断是否IE浏览器
            var isEdge = userAgent.indexOf("Windows NT 6.1; Trident/7.0;") > -1 && !isIE; //判断是否IE的Edge浏览器
            if (isIE) {
                var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
                reIE.test(userAgent);
                var fIEVersion = parseFloat(RegExp["$1"]);
                return fIEVersion;
            } else {
                return -1;//非IE
            }
        };

        var IEVer = IEVersion();

        if (IEVer != -1 && IEVer <= 8) {
            alert("请使用IE8以上版本，感受最佳浏览体验！");
        };

        /*----------------------------------------------------*/
        /*  Preloader
        /*----------------------------------------------------*/
        $(".preloader").fadeOut();

        /*----------------------------------------------------*/
        /*  Main Slider
        /*----------------------------------------------------*/
        $('.home_slider').owlCarousel({
            loop:true,
            margin:0,
            nav:false,
            autoplay:true,
            dots: true,
            navText: [
                "<span class='lnr lnr-chevron-left'></span>",
                "<span class='lnr lnr-chevron-right'></span>"
            ],
            items: 1,
            autoplayHoverPause:true,
            autoplaySpeed: 1600,
            navSpeed: 1600
        });

        // $(window).trigger('resize');

        // /*----------------------------------------------------*/
        // /*  Find Domain Form Dropdown
        // /*----------------------------------------------------*/
        // $('.domain_search_drop').on("click",function(){
        //     $(this).toggleClass('rotate')
        // });

        /*----------------------------------------------------*/
        /*  Fix Navigation
        /*----------------------------------------------------*/

        $(".navbar-default").affix({
            offset: {
                top: $('.top_header').height()
            }
        });


        /*----------------------------------------------------*/
        /*  Testimonial Slider
        /*----------------------------------------------------*/
        $('.testimonial_slider').owlCarousel({
            loop:true,
            margin:0,
            nav:false,
            autoplay:true,
            dots: false,
            navText: [
                "<span class='lnr lnr-chevron-left'></span>",
                "<span class='lnr lnr-chevron-right'></span>"
            ],
            items: 1,
            autoplaySpeed: 1600,
            navSpeed: 1600
        });

        /*----------------------------------------------------*/
        /*  Counter Up - Fun Facts
        /*----------------------------------------------------*/
        $('.fact strong').counterUp({
            delay: 10,
            time: 1000
        });

        /*----------------------------------------------------*/
        /*  Counter Up - Fun Facts
        /*----------------------------------------------------*/
        $('.we_used .progress-bar').each(function(){
            var $this = $(this);
            var width = $(this).data('skill');
            $this.css({
                'transition' : 'width 2s'
            });

            setTimeout(function() {
                $this.waypoint(function(direction) {
                    if( direction === 'down' ) {
                        $this.css({
                            'width' : width + '%'
                        })
                    }
                } , { offset: '100%' } )
            }, 500)
        });

        /*----------------------------------------------------*/
        /*  PopUps
        /*----------------------------------------------------*/
        $('.portfolio-link').magnificPopup({
            type: 'image'
        });

        /*----------------------------------------------------*/
        /*  Video
        /*----------------------------------------------------*/
        $('.video').magnificPopup({
            type: 'iframe'
        });

        /*----------------------------------------------------*/
        /*  Contact Form Height
        /*----------------------------------------------------*/
        $('#success, #error').each(function(){
            var line_height = $(this).height();
            $(this).find('p').css( "line-height", function(){
                return line_height + 'px'
            })
        });

    })

})(jQuery)