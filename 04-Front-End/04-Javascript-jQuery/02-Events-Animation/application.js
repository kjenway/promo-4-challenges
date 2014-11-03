
$(function() {
  $('#message').delay(500).slideDown(500, function(e) {
    $(this).on('click', function() {
      $(this).fadeOut(500);
    });
  });

  var fadeInFunc = function() {
      $('#message').fadeIn(500);
  }

  var fadeOutFunc = function() {
      $('#message').fadeOut(500);
  }

  $('#message-wrapper').hover(fadeInFunc, fadeOutFunc);
});
/*
  *
  * TODO: add your code here!
  *
*/
