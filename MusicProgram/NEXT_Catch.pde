void nextButtonArrayCatch() {
  if ( currentSong >= song.length-1 ) {
        currentSong -=currentSong;  //Beginning of Playlist
      } else {
        currentSong++; 
      } //End of CATCH
}//End nextButtonArrayCatch
//
void backButtonArrayCatch() {
  if ( currentSong == numberOfSongs - numberOfSongs ) {
    currentSong = numberOfSongs - 1;
  } else {
    currentSong--;
  } //End of CATCH?
}//End backButtonArrayCatch
//
