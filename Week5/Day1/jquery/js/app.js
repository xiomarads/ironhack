console.log("CONSOLE LOG");

$(document).ready(function (){

$(".js-pizza").on("click", function () {
  alert("PIZZA PIZZA");
});

$(".empanadas").click(function () {
  alert("EMPANADA TIME :)");
});

$("#cookies").on("click", cookieMessage);
});

function cookieMessage () {
alert("🍪 Have some cookies")
};
