// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs

//= require masonry/jquery.masonry
//= require masonry/jquery.event-drag
//= require masonry/jquery.imagesloaded.min
//= require masonry/jquery.infinitescroll.min
//= require masonry/modernizr-transitions

//Content generation helpers:
//= require masonry/box-maker
//= require masonry/jquery.loremimages.min

//= require_tree .







$(function(){
	$('#container').masonry({
	  itemSelector: '.box',
	  // columnWidth: 375
	});
 
  $('#masonry-container').masonry({
    itemSelector: '.box',
    columnWidth: 375,
    isAnimated: !Modernizr.csstransitions,
    isFitWidth: true
  });

  $('#masonry-container').masonry({
    itemSelector: '.box',
    // set columnWidth a fraction of the container width
    // columnWidth: function( containerWidth ) {
    //   return containerWidth / 5;
    // }
  });


  $('#masonry-container').masonry({
    itemSelector: '.box',
    // columnWidth: 375,
    isAnimated: !Modernizr.csstransitions,
    isRTL: true
  });

  $('#masonry-container').masonry({
    itemSelector: '.box',
    // columnWidth: 375,
    gutterWidth: 0
  });


  var $container = $('#masonry-container');

  $container.imagesLoaded(function(){
    $container.masonry({
      itemSelector: '.box',
      // columnWidth: 375
    });
  });

  $container.infinitescroll({
    navSelector  : '#page-nav',    // selector for the paged navigation 
    nextSelector : '#page-nav a',  // selector for the NEXT link (to page 2)
    itemSelector : '.box',     // selector for all items you'll retrieve
    loading: {
        finishedMsg: 'No more pages to load.',
        img: 'http://i.imgur.com/6RMhx.gif'
      }
    },
    // trigger Masonry as a callback
    function( newElements ) {
      // hide new items while they are loading
      var $newElems = $( newElements ).css({ opacity: 0 });
      // ensure that images load before adding to masonry layout
      $newElems.imagesLoaded(function(){
        // show elems now they're ready
        $newElems.animate({ opacity: 1 });
        $container.masonry( 'appended', $newElems, true ); 
      });
    });
  
});

// $("#pieces_search input").keyup(function() {
//     $.get($("#pieces_search").attr("action"), $("#pieces_search").serialize(), null, "script");
//     return false;
//   });
// });


//=SMOOTH SCROLLING CODE
$(function() {
$('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') 
        || location.hostname == this.hostname) {

        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
           if (target.length) {
             $('html,body').animate({
                 scrollTop: target.offset().top
            }, 1000);
            return false;
        }
    }
});
});
