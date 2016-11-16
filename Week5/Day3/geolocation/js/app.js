console.log("We're online!")

$(document).ready(function () {

  console.log("The page has finished loading;");
  promptForLocation();
  beginWatch();
});

// ------------------------------------------------------------

  function beginWatch () {
    if ("geolocation" in navigator) {
      navigator.geolocation.watchPosition(watchSuccess, watchError);
    }
  }

  function watchSuccess (locInfo) {
    console.log("Watch location:");
    console.log(locInfo);

    var watchItem = `
      <li>
      Latitude: ${locInfo.coords.latitude}
      <br>
      Longitude: ${locInfo.coords.longitude}
      </li>`;

  $(".js-watch-list").append(watchItem);
}

  function watchError (errInfo) {
    console.log("Watch error:");
    console.log(errInfo);
  }
// ------------------------------------------------------------

  function promptForLocation () {
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
  }



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
