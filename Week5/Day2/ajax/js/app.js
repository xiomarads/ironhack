$(document).ready(function (){
  $(".js-fetch-characters").on("click", fetchCharacters);
  $(".js-ackbar-form").on("submit", saveAckbar);
  $(".js-newcharacter-form").on("submit", addNewCharacter);
    // class from index.html       // define this function"fetchCharacters(inside or outside document ready)
});
  function addNewCharacter (NewCharEvent) {
    console.log("im here!")
    NewCharEvent.preventDefault();
    var nameInput = $(".js-character-name").val();
    $(".js-character-name").val();
    if (nameInput === "") {
        nameInput = "XWoman";
    }
    var occupationInput = $(".js-character-occupation").val();
    if (occupationInput === "") {
        occupationInput = "Flying Creature";
    }
    var weaponInput = $(".js-character-weapon").val();
    if (weaponInput === "") {
        weaponInput = "Broom";
    }
    var characterInfo = {
      name: nameInput,
      occupation: occupationInput,
      weapon: weaponInput,
    }
    $.ajax({
      type: "POST",
      url: "https://ironhack-characters.herokuapp.com/characters",
      data: characterInfo,
      success: NewCharacter,
      error: handleError,
    });
  }
  function NewCharacter (infoFromApi) {
   console.log("Save character success");
   console.log(infoFromApi);
}

  function saveAckbar (eventThing) {
    eventThing.preventDefault();

    var weaponInput = $(".js-ackbar-weapon").val();
      if (weaponInput === "") {
          weaponInput = "Memes";
}
  // Above defined weaponInput variable to imply that if the user does not submit a weapon then it automatically gives weapon "Memes" by default.
    var ackbarInfo = {
      name: "Admiral Ackbar",
      occupation: "Rebel Fleet Admiral",
      weapon: "Memes",
    };
    // console.log("hello");
    // above just test wiring first
    $.ajax({
      type: "POST",
      url: "https://ironhack-characters.herokuapp.com/characters",
      data: ackbarInfo,
      // above under "data", fifth key value that contains the name, weapon, id, occupation,etc, in the form a hash with key value pairs. Saved on a variable above "ackbarInfo" which we call on data after.
      success: showAckbar,
      error: handleError,
      // We will use handleError as defaul for errors
    });
  }
  // then go on to define the showAckbar function
  function showAckbar (infoFromApi) {
    console.log("Save Ackbar success")
    console.log(infoFromApi)
  }

  function fetchCharacters () {
    $.ajax({
      type: "GET",
      url: "https://ironhack-characters.herokuapp.com/characters",
      success: showCharacters,
      error: handleError,
    });
  }
  function showCharacters (x) {
  console.log("Fetch characters success");
  console.log(x);

  $(".js-character-list").empty();

  x.forEach(function (oneCharacter) {
    var characterItem = `
      <li>
        <h3> ${oneCharacter.name} </h3>
        <p> Weapon: ${oneCharacter.weapon} </p>
        <p> Occupation: ${oneCharacter.occupation} </p>
        <p> Debt: ${oneCharacter.debt} </p>
        <p> Id: ${oneCharacter.id} </p>
      </li>`;

    $(".js-character-list").append(characterItem);
  });
}


function handleError (errorThing) {
  console.log("Fetch characters error");
  console.log(errorThing.responseText);
}
