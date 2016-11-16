$(document).ready(function (){
// console.log ("Am I here?")
$(".js-searchartist-form").on("submit", searchArtist);

});

function searchArtist(e) {
  e.preventDefault();
  var artistname = $(".js-artist-info").val();
  console.log (artistname);
  $.ajax({
    type: "GET",
    url: `https://api.spotify.com/v1/search?type=artist&query=${artistname}`,
    success: showArtistInfo,
    error: handleError,
  });
}

function showArtistInfo (fetch) {
  console.log("Fetch artist success");
  console.log(fetch);
  var artistArray = fetch.artists.items;
  artistArray.forEach(function (artists) {
    
    var artistsResults =  `
        <h3> ${artists.name} </h3>
        <p>
        <br><img src="${artists.images[0].url}" /></p>`;

    $(".js-artist-list").append(artistsResults);
  });
}

function handleError(errorrr) {
  console.log("Artist search error");
  console.log(errorrr.responseText);
}
