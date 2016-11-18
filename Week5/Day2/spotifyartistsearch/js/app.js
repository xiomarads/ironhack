$(document).ready(function (){    //this function affects the objects that are present once the page has finished loading.
// console.log ("Am I here?")
$(".js-searchartist-form").on("submit", searchArtist);
});

// _________________________________________________________

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

// _________________________________________________________

function showArtistInfo (fetch) {
  console.log("Fetch artist success");   //console log to discover what structure this is.
  console.log(fetch);
  $(".js-artist-list").empty();
  var artistArray = fetch.artists.items;

  artistArray.forEach(function (artists) {    //loop to go over each object

    if (artists.images.length === 0) {
    var artistsResults = `
    <h3> ${artists.name} </h3>
    <p>
    <br><img class="images" src="https://cdn.pixabay.com/photo/2015/04/22/12/24/dog-734689_960_720.jpg" data-id="${artists.id}" /></p>`;
    //data- data attributes html tag to be used in Javascript code
  }
    else {
    var artistsResults =  `
        <h3> ${artists.name} </h3>
        <p>
        <br><img class="images" src="${artists.images[0].url}" data-id="${artists.id}"/></p>`;
      }
    $(".js-artist-list").append(artistsResults);
  });

        $(".images").on("click", searchAlbum);    //Here I can select the albums because after the for each loop the buttons are on the page. Not before!!!
}

// _________________________________________________________

function handleError(errorrr) {
  console.log("Artist search error");
  console.log(errorrr.responseText);
}

// _________________________________________________________

function searchAlbum (aSearch) {
  aSearch.preventDefault();
  var artistId = $(this).data("id")
  console.log($(this).data("id"));
	// /v1/artists/{id}/albums

  $.ajax({
    type: "GET",
    url: `https://api.spotify.com//v1/artists/${artistId}/albums`,
    success: showAlbumInfo,
    error: handleError,
  });

}
// _________________________________________________________


function showAlbumInfo(response) {
	albumArray = response.items;
	var albumHTML = '';
	albumArray.forEach(function(album) {
		albumHTML += `<li><h2>${album.name}</h2>`;
		albumHTML += `<button class="js-tracks-search" data-album-id=${album.id}>See album's tracks</button>`;
	});
	$('.js-album-list').html(albumHTML);
	$(".js-album-modal").modal("show");
	$(".js-tracks-search").on("click",tracksSearch)
};
