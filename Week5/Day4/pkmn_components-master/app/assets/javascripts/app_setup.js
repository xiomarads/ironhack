$(document).on("ready", function() {
  PokemonApp.start();
});

window.PokemonApp = {};

//above: when defining functions, etc, we need to  protect it from other pieces of code that we may be using throughout our project by attaching  everything we want to proctect to this only global variable--PokemonApp. See below?

PokemonApp.start = function () {
  //3rd party setup code here
console.log("Pokemon App ONLINE!");
};
