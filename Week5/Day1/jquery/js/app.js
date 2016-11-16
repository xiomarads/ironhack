console.log("CONSOLE LOG");

$(document).ready(function (){

$(".js-pizza").on("click", function () {
  $(".js-small").append("PIZZA🍕🍕🍕 PIZZA");
});

$(".empanadas").click(function () {
  $(".js-heading").append(`
    <span> EMPANADA TIME 😍 </span>
    <a href="#"> SEE MORE EMPANADAS </a>`
);
});

$("#cookies").on("click", cookieMessage);
$("#ice-cream").on("click", iceCreamMessage);
$(".js-change-unicorn").on("click", changeUnicorn);
$(".js-button-color").on("click", changeButtonColor);
$(".chocolate").on("click", fadeEverything)
$(".rainbow").on("click", turnMulticolor)

});

function changeButtonColor() {
  $("button").addClass("btn");

  if ( $("button").hasClass("btn-info")) {
    $("button").removeClass("btn-success");
    $("button").addClass("btn-info");
  }
  else if ( $("button").hasClass("btn-info")) {
    $("button").removeClass("btn-info");
    $("button").addClass("btn-warning");
  }

  else {
    $("button").addClass("btn-success");
  }
}

var unicornCount = 2;

function changeUnicorn () {
  unicornCount +=1;

  if (unicornCount > 3) {
    unicornCount = 1;
  }

  $(".js-unicorn-image").attr("src", `images/unicorn${unicornCount}.gif`);
}

function iceCreamMessage () {
  var content =
  "<i> Ice Cream </i>";

  $(".js-jq-paragraph").html(content);
}

function cookieMessage () {
    if ($ (".js-cookie-div").length > 0) {
      $(".js-cookie-div").remove();
    }
else {

  var cookieContent =
  `<div class = "popup js-cookie-div">
      <h2> Have some cookies. </h2>

        <p> cookies are good for the soul. Here's why:
        <ul>

        <li> They contain yummy stuff. </li>
        <li> They've got empty calories </li>
        <li> They won't ever lie to you. </li>
        </ul>
      </div>`;
  $("body").append(cookieContent);
}
}

  function fadeEverything () {
    $(".container").fadeToggle();

  }
