//Program header

PVector screenPos, screenSiz;
MarqueeText txt;//<==Declare the variable

void setup(){
  size(800, 600);
  strokeWeight(4);
  rectMode(CENTER);
  init();    
}

void init(){
  screenPos = new PVector(width/2, 150);
  screenSiz = new PVector(width*0.75, 250);
  
                              //message, speed, size
  txt = new MarqueeText("Testing 1, 2, 3!", -4, 28);//<==call the constructor
  //change text size?
  //txt.setSize(36);
  //change direction? 
  //txt.setSpeed(1);
  //change color?
  txt.setColor(color(150, 20, 50));////<==call functions to set values
  //change the left side
  //txt.setLMargin(200);
}


void draw(){
   background(200);
   
   //my "screen"
   fill(255, 100);
   rect(screenPos.x, screenPos.y, screenSiz.x, screenSiz.y);
   
   //the message
   txt.update();////<==call the update function  
}