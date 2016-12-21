//Example and reference codes from: Learning Processing 2nd Edition, Minim, OpenCV for Processing

import processing.video.*;
import gab.opencv.*;
import java.awt.*;
import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioInput in;
AudioPlayer song;
AudioPlayer clapping;
AudioPlayer hello;

ArrayList<Faces> faceList;
Rectangle[] faces;
int faceCount = 0;
int scl = 2;

PImage prevFrame;
float threshold = 50;

Rectangle r;     
float rotAngle0 = 0;
float rotAngle1 = 90;
   
PImage background;

Capture video;
OpenCV opencv;


void setup() {
  size(960, 640);  
  background = loadImage("backgroundDots.png");

  frameRate(24);

  minim = new Minim(this);
  in = minim.getLineIn();
  song = minim.loadFile("Chet Faker - No Diggity.mp3");
  clapping = minim.loadFile("clapping.mp3");
  hello = minim.loadFile("hello.mp3");
  
  video = new Capture(this, width/scl, height/scl);
  opencv = new OpenCV(this, width/scl, height/scl);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  prevFrame = createImage(video.width, video.height, RGB);
  faceList = new ArrayList<Faces>();
  video.start();  
  song.play();
}


void draw() {      
  scale(2);
  opencv.loadImage(video);
  detectFaces();  
   
  int widthStep = 5;
  int heightStep = 5;
  noStroke();
  background(0);
  
  for (int i = 0; i < faces.length; i++) {
    background(0, 0, map(faces[i].x*1.5, 0, width, 0, 255));
  }
   
  for (int i = 0; i < in.bufferSize() - 1; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) { 
      float ran = random(1, 4);
      color c = background.get(i, j);  
      fill(c, random(50, 200));
      ellipse(i*0.6-20, j*0.6-20, ran, ran);
    }
  }

  drawInputAnalyzer();
  
  for (Faces f : faceList) {    
    ellipseMode(CENTER);
    f.display();
  } 
  
  stroke(255, 200, 170);
  fill(255, 150, 140);
  rect(0, 560, 960, 540);
}


void captureEvent(Capture video) {
  prevFrame.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height);
  prevFrame.updatePixels();
  video.read();
}


void detectFaces() {
  faces = opencv.detect();

  if (faceList.isEmpty() || faceList.size() <=1) {      
    for (int i = 0; i < faces.length; i++) {
      println("+++ New face detected with ID: " + faceCount);
      faceList.add(new Faces(faceCount, -1*faces[i].x,faces[i].y,faces[i].width,faces[i].height));
      faceCount++;    
    } 
  } else if (faceList.size() <= faces.length) {
    boolean[] used = new boolean[faces.length];
    for (Faces f : faceList) {
       float record = 50000;
       int index = -1;
       for (int i = 0; i < faces.length; i++) {
         float d = dist(faces[i].x,faces[i].y,f.r.x,f.r.y);
         if (d < record && !used[i]) {
           record = d;
           index = i;
         } 
       }
       used[index] = true;
       f.update(faces[index]);
    }
    for (int i = 0; i < faces.length; i++) {
      if (!used[i]) {
        println("+++ New face detected with ID: " + faceCount);
        faceList.add(new Faces(faceCount, faces[i].x,faces[i].y,faces[i].width,faces[i].height));
        faceCount++;
      }
    }

    } else {
      for (Faces f : faceList) {
        f.appear = true;
      } 
      for (int i = 0; i < faces.length; i++) {
       float record = 50000;
       int index = -1;
       for (int j = 0; j < faceList.size(); j++) {
         Faces f = faceList.get(j);
         float d = dist(faces[i].x,faces[i].y,f.r.x,f.r.y);
         if (d < record && f.appear) {
           record = d;
           index = j;
         } 
       }
       Faces f = faceList.get(index);
       f.appear = false;
       f.update(faces[i]);
    } 
    for (Faces f : faceList) {
      if (f.appear) {
        hello.play();
        clapping.play();
        f.countDown();
        if (f.end()) {
          f.remove = true;
        } 
      }
    } 
  }
  
  for (int i = faceList.size()-1; i >= 0; i--) {
    Faces f = faceList.get(i);
    if (f.remove) {
      faceList.remove(i);
    } 
  }  
}


void drawInputAnalyzer() {  
  for(int i = 0; i < in.bufferSize() - 1; i += 30) {
    pushMatrix();
      translate(0, 200);
      strokeWeight(1);
      stroke(255, 200, 170);
      fill(255, 150, 140);
      rectMode(CORNER);
      rect(i + 14, in.right.get( i + 1) * 300, 2, 500 + in.left.get( i + 1) * 50);      
      ellipse(i + 15, in.right.get( i + 1 ) * 300, 30, 12 + in.left.get( i + 1 ) * 30);
      ellipse(i + 15, in.right.get( i + 1 ) * 300, 12, 30 + in.left.get( i + 1 ) * 30);
      fill(255, 150, 140);
      ellipse(i + 15, in.right.get( i + 1 ) * 300, 20, 20 + in.left.get( i + 1 ) * 30);   
      fill(0, 0, 255);
      rectMode(CENTER);   
      rect(i + 10, in.right.get( i + 1 ) * 300, 3, 5 + in.left.get( i + 1 )* 30, 20, 20, 0, 0);
      rect(i + 20, in.right.get( i + 1 ) * 300, 3, 5 + in.left.get( i + 1 )* 30, 20, 20, 0, 0);
    pushMatrix();
      translate(0, 6);
      fill(255);
      rect(i + 15, in.right.get( i + 1 ) * 300, 7, 5 + in.left.get( i + 1 )* 30, 0, 0, 20, 20);      
    popMatrix();
    popMatrix();
  }
}


void keyPressed() {
  if (song.isPlaying() ) {
    song.pause(); 
  } else if ( song.position() == song.length() ) {
    song.rewind();
    song.play();
  } else {
    song.play();
  }
}