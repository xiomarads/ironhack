var $color_button = $('.color-changer');

function changeColor(event){
  var color = $(event.target).data('color');
  $("body").css("background-color", color);
}
$color_button.on("click", changeColor);
