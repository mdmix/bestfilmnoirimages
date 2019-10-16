
$( document ).on('turbolinks:load', function() {
  console.log("It works on each visit!")
  $(".alert, .alert-info, .alert-warning" ).delay(3000).fadeOut(1000);
});
