import java.util.Random;

void setup(){
  size(500,500);
}

int level=0;
int passwordLength;
void draw(){
  if(level==0){
    background(0);
    fill(255);
    textAlign(CENTER,CENTER);
    textSize(27*width*height/250000);
    text("Select Password Length",width/2,0.06*height+0.05*height);
    Button(width/2-0.2*width,0.2*height+0.05*height,0.4*width,0.1*height,"8");
    Button(width/2-0.2*width,0.2*height+0.1*height+0.1*height,0.4*width,0.1*height,"12");
    Button(width/2-0.2*width,0.2*height+0.1*height+0.1*height+0.1*height+0.05*height,0.4*width,0.1*height,"16");
    Button(width/2-0.2*width,0.2*height+0.1*height+0.1*height+0.1*height+0.1*height+0.1*height,0.4*width,0.1*height,"20");
    if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2-0.2*width+0.4*width&&mouseY>=0.2*height+0.05*height&&mouseY<=0.2*height+0.05*height+0.1*height){
      delay(100);
      passwordLength=8;
      level=1;
    }
    if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2-0.2*width+0.4*width&&mouseY>=0.2*height+0.1*height+0.1*height&&mouseY<=0.2*height+0.1*height+0.1*height+0.1*height){
      delay(100);
      passwordLength=12;
      level=1;
    }
    if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2-0.2*width+0.4*width&&mouseY>=0.2*height+0.1*height+0.1*height+0.1*height+0.05*height&&mouseY<=0.2*height+0.1*height+0.1*height+0.1*height+0.05*height+0.1*height){
      delay(100);
      passwordLength=16;
      level=1;
    }
    if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2-0.2*width+0.4*width&&mouseY>=0.2*height+0.1*height+0.1*height+0.1*height+0.1*height+0.1*height&&mouseY<=0.2*height+0.1*height+0.1*height+0.1*height+0.1*height+0.1*height+0.1*height){
      delay(100);
      passwordLength=20;
      level=1;
    }
    
  }
  else if(level==1){
    background(0);
    fill(0);
    stroke(0,255,255);
    ellipse(width/2,height/2,width,height);
    textAlign(CENTER,CENTER);
    fill(255);
    textSize(27*width*height/250000);
    text(password(passwordLength),width/2,height/2);
    Button(width/2-0.2*width,height/2+0.13*height,0.4*width,0.1*height,"Generate");
    if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2-0.2*width+0.4*width&&mouseY>=height/2+0.13*height&&mouseY<=height/2+0.13*height+0.1*height){
      level=2;
    }
    fill(255);
    text("Main Menu",width/2,0.06*height+0.15*height);
    if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2-0.2*width+0.4*width&&mouseY>=0.04*height+0.15*height&&mouseY<=0.06*height+0.15*height+0.1*height){
      level=0;
    }
  }
  else if(level==2){
    fill(0);
    stroke(0);
    rect(width/2-0.2*width,height/2+0.13*height,0.4*width,0.1*height);
    if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2-0.2*width+0.4*width&&mouseY>=0.04*height+0.15*height&&mouseY<=0.04*height+0.15*height+0.1*height){
      level=0;
    }
  }
  

}

void Button(float x,float y,float sizeX,float sizeY,String text){
  fill(0,255,255);
  rect(x,y,sizeX,sizeY);
  fill(0);
  textAlign(CENTER,CENTER);
  textSize(27*width*height/250000);
  text(text,x+0.5*sizeX,y+0.5*sizeY);
}

String password(int l){
        String Generated = "";
        String Alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*-,.<>1234567890!@#$%^&*-,.<>";
        String[] generate = Alphabet.split("");
        
        Random rand = new Random();
        for(int i=0;i<l;i++){
            int n = rand.nextInt(generate.length);
            Generated = Generated + generate[n];
        }
        return Generated;
    }
