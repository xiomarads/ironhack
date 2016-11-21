$(document).ready(function (){
$(".js-searchtrack-form").on("submit", searchTrack);
$('.btn-play').on('click', playSong);

});

// console.log("am I here?")


  function searchTrack (e) {
    e.preventDefault();
    console.log(theSearch);

    var searchInput = $('.js-track').val();
    var theSearch = searchInput.split(" ").join("+");

    $.ajax({
    type: "GET",
    url:`
    https://api.spotify.com/v1/search?type=track&query=${theSearch}`,
    success: showTrack,
    error: handleError
  });
}

    function showTrack(theTrack) {
    console.log("sweet pea")
    console.log (theTrack);

    var trackName = theTrack.tracks.items[0].name;
    var trackArtist = theTrack.tracks.items[0].artists[0].name;
    var trackAlbUrl = theTrack.tracks.items[0].album.images[0].url;
    var trackPrevUrl = theTrack.tracks.items[0].preview_url;

    $('.js-title').html(trackName);
    $('.js-author').html(trackArtist);
    $('.js-image').attr("src", trackAlbUrl);
    $('.js-audio').attr("src", trackPrevUrl);
}

    function handleError(errorrr) {
    console.log("Track search error");
}


    function playSong () {
      console.log("yo!")

    if
      ($('.btn-play').hasClass('playing')) {
      $('.js-audio').trigger('pause');
      $('.btn-play').removeClass('playing')

    }

    else {
      $('.js-audio').trigger('play');
      $('.btn-play').addClass('playing')
    };
    $('.js-audio').on('timeupdate', printTime);
  }

  // Define a function to print the player's current time
  function printTime () {
  var current = $('.js-audio').prop('currentTime');
  console.debug('Current time: ' + current);
  $('.js-current-time').prop('value', current);
  }
