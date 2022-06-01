//Libraries: uses Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variables holding extensions WAV, AIFF, AU, SND, & MP3
void setup() {
  size(500, 600); //Remeber, Display Geoemtry is Mandatory
  minim = new Minim(this); //loads from data directory, loadFile should also laod from project folder, like loadImage()
  song1 = minim.loadFile("DownLoaded/Stairway - Patrick Patrikios.mp3"); //albe to pass absulute path, file name & extension, and URL
  /*
  //fullScreen(); //size(500, 600); Display Geometry is mandatory
  minim = new Minim(this); //this leads from data directory, loadFile should also load from project folder, like loadImage();
  song1 = minim.loadFile("DownLOaded/Stairway - Patrick Patrikios.mp3"); //able to pass absolute path, file name, and URL
  //song1.loop(1); //Parameter is number of repeats
  */
} //End setup
//
void draw() {
  if ( song1.isLooping() ) println("There are", song1.loopCount(), "loops left.");
  if ( song1.isPlaying() && !song1.isLooping() ) println("PlayOnce");
}//End draw
//
void keyPressed() {
  //Only press a number for this code below
  println(key);
  if ( key=='1' || key=='9') {
    //Note: "9" is assumed as massive. "Simulate Infinite"
    if ( key == '1' ) println("Looping 1 time"); // Simulating Once
    if ( key == '9' ) println("Looping 9 times"); //Simulating Infinity
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int num = int(keystr);
    song1.loop(num); 
  }//End LOOP
  if ( key>='2' && key!='9' ) println("I do not loop that high. Try again.");
  //
  /*
  //Only press a number for the code below
  String keyStr = String.valueOf(key);
  println("Number of Repeats is", keyStr);
  int num = int(keyStr);
  song1.loop(num);
  */
  //
  //Alternate Play Button
  if ( key=='p' || key=='P' ) song1.play();
  /* Previous Play Button and Loop Button
  int loopNum = 2; //Local Variables plays once and loops twice
  //song1.play(); //Parameter is milli-seconds from start of audio file to start fo playing
  if ( key=='l' || key=='L' ) song1.loop(loopNum);
  */
  //
  if ( key=='m' || key=='M' ) { //MUTE Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End MUTE
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN
