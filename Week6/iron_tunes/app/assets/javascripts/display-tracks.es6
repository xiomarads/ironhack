$(document).on("turbolinks:load"), function(){
$(".js-display-tracks").on("click, fetchTrackList");
});


function fetchTracklist () {
  console.log("hello")
  // console.log above just checking if it's wired correctly

  $.ajax({
    type: "GET",
    url: "/api/tracks",
    success: displayTracks,
    error: handleError
  })
}

function displayTracks (response) {

}

function handleError (errorThing) {
  console.log("Error!");
  console.log(errorThing.responseText);
}
