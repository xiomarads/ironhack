$(document).on("ready", function() {
$(".js-show-pokemon").on("click", function() {
  var pokemonUri = $(this).data("pokemon-uri");
  var pokemon = new PokemonApp.Pokemon(pokemonUri);
  pokemon.render();   //render=name we created

});
});

  PokemonApp.Pokemon = class {
    constructor (pokemonUri) {   //constructor=initializer in Ruby
      this.apiUrl = pokemonUri;
    }
    render () {
      console.log(`Rendering pokemon with URL: ${this.apiUrl}`);

    $.ajax({
      url:`/${this.apiUrl}`,
      success: PokemonApp.showPokemonModal,
      error: PokemonApp.handleError
    });
    }
  };

  PokemonApp.showPokemonModal = function (apiResult) {
    console.log("Pokemon API success!");
    console.log(apiResult);

    $(".js-pkmn-name").text(apiResult.name);
    $(".js-pkmn-number").text(`#${apiResult.pkdx_id}`);
    $(".js-pkmn-height").text(apiResult.height);
    $(".js-pkmn-weight").text(apiResult.weight);
    $(".js-pkmn-hp").text(apiResult.hp);
    $(".js-pkmn-attack").text(apiResult.attack);
    $(".js-pkmn-defense").text(apiResult.defense);
    $(".js-pkmn-sp_atk").text(apiResult.sp_atk);
    $(".js-pkmn-sp_def").text(apiResult.sp_def);
    $(".js-pkmn-speed").text(apiResult.speed);

    var eachType = ""

    console.log('---Pokemon Types---');
    var pokemonTypes = apiResult.types;

    pokemonTypes.forEach (function(type){
    eachType += type.name + " "
    });

    $(".js-pkmn-types").text(eachType);
    //----------------------------------------




    var pokemonDescriptions = (apiResult.descriptions);
    console.log(pokemonDescriptions)

    var descriptionsorted =
    pokemonDescriptions.sort(function(a, b) {
      if (a.name < b.name) {
        return -1;
      }
      else if (b.name < a.name) {
        return 1;
      }
    else {
      return 0;
    }
    });


    $(".js-pokemon-modal").modal("show");  //modal function is from bootstrap to show the modal(see bootstrap documentation).
  };

  PokemonApp.handleError = function (errorThang) {
    console.log("API error");
    console.log(errorThang.responseText);
  };
