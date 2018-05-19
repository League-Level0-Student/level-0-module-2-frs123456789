int dotX=100;
int dotY= 100;

void setup() {
    size(800, 200);
    
   
}

void draw() {
background(225,225,225);
 ellipse(dotX,dotY,100,100); 
 fill(0,0,0);
 rect(780,0,5,200);

    //3. make it a nice color
fill(000,136,136);
    //4. if the mouse is pressed...
if(mousePressed){

 dotX+=20;

 
 
}
if(dotX>=800){
  playSound();
  
}

    //5. ... change the X co-ordinate so that the dot moves to the right
    //2. Draw an ellipse of height and width 100. Make sure to use your variable for the X position.
    //6. Make your dot move really fast so that it can win the race 
        
    //7. Use this method to play a ding when your dot crosses the finish line. 
}

import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
    if (!soundPlayed) {
        Minim minim = new Minim(this);
        AudioSample sound = minim.loadSample("ding2.wav");
        sound.trigger();
        soundPlayed = true;
    }
}