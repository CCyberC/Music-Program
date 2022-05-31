//Libraries: uses Sketch / Import Library / Minimum
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "play List" variables holding extensions WAV, AIFF, AU, SND, & MP3
//
void setup() {
  //fullScreen(); //size(500, 600); Display Geometry is mandatory
  minim = new Minim(this); //this leads from data directory, loadFile should also load from project folder, like loadImage();
  song1 = minim.loadFile("DownLOaded/Stairway - Patrick Patrikios.mp3"); //able to pass absolute path, file name, and URL
  song1.loop(0); //Parameter is number of repeats
} //End setup
//
void draw() {
  
}//End draw
//
void keyPressed() {
  //song1.play(); //Parameter is milli-seconds from start of audio file to start fo playing
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN
