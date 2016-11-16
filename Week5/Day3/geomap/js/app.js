console.log("are we on?")

$(document).ready(function () {
  console.log("working or not;");
  $(".js-searchposition").on("click", promptForLocation);

});
// ------------------------------------------------------------

function promptForLocation () {
  console.log("working")
    if ("geolocation" in navigator) {
      var optionsThing = {
        enableHighAccuracy: true,
        // timeout: 2000
      };
    navigator.geolocation.getCurrentPosition(showPositionInDom, showError, optionsThing);
    }

    else {
      console.log("Geolocation functions are not available");
      }
    }

  function showPositionInDom (locationInfo) {
    console.log("Got position successfully.");
    console.log(locationInfo);

    $(".js-lat").html(locationInfo.coords.latitude);
    $(".js-lng").html(locationInfo.coords.longitude);
    var positionOnMap = `
    <img src="https://maps.googleapis.com/maps/api/staticmap?zoom=&size=500x600&center=${locationInfo.coords.latitude},${locationInfo.coords.longitude}">
    `;
    $(".js-position-image").html(positionOnMap);
  }


//   var personposito = $(".js-artist-info").val();
//   console.log (artistname);
//   $.ajax({
//     type: "GET",
//     url: `https://api.spotify.com/v1/search?type=artist&query=${artistname}`,
//     success: showArtistInfo,
//     error: handleError,
//   });
// }


  function showError (errorInfo) {
    console.log("Error getting position.");
    console.log(errorInfo);

    var PositionErrorHtml = `
    <div class="alert alert-warning" role="alert">
      <strong> Sorry! </strong>
      There was an error retrieving your position.

    <button class="js-try-again"> Try again </button>
    <div>`;

    $("body").prepend(PositionErrorHtml);
    $(".js-try-again").on("click", function () {
    location.reload ();
  });
  }
