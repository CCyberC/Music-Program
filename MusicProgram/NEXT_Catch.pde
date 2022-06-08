void nextButtonArrayCatch() {
  if ( currentSong >= song.length-1 ) {
        currentSong -=currentSong;  //Beginning of Playlist
      } else {
        currentSong++; 
      } //End of CATCH
}//End nextButtonArrayCatch
