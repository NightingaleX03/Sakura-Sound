//import artists from './artists.js';
//import songs from './songs.js';
const { artists, songs } = window;

window.onload = function () {
  var menu = document.getElementById("menu");
  var artists = window.artists;

  for (let i = 0; i < artists.length; i++) {
    var menuButton = document.createElement("button");
    menuButton.setAttribute("id", artists[i].id);
    menuButton.setAttribute("class", "btn");
    menuButton.type = "button";
    menuButton.innerHTML = artists[i].name;

    // set default showing as first artist
    showArtistDetails(artists[0]);
    createRowsSongs(artists[0].artistId, songs);

    // event listener to change as user picks different artists
    menuButton.addEventListener("click", () => {
      showArtistDetails(artists[i]);
      createRowsSongs(artists[i].artistId, songs);
    });

    menu.appendChild(menuButton);
  }

  menu.style.display = "flex";
  menu.style.justifyContent = "space-between";
};

// function to showArtist Details and calls on generate url list function
function showArtistDetails(artist) {
  var artistDetails = document.getElementById("selected-artist");
  artistDetails.innerHTML = `
        <h2>${artist.name}</h2>
        <div class="band-links">
            ${createURLList(artist.urls)}
            <style>
            .band-links {
                display:flex;
                gap:20px;
                font-size: 16px;
            }
            </style>
        </div>
    `;
}

// function to generate url list
function createURLList(urls) {
  let urlList = "";
  const icons = ["fa-spotify", "fa-instagram", "fa-desktop"];
  for (let i = 0; i < urls.length; i++) {
    urlList += `<i class="fa ${icons[i]}"></i>`;
    urlList += `<a href="${urls[i].url}" target="_blank">${urls[i].name}</a>`;
  }
  return urlList;
}

//  function to create contents of a single card
function createSongCard(song) {
  const card = document.createElement("div");
  card.classList.add("card");

  const spotifyLinks = document.createElement("a");
  spotifyLinks.href = song.spotifyUrl;

  const image = document.createElement("img");
  image.src = song.imageUrl;
  image.classList.add("card-image");
  image.style.width = "200px";
  image.style.height = "200px";

  spotifyLinks.appendChild(image);

  const title = document.createElement("h2");
  title.textContent = song.title;
  title.style.color = "#161f27";
  title.style.marginTop = "10px";
  title.style.fontSize = "1.2em";

  const year = document.createElement("p");
  year.textContent = "Year: " + song.year;
  year.style.color = "#161f27";
  year.style.fontStyle = "italic";

  const duration = document.createElement("time");
  duration.textContent = "Duration: " + formatDuration(song.duration);
  duration.style.color = "#FFFFFF";

  const youtubeIcon = document.createElement("i");
  youtubeIcon.classList.add("fa", "fa-youtube-play");
  youtubeIcon.style.color = "#161f27";

  const youtubeLink = document.createElement("a");
  youtubeLink.href = song.url;
  youtubeLink.style.marginRight = "35px";
  youtubeIcon.style.fontSize = "30px";
  youtubeLink.style.marginTop = "5px";

  youtubeLink.appendChild(youtubeIcon);
  // function to call on embedYoutubeVideo so it can pop out at the bottom
  // if the user clicks the same youtube button once it shows the youtube video
  // user clicks twice on the same youtube button it removes the youtube video
  // if user clicks a different youtube button in a different card it switches
  youtubeLink.addEventListener("click", (event) => {
    event.preventDefault();
    embedYouTubeVideo(song, "youtubeVideo");
  });

  const spotifyIcon = document.createElement("i");
  spotifyIcon.classList.add("fa", "fa-spotify");
  spotifyIcon.style.color = "#161f27";

  const spotifyLink = document.createElement("a");
  spotifyLink.href = song.spotifyUrl;
  spotifyLink.style.marginLeft = "35px";
  spotifyIcon.style.fontSize = "30px";
  spotifyLink.style.marginTop = "5px";

  spotifyLink.appendChild(spotifyIcon);

  const linksContainer = document.createElement("div");
  linksContainer.style.display = "flex";
  linksContainer.style.alignItems = "center";
  linksContainer.style.justifyContent = "space-between";
  linksContainer.style.marginTop = "5px";

  card.appendChild(spotifyLinks);
  card.appendChild(title);
  card.appendChild(year);
  card.appendChild(duration);
  linksContainer.appendChild(spotifyLink);
  linksContainer.appendChild(youtubeLink);
  card.appendChild(linksContainer);

  return card; // return card
}

// creates different rows for teh cards
function createRowsSongs(artistName, songs) {
  var artistSongDetails = document.getElementById("songs");

  artistSongDetails.innerHTML = "";

  const filteredSongsArray = songs.filter((song) => song.artistId === artistName && !song.explicit);

  filteredSongsArray.forEach((song, index) => {
    const card = createSongCard(song);

    artistSongDetails.appendChild(card);

    if ((index + 1) % 3 === 0) {
      card.style.marginRight = "0";
    }
  });
}

// the embed function mentioned above
// if the user clicks the same youtube button once it shows the youtube video
function embedYouTubeVideo(song, containerId) {
  const youtubeVideoBox = document.getElementById(containerId);

  // user clicks twice on the same youtube button it removes the youtube video
  // if user clicks a different youtube button in a different card it switches
  const existingVideo = youtubeVideoBox.querySelector("iframe");
  if (existingVideo) {
    const existingSongTitle = youtubeVideoBox.querySelector("h3");
    if (existingSongTitle && existingSongTitle.textContent === `Song: ${song.title}`) {
      youtubeVideoBox.innerHTML = "";
      return;
    }
  }

  const card = document.createElement("div");
  card.classList.add("card");

  const songTitle = document.createElement("h3");
  songTitle.textContent = `Song: ${song.title}`;
  songTitle.style.color = "#161f27";

  const spotifyLink = document.createElement("a");
  spotifyLink.href = song.spotifyUrl;
  spotifyLink.textContent = "Listen on Spotify";
  spotifyLink.style.color = "#000000";
  spotifyLink.style.fontStyle = "italic";

  const br = document.createElement("br");
  const br1 = document.createElement("br");

  // Created iframe for YouTube video
  const iframe = document.createElement("iframe");
  iframe.width = "560";
  iframe.height = "315";
  iframe.src = song.urlYoutube;
  iframe.title = "YouTube video player";
  iframe.allowFullscreen = true;
  iframe.allow =
    "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share";
  iframe.frameBorder = "0";
  iframe.referrerPolicy = "strict-origin-when-cross-origin";

  youtubeVideoBox.innerHTML = "";

  card.appendChild(songTitle);
  card.appendChild(spotifyLink);
  card.appendChild(br);
  card.appendChild(br1);
  card.appendChild(iframe);

  youtubeVideoBox.innerHTML = "";
  youtubeVideoBox.appendChild(card);
}

// duration function calculation
function formatDuration(duration) {
  var minutes = Math.floor(duration / 60);
  var seconds = duration % 60;
  return `${minutes}:${seconds.toString().padStart(2, "0")}`;
}

// For debugging, display all of our data in the console. You can remove this later.
console.log({ artists, songs }, "App Data");
