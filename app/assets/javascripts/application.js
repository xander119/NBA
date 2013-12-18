// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require_jquery
//= require_jquery-ui
//= require_jquery_ujs
//= require_tree .

$(function() {    $( "#menu" ).menu();  });
$(function() {    $( "#draggable" ).draggable();  });

$(function(){
	$('#datepicker').datepicker({
		dateFormat: 'dd-mm-yy',
		changeMonth: true,
		changeYear: true,
		minDate: "-20Y +12M", maxDate: "+10D"
	});
	
	$('input').focus(function(){
	});
	
	
});

$(function() {
    var $backToTopTxt = "Top", $backToTopEle = $('<div class="backToTop"></div>').appendTo($("body"))
        .text($backToTopTxt).attr("title", $backToTopTxt).click(function() {
            $("html, body").animate({ scrollTop: 0 }, 120);
    }), 
	$backToTopFun = function() {
        var st = $(document).scrollTop(), winheight = $(window).height();
        (st > 0)? $backToTopEle.show(): $backToTopEle.show();   
     
        if (!window.XMLHttpRequest) {
            $backToTopEle.css("TOP", st + winheight - 150);   
        }
    };
    $(window).bind("Scroll", $backToTopFun);
    $(function() { $backToTopFun(); });
})();
$(document).ready(function(){
   $("#tooltip").tooltip();
});;

$(function() {
      $('#box7').hover(function() {
            $(this).stop(true, true).animate({bottom: '-=700'}, 400);
      }, 
      function() {
            $(this).stop(true, true).animate({bottom: '+=700'}, 400);
      });
});



