$(function() {
 $('img').on('click', function(event) {
   $('body').append($("<div class='modal-background'></div>" ));
   $('body').append($("<div class='modal-image-container'><img src='" + $(this).attr('src') + "'></div>"));
 });

 $('body').on('click', '.modal-background', function(event) {
   $('.modal-background').fadeOut(1000);
   $('.modal-image-container').fadeOut(1000);
 });
});
