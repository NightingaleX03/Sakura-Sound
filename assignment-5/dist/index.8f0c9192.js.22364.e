/**
 * WEB222 – Assignment 04
 *
 * I declare that this assignment is my own work in accordance with
 * Seneca Academic Policy. No part of this assignment has been
 * copied manually or electronically from any other source
 * (including web sites) or distributed to other students.
 *
 * Please update the following with your information:
 *
 *      Name:       Sarah Mathew
 *      Student ID: 140903238
 *      Date:       March 20 2024
 */ // All of our data is available on the global `window` object.
// Create local variables to work with it in this file.
const { artists, songs } = window;
window.onload = function() {
    var menu = document.getElementById("menu");
    var artists = window.artists;
    for(let i = 0; i < artists.length; i++){
        var menuButton = document.createElement("button");
        menuButton.setAttribute("id", artists[i].id);
        menuButton.setAttribute("class", "btn");
        menuButton.type = "button";
        menuButton.innerHTML = artists[i].name;
        // set default showign as first artist
        showArtistDetails(artists[0]);
        createRowsSongs(artists[0].artistId, songs);
        // event listener to change as user picks different artists
        menuButton.addEventListener("click", ()=>{
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
    const icons = [
        "fa-spotify",
        "fa-instagram",
        "fa-desktop"
    ];
    for(let i = 0; i < urls.length; i++){
        urlList += `<i class="fa ${icons[i]}"></i>`;
        urlList += `<a href="${urls[i].url}" target="_blank">${urls[i].name}</a>`;
    }
    return urlList;
}
function createRowsSongs(artistName, songs) {
    var artistSongDetails = document.getElementById("songs");
    artistSongDetails.innerHTML = "";
    const filteredSongsArray = songs.filter((song)=>song.artistId === artistName && !song.explicit);
    filteredSongsArray.forEach((song, index)=>{
        const card = document.createElement("div");
        card.classList.add("card");
        const image = document.createElement("img");
        image.src = song.image;
        image.style.width = "200px";
        image.style.height = "200px";
        image.style.maxWidth = "100%";
        image.style.borderRadius = "8px";
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
        const spotifyIcon = document.createElement("i");
        spotifyIcon.classList.add("fa", "fa-spotify");
        spotifyIcon.style.color = "#161f27";
        const youtubeLink = document.createElement("a");
        youtubeLink.href = song.url;
        youtubeLink.style.marginRight = "35px";
        youtubeIcon.style.fontSize = "30px";
        youtubeLink.style.marginTop = "5px";
        const spotifyLink = document.createElement("a");
        spotifyLink.href = song.spotifyUrl;
        spotifyLink.style.marginLeft = "35px";
        spotifyIcon.style.fontSize = "30px";
        spotifyLink.style.marginTop = "5px";
        const linksContainer = document.createElement("div");
        linksContainer.style.display = "flex";
        linksContainer.style.alignItems = "center";
        linksContainer.style.justifyContent = "space-between";
        linksContainer.style.marginTop = "5px";
        card.addEventListener("click", ()=>{
            console.log("Clicked song:", song.title);
        });
        youtubeLink.insertBefore(youtubeIcon, youtubeLink.firstChild);
        spotifyLink.insertBefore(spotifyIcon, spotifyLink.firstChild);
        card.appendChild(image);
        card.appendChild(title);
        card.appendChild(year);
        card.appendChild(duration);
        linksContainer.appendChild(spotifyLink);
        linksContainer.appendChild(youtubeLink);
        card.appendChild(linksContainer);
        artistSongDetails.appendChild(card);
        if ((index + 1) % 3 === 0) card.style.marginRight = "0";
    });
}
function formatDuration(duration) {
    var minutes = Math.floor(duration / 60);
    var seconds = duration % 60;
    return `${minutes}:${seconds.toString().padStart(2, "0")}`;
}
// For debugging, display all of our data in the console. You can remove this later.
console.log({
    artists,
    songs
}, "App Data");

//# sourceMappingURL=index.8f0c9192.js.map
