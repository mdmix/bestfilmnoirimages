
$( document ).on('turbolinks:load', function() {
  console.log("It works on each visit!")
  $(".alert, .alert-info" ).delay(3000).fadeOut(1000);
});
