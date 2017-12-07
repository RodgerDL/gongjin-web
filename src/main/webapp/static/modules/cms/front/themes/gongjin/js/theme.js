(function($) {
    "use strict";

    $(document).ready(function(){

        /*----------------------------------------------------*/
        /*  Preloader
        /*----------------------------------------------------*/
        $(".preloader").fadeOut();

        /*----------------------------------------------------*/
        /*  Main Slider
        /*----------------------------------------------------*/
        function carouselInit() {
            $('.home_slider').owlCarousel({
                loop:true,
                margin:0,
                nav:false,
                autoplay:true,
                dots: true,
                dotsEach: true,
                navText: [
                    "<span class='lnr lnr-chevron-left'></span>",
                    "<span class='lnr lnr-chevron-right'></span>"
                ],
                items: 1,
                autoplayHoverPause:true,
                autoplaySpeed: 1600,
                navSpeed: 1600
            });
        }

        carouselInit();

        $('a[data-toggle="tab"]').on("shown.bs.tab", function(e) {
            e.preventDefault();
            carouselInit();
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
        })

    })

})(jQuery)