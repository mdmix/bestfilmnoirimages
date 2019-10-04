$(document).on('turbolinks:load', function () {

    function slider(){
        $('.overview-background').delay(7000).fadeOut(0, function() {
            $('.overview-background').css("background-image", "url(https://www.transparenttextures.com/patterns/arabesque.png)");
            $('.overview-background').fadeIn(0, function() {
                $('.overview-background').delay(0).fadeOut(0, function() {
                    $('.overview-background').css("background-image", "url(https://media.giphy.com/media/1mlonxGBYtudG/giphy.gif)");
            $('.overview-background').fadeIn(0, function() {
                $('.overview-background').delay(7000).fadeOut(0, function() {
                    $('.overview-background').css("background-image", "url(https://media.giphy.com/media/w4Kzsq7dfzDyM/giphy.gif)");
            $('.overview-background').fadeIn(0, function() {
                $('.overview-background').delay(7000).fadeOut(0, function() {
                    $('.overview-background').css("background-image", "url(https://media.giphy.com/media/TAFAUhoT7xOhi/giphy.gif)");
            $('.overview-background').fadeIn(0, slider);
              });
            });
          });
        });
      });
    });
  });

}
    slider();
});

// .css("background-image", "url(https://media.giphy.com/media/TAFAUhoT7xOhi/giphy.gif)");

// var imgSrcs =[
//     'url(http://api.thumbr.it/whitenoise-361x370.png?background=d0d3d400&noise=17202a&density=46&opacity=46)',
//     'url(http://api.thumbr.it/whitenoise-361x370.png?background=d0d3d4ff&noise=17202a&density=100&opacity=100)',
// ];
//
// $('html>body').delay(1000).fadeIn(1000, animateBackground());
//
// function animateBackground() {
//
//     window.setTimeout(function(){
//
//         var url = imgSrcs[imgSrcs.push(imgSrcs.shift()) - 1];
//
//         $('html>body').delay(4000).fadeOut(1000, function(){
//
//             $(this).css("background-image", "url(" + url + ")")
//
//         }).fadeIn(1000, animateBackground())
//
//     });
// }
