/**
 * Created by Shamim on 10/11/2015.
 */
;
(function ($) {

    $(function () {

        jQuery(document).ready(function () {




            // Team Carousel
            // =========================
            $("#owl-demo").owlCarousel({

                //autoPlay: 3000, //Set AutoPlay to 3 seconds

                items: 4,
                itemsDesktop: [1199, 3],
                itemsDesktopSmall: [979, 3],
                navigation: true,
                pagination: false,
                navigationText: ['<i class="fa fa-angle-left"></i> ', '<i class="fa fa-angle-right"></i>']

            });

            //  Owl Carousel
            //==============================
            $("#owl-testimonial").owlCarousel({

                slideSpeed: 300,
                paginationSpeed: 400,
                singleItem: true

                // "singleItem:true" is a shortcut for:
                // items : 1,
                // itemsDesktop : false,
                // itemsDesktopSmall : false,
                // itemsTablet: false,
                // itemsMobile : false

            });


            //  Parallax Background
            //==============================
            $.stellar();


            //  isoTop
            //==============================
            var $container = $('.works-area');
            $container.isotope({
                filter: '*',
                animationOptions: {
                    duration: 750,
                    easing: 'linear',
                    queue: false
                }
            });

            $('.works-category li a').click(function () {
                $('.works-category .current').removeClass('current');
                $(this).addClass('current');

                var selector = $(this).attr('data-filter');
                $container.isotope({
                    filter: selector,
                    animationOptions: {
                        duration: 750,
                        easing: 'linear',
                        queue: false
                    }
                });
                return false;
            });




            // Header Effect
            //==============================
            $(".header").affix({
                offset: {
                    top: 100,
                    bottom: function () {
                        return (this.bottom = $('.copyright').outerHeight(true))
                    }
                }
            })



            //Home Scree Optimize
            //==============================
            (function () {

                var slideHeight = $(window).height();
                $('#home').css('height', slideHeight);

                $(window).resize(function () {
                    $('#home').css('height', slideHeight);
                });

            }());




        });
        //Document Ready End.


        //  Typed JS
        //====================================
                $(".element").typed({
                    strings: ["MARS!"],
                    typeSpeed: 300,
                    loop: true,
                    cursorChar: "|",
                });


        // Smooth Scroll
        //====================================
        smoothScroll.init({
            speed: 1000, // Integer. How fast to complete the scroll in milliseconds
            easing: 'easeInOutCubic', // Easing pattern to use
            updateURL: false, // Boolean. Whether or not to update the URL with the anchor hash on scroll
            offset: 90, // Integer. How far to offset the scrolling anchor location in pixels
            callbackBefore: function ( toggle, anchor ) {}, // Function to run before scrolling
            callbackAfter: function ( toggle, anchor ) {} // Function to run after scrolling
        });


        //Reveal JS
        //================================
        window.scrollReveal = new scrollReveal();


        $(document).ready(function() {
            if ($(window).width() < 768)
            {
                $(".navbar-nav li a").click(function(event) {
                    $(".navbar-collapse").collapse('hide');
                });
            }
        });




    });
})(jQuery);

/*
Astral by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {

var settings = {

	// Speed to resize panel.
		resizeSpeed: 600,

	// Speed to fade in/out.
		fadeSpeed: 300,

	// Size factor.
		sizeFactor: 11.5,

	// Minimum point size.
		sizeMin: 15,

	// Maximum point size.
		sizeMax: 20

};

var $window = $(window);

$window.on('load', function() {

	skel
		.breakpoints({
			desktop: '(min-width: 737px)',
			mobile: '(max-width: 736px)'
		})
		.viewport({
			breakpoints: {
				desktop: {
					width: 1080,
					scalable: false
				}
			}
		})
		.on('+desktop', function() {

			var	$body = $('body'),
				$main = $('#main'),
				$panels = $main.find('.panel'),
				$hbw = $('html,body,window'),
				$footer = $('#footer'),
				$wrapper = $('#wrapper'),
				$nav = $('#nav'), $nav_links = $nav.find('a'),
				$jumplinks = $('.jumplink'),
				$form = $('form'),
				panels = [],
				activePanelId = null,
				firstPanelId = null,
				isLocked = false,
				hash = window.location.hash.substring(1);

			if (skel.vars.mobile) {

				settings.fadeSpeed = 0;
				settings.resizeSpeed = 0;
				$nav_links.find('span').remove();

			}

			// Body.
				$body._resize = function() {
					var factor = ($window.width() * $window.height()) / (1440 * 900);
					$body.css('font-size', Math.min(Math.max(Math.floor(factor * settings.sizeFactor), settings.sizeMin), settings.sizeMax) + 'pt');
					$main.height(panels[activePanelId].outerHeight());
					$body._reposition();
				};

				$body._reposition = function() {
					if (skel.vars.mobile && (window.orientation == 0 || window.orientation == 180))
						$wrapper.css('padding-top', Math.max((($window.height() - (panels[activePanelId].outerHeight() + $footer.outerHeight())) / 2) - $nav.height(), 30) + 'px');
					else
						$wrapper.css('padding-top', ((($window.height() - panels[firstPanelId].height()) / 2) - $nav.height()) + 'px');
				};

			// Panels.
				$panels.each(function(i) {
					var t = $(this), id = t.attr('id');

					panels[id] = t;

					if (i == 0) {

						firstPanelId = id;
						activePanelId = id;

					}
					else
						t.hide();

					t._activate = function(instant) {

						// Check lock state and determine whether we're already at the target.
							if (isLocked
							||	activePanelId == id)
								return false;

						// Lock.
							isLocked = true;

						// Change nav link (if it exists).
							$nav_links.removeClass('active');
							$nav_links.filter('[href="#' + id + '"]').addClass('active');

						// Change hash.
							if (i == 0)
								window.location.hash = '#';
							else
								window.location.hash = '#' + id;

						// Add bottom padding.
							var x = parseInt($wrapper.css('padding-top')) +
									panels[id].outerHeight() +
									$nav.outerHeight() +
									$footer.outerHeight();

							if (x > $window.height())
								$wrapper.addClass('tall');
							else
								$wrapper.removeClass('tall');

						// Fade out active panel.
							$footer.fadeTo(settings.fadeSpeed, 0.0001);
							panels[activePanelId].fadeOut(instant ? 0 : settings.fadeSpeed, function() {

								// Set new active.
									activePanelId = id;

									// Force scroll to top.
										$hbw.animate({
											scrollTop: 0
										}, settings.resizeSpeed, 'swing');

									// Reposition.
										$body._reposition();

									// Resize main to height of new panel.
										$main.animate({
											height: panels[activePanelId].outerHeight()
										}, instant ? 0 : settings.resizeSpeed, 'swing', function() {

											// Fade in new active panel.
												$footer.fadeTo(instant ? 0 : settings.fadeSpeed, 1.0);
												panels[activePanelId].fadeIn(instant ? 0 : settings.fadeSpeed, function() {

													// Unlock.
														isLocked = false;

												});
										});

							});

					};

				});

			// Nav + Jumplinks.
				$nav_links.add($jumplinks).click(function(e) {
					var t = $(this), href = t.attr('href'), id;

					if (href.substring(0,1) == '#') {

						e.preventDefault();
						e.stopPropagation();

						id = href.substring(1);

						if (id in panels)
							panels[id]._activate();

					}

				});

			// Window.
				$window
					.resize(function() {

						if (!isLocked)
							$body._resize();

					});

				$window
					.on('orientationchange', function() {

						if (!isLocked)
							$body._reposition();

					});

				if (skel.vars.IEVersion < 9)
					$window
						.on('resize', function() {
							$wrapper.css('min-height', $window.height());
						});

			// Fix: Placeholder polyfill.
				$('form').placeholder();

			// Prioritize "important" elements on mobile.
				skel.on('+mobile -mobile', function() {
					$.prioritize(
						'.important\\28 mobile\\29',
						skel.breakpoint('mobile').active
					);
				});

			// CSS polyfills (IE<9).
				if (skel.vars.IEVersion < 9)
					$(':last-child').addClass('last-child');

			// Init.
				$window
					.trigger('resize');

				if (hash && hash in panels)
					panels[hash]._activate(true);

				$wrapper.fadeTo(400, 1.0);

		})
		.on('-desktop', function() {

			window.setTimeout(function() {
				location.reload(true);
			}, 50);

		});

});

})(jQuery);

