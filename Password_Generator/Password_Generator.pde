import java.util.Arrays;
import java.util.Random;
import java.awt.*;
import java.awt.event.*;
import java.awt.datatransfer.*;
import javax.swing.*;
import java.io.*;

//added in v1.11========
import java.util.List;
//======================

//import android.annotation.SuppressLint;
//import android.content.ClipData;
//import android.content.ClipboardManager;
//import android.content.ContentResolver;
//import android.content.Context;
//import android.content.Intent;
//import android.content.res.AssetFileDescriptor;
//import android.net.Uri;
//import android.util.Log;

String Output = new String();

void setup(){
  //Android=============
  //fullScreen();
  //PC==================
  size(500,500);
}

    int L;
    int level=0;
    int textsize;
    int switch0=0,switch1=0,switch2=0,switch3=0;
    int toggle=0;
    
    //Added in v1.3==============
    int Mswitch0=0,Mswitch1=0,Mswitch2=0,Mswitch3=0;
    int[] SwitchesUp=new int[26];
    String[] UpLetters={"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
    int sum0=0;
    int[] SwitchesUp1=new int[26];
    String[] DwnLetters={"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"};
    int sum1=0;
    int[] SwitchesUp2=new int[10];
    String[] Nmbrs={"0","1","2","3","4","5","6","7","8","9"};
    int sum2=0;
    int[] SwitchesUp3=new int[18];
    String[] Smbls={"!","@","#","$","%","^","&","*","(",")","-","+","=","?",">","<","[","]"};
    int sum3=0;
    
    //Added in v1.4=================
    
    int etcSwitch=0;
    
    //==============================
    
    
    //Added in v1.8=================
    
    int ButtonSwitch=0;
    
    //==============================
    
    //Added in v1.9=================
    
    int privacySwitch=0;
    
    String Asterisk;
    
    //==============================
    
    //added in v1.10================================
    int menuSwitch=0;
    int menuOpened=0;
    //==============================================
    
    //added in v1.11================================
    int[] cstm;
    int cstmSwitch=0;
    List <Integer> custm = new ArrayList();
    //==============================================
    
      void draw(){
    
        //Added in v1.10====================
        if(etcSwitch==1&&privacySwitch==1){
          privacySwitch=0;
          etcSwitch=0;
        }
        //==================================
        
        //added in v1.11====================
        troubleshoot();
        //==================================
        
        //(*3 for Android, *27 for PC)
        textsize = width*height*27/250000;
          if(level==0){
          background(0);
          
          //added in v1.11=====================================================================
          if(ButtonSwitch==0)
          Button(0.14*width+0.3*width-0.24*width,height-0.12*height,0.24*width+0.24*width,0.08*height,"Custom Length");
          else
          rButton(0.14*width+0.3*width-0.24*width,height-0.12*height,0.24*width+0.24*width,0.08*height,"Custom Length");
          
          //Added in v1.11====
          if(menuOpened==0){
          if(mousePressed&&mouseX>=0.14*width+0.3*width-0.24*width&&mouseX<=0.14*width+0.3*width-0.24*width+0.24*width+0.24*width&&mouseY>=height-0.12*height&&mouseY<=height-0.12*height+0.08*height)
          level=10;
          delay(100);
          }
          custm.clear();
          
          //===================================================================================
          
          //edited in v1.8=====================================================================
          if(ButtonSwitch==0)
          Button(width-0.28*width,height-0.12*height,0.24*width,0.08*height,"Settings");
          else
          rButton(width-0.28*width,height-0.12*height,0.24*width,0.08*height,"Settings");
          //===================================================================================
          
          //edited in v1.10====================================================================
          if(menuOpened==0){
          if(mousePressed&&mouseX>=width-0.28*width&&mouseX<=width-0.28*width+0.24*width&&mouseY>=height-0.12*height&&mouseY<=height-0.12*height+0.08*height)
          level=4;
          }
          //===================================================================================
          
          textSize(textsize);
          stroke(0);
          fill(246,250,58);
          textAlign(CENTER,CENTER);
          text("Please Choose",width/2,height/2-0.4*height);
          text("Password Length",width/2,height/2-0.34*height);
          fill(246,250,0);
          
          //edited in v1.8====================================================
          if(ButtonSwitch==0){
          rect(width/2-0.2*width,height/2-0.24*height,0.4*width,0.1*height);
          rect(width/2-0.2*width,height/2-0.1*height,0.4*width,0.1*height);
          rect(width/2-0.2*width,height/2+0.04*height,0.4*width,0.1*height);
          rect(width/2-0.2*width,height/2+0.18*height,0.4*width,0.1*height);
          }
          else{
          rButton(width/2-0.2*width,height/2-0.24*height,0.4*width,0.1*height,"");
          rButton(width/2-0.2*width,height/2-0.1*height,0.4*width,0.1*height,"");
          rButton(width/2-0.2*width,height/2+0.04*height,0.4*width,0.1*height,"");
          rButton(width/2-0.2*width,height/2+0.18*height,0.4*width,0.1*height,"");
          }
          //===================================================================
          
          fill(0);
          textAlign(CENTER,CENTER);
          text("8",width/2,height/2-0.19*height);
          text("12",width/2,height/2-0.05*height);
          text("16",width/2,height/2+0.09*height);
          text("20",width/2,height/2+0.23*height);
                
          //edited in v1.10=====================================================
          if(menuOpened!=1){
          if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2+0.2*width&&mouseY>=height/2-0.24*height&&mouseY<=height/2-0.14*height){
            this.L=8;
            level = level+1;
            //Added in v1.9
            Asterisk ="********";
          }
          
          if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2+0.2*width&&mouseY>=height/2-0.1*height&&mouseY<=height/2){
            this.L=12;
            level = level+1;
            //Added in v1.9
            Asterisk ="************";
          }
          
          if(mousePressed&&mouseX>=width/2-0.02*width&&mouseX<=width/2+0.02*width&&mouseY>=height/2+0.04*height&&mouseY<=height/2+0.14*height){
            this.L=16;
            level = level+1;
            //Added in v1.9
            Asterisk ="****************";
          }
          
          if(mousePressed&&mouseX>=width/2-0.02*width&&mouseX<=width/2+0.02*width&&mouseY>=height/2+0.18*height&&mouseY<=height/2+0.28*height){
            this.L=20;
            level = level+1;
            //Added in v1.9
            Asterisk ="********************";
          }
          }
          //===============================================================================
          
          //added in v1.10=================================================================
            menu();
          //===============================================================================
          
          }
          
          else if(level==1){
            
            Main();
          //Graphics===============================================
          background(0);
          stroke(246,250,58);
          fill(0);
          ellipse(width/2,height/2,width,height);
          textSize(textsize);
          stroke(0);
          fill(246,250,58);
          textAlign(CENTER,CENTER);
          text("Your Generated Password is ",width/2,height/2-0.05*height);
          fill(255,0,0);
          
          //Added in v1.9================================
          if(privacySwitch==0)
          text(Output,width/2,height/2+0.05*height);
          else 
          text(Asterisk,width/2,height/2+0.05*height);
          //=============================================
          fill(246,250,0);
          
          //edited in v1.8=====================================================
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2+0.12*height,0.4*width,0.1*height);
          else
          rButton(width/2-0.2*width,height/2+0.12*height,0.4*width,0.1*height,"");
          //===================================================================
          
          fill(0);
          text("Generate",width/2,height/2+0.164*height);
          
          fill(255);
          text("Main Menu",width/2,height/2-0.36*height);
          
          //edited in v1.10======================================================
          if(menuOpened==0){
          if(mousePressed&&mouseX>=width/2-0.18*width&&mouseX<=width/2+0.18*width&&mouseY>=height/2-0.42*height&&mouseY<=height/2-0.3*height)
            level = 0; 
          
          //Move on to Copied / Generate New state==============================================================
          if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2+0.2*width&&mouseY>=height/2+0.12*height&&mouseY<=height/2+0.22*height){
          level = level+1;
          
          //Copy to Clipboard PC===============================
          
          //Added in v1.4======================================
          
          if(etcSwitch==0){
            
          String board = Output;
          StringSelection data = new StringSelection(board);
          Clipboard clipboard = 
          Toolkit.getDefaultToolkit().getSystemClipboard();
          clipboard.setContents(data, data);
          
          }
          
          //====================================================
         
         //Android==============================================
          
          }
          }
          //====================================================
          
          //added in v1.10=================================================================
            menu();
          //===============================================================================
          
       }
       
       else if(level==4){
          background(0);
          
          //edited in v1.8============================================================
          if(ButtonSwitch==0)
          Button(0.14*width,height-0.12*height,0.24*width,0.08*height,"Menu");
          else
          rButton(0.14*width,height-0.12*height,0.24*width,0.08*height,"Menu");
          //==========================================================================
          
          //Added in v1.11====
          if(menuOpened==0){
          if(mousePressed&&mouseX>=0.14*width&&mouseX<=0.14*width+0.24*width&&mouseY>=height-0.12*height&&mouseY<=height-0.12*height+0.08*height)
          level=0;
          }
          textSize(textsize);
          
          textAlign(CENTER,CENTER);
          
   /**edited in 1.3 */     if(Mswitch0==1&&Mswitch1==1&Mswitch2==1&&Mswitch3==1){
        switch0=0;
        Mswitch0=0;
        switch1=0;
        Mswitch1=0;
        switch2=0;
        Mswitch2=0;
        switch3=0;
        Mswitch3=0;
        toggle=1;
        }
        
        if(toggle==1){
        fill(246,250,58);
        textAlign(CENTER,CENTER);
        text("Cannot Untoggle",width/2,height/2-0.4*height);
        text("All Types",width/2,height/2-0.34*height);
        delay(000);
        
        }
          if(mousePressed&&toggle==1){
            toggle=0;
          }
          
          //Uppercase
          
          if(switch0==0){
          fill(12,242,21);
          
          //edited in v1.8===================================================
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2-0.24*height,0.4*width,0.1*height);
          else
          ButtonOn2(width/2-0.2*width,height/2-0.24*height,0.4*width,0.1*height,"");
          //=================================================================
          
          fill(0);
          text("Uppercase",width/2,height/2-0.19*height);
          }
          
          else{
          fill(255,0,21);
          
          //edited in v1.8====================================================
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2-0.24*height,0.4*width,0.1*height);
          else
          ButtonOff2(width/2-0.2*width,height/2-0.24*height,0.4*width,0.1*height,"");
          //==================================================================
          
          fill(0);
          text("Uppercase",width/2,height/2-0.19*height);  
          }
          
          //Added in v1.4==============================================================================
          
          //edited in v1.8==============================================================
          if(ButtonSwitch==0)
          Button(0.14*width+0.3*width,height-0.12*height,0.24*width,0.08*height,"ETC");
          else
          rButton(0.14*width+0.3*width,height-0.12*height,0.24*width,0.08*height,"ETC");
          //=============================================================================
          
          //Added in v1.11====
          if(menuOpened==0){
          if(mousePressed&&mouseX>=0.14*width+0.3*width&&mouseX<=0.14*width+0.3*width+0.24*width&&mouseY>=height-0.12*height&&mouseY<=height-0.12*height+0.08*height)
          level=9;
          }
          
          //===========================================================================================
          
          
          //Added in v1.3==============================================================================
          
          if(Mswitch0==0){
            //edited in v1.8==============================================================================
            if(ButtonSwitch==0)
          Button(width/2-0.2*width+0.4*width+0.04*width,height/2-0.24*height,0.1*width,0.1*height,"...");
          else
          rButton(width/2-0.2*width+0.4*width+0.04*width,height/2-0.24*height,0.1*width,0.1*height,"...");
          
          //Added in v1.11====
          if(menuOpened==0){
           if(mousePressed&&mouseX>=width/2-0.2*width+0.4*width+0.04*width&&mouseX<=width/2-0.2*width+0.4*width+0.04*width+0.1*width&&mouseY>=height/2-0.24*height&&mouseY<=height/2-0.14*height){
          level=5;
           }
          }
          }
           
          if(Mswitch1==0){ 
            //edited in v1.8===============================================================================
            if(ButtonSwitch==0)
           Button(width/2-0.2*width+0.4*width+0.04*width,height/2-0.24*height+0.1*height+0.04*height,0.1*width,0.1*height,"...");
           else
           rButton(width/2-0.2*width+0.4*width+0.04*width,height/2-0.24*height+0.1*height+0.04*height,0.1*width,0.1*height,"...");
           //Added in v1.11====
          if(menuOpened==0){
           if(mousePressed&&mouseX>=width/2-0.2*width+0.4*width+0.04*width&&mouseX<=width/2-0.2*width+0.4*width+0.04*width+0.1*width&&mouseY>=height/2-0.24*height+0.1*height+0.04*height&&mouseY<=height/2-0.24*height+0.1*height+0.04*height+0.10*height){
          level=6;
           }
          }
          }
          
          if(Mswitch2==0){ 
            //edited in v1.8=================================================================================
            if(ButtonSwitch==0)
           Button(width/2-0.2*width+0.4*width+0.04*width,height/2-0.24*height+0.1*height+0.04*height+0.1*height+0.04*height,0.1*width,0.1*height,"...");
           else
           rButton(width/2-0.2*width+0.4*width+0.04*width,height/2-0.24*height+0.1*height+0.04*height+0.1*height+0.04*height,0.1*width,0.1*height,"...");
           //Added in v1.11====
          if(menuOpened==0){
           if(mousePressed&&mouseX>=width/2-0.2*width+0.4*width+0.04*width&&mouseX<=width/2-0.2*width+0.4*width+0.04*width+0.1*width&&mouseY>=height/2-0.24*height+0.1*height+0.04*height+0.1*height+0.04*height&&mouseY<=height/2-0.24*height+0.1*height+0.04*height+0.10*height+0.1*height+0.04*height+0.1*height){
          level=7;
           }
          }
          }
          
           if(Mswitch3==0){ 
             //edited in v1.8==================================================================================
             if(ButtonSwitch==0)
           Button(width/2-0.2*width+0.4*width+0.04*width,height/2-0.24*height+0.1*height+0.04*height+0.1*height+0.04*height+0.1*height+0.04*height,0.1*width,0.1*height,"...");
           else
           rButton(width/2-0.2*width+0.4*width+0.04*width,height/2-0.24*height+0.1*height+0.04*height+0.1*height+0.04*height+0.1*height+0.04*height,0.1*width,0.1*height,"...");
           //Added in v1.11====
          if(menuOpened==0){
           if(mousePressed&&mouseX>=width/2-0.2*width+0.4*width+0.04*width&&mouseX<=width/2-0.2*width+0.4*width+0.04*width+0.1*width&&mouseY>=height/2-0.24*height+0.1*height+0.04*height+0.1*height+0.04*height+0.1*height+0.04*height&&mouseY<=height/2-0.24*height+0.1*height+0.04*height+0.10*height+0.1*height+0.04*height+0.1*height+0.1*height+0.04*height){
          level=8;
           }
          }
          }
           
         //=============================================================================================
         
          //Added in v1.11====
          if(menuOpened==0){
          if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2+0.2*width&&mouseY>=height/2-0.24*height&&mouseY<=height/2-0.14*height&&switch0==0){
          switch0=1;
 /**Added in 1.3*/         Mswitch0=1;
          delay(100);
          }
          else if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2+0.2*width&&mouseY>=height/2-0.24*height&&mouseY<=height/2-0.14*height&&switch0==1){
          switch0=0;
 /**Added in 1.3*/         Mswitch0=0;
          sum0=0;
          for(int a=0;a<26;a++){
            SwitchesUp[a]=0;
          }
          //=============================
          delay(100);
        }
          }
          
          
          //Lowercase
          if(switch1==0){
          fill(12,242,21);
          //edited in v1.8=================================================
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2-0.1*height,0.4*width,0.1*height);
          else 
          ButtonOn2(width/2-0.2*width,height/2-0.1*height,0.4*width,0.1*height,"");
          fill(0);
          text("Lowercase",width/2,height/2-0.05*height);
          }
          else{
          fill(255,0,21);
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2-0.1*height,0.4*width,0.1*height);
          else
          ButtonOff2(width/2-0.2*width,height/2-0.1*height,0.4*width,0.1*height,"");
          fill(0);
          text("Lowercase",width/2,height/2-0.05*height);
          }
          
          //Added in v1.11====
          if(menuOpened==0){
          if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2+0.2*width&&mouseY>=height/2-0.1*height&&mouseY<=height/2-0.1*height+0.1*height&&switch1==0){
          switch1=1;
  /**Added in 1.3*/        Mswitch1=1;
          delay(100);
          }
          else if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2+0.2*width&&mouseY>=height/2-0.1*height&&mouseY<=height/2&&switch1==1){
          switch1=0;
  /**Added in 1.3*/        Mswitch1=0;
          sum1=0;
          for(int a=0;a<26;a++){
            SwitchesUp1[a]=0;
          }
          //===============================
          delay(100);
        }
          }
          
          //Numbers
          if(switch2==0){
          fill(12,242,21);
          //edited in v1.8================================================
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2+0.04*height,0.4*width,0.1*height);
          else
          ButtonOn2(width/2-0.2*width,height/2+0.04*height,0.4*width,0.1*height,"");
          fill(0);
          text("Numbers",width/2,height/2+0.09*height);
          }
          else{
          fill(255,0,21);
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2+0.04*height,0.4*width,0.1*height);
          else
          ButtonOff2(width/2-0.2*width,height/2+0.04*height,0.4*width,0.1*height,"");
          fill(0);
          text("Numbers",width/2,height/2+0.09*height);
          }
          
          //Added in v1.11====
          if(menuOpened==0){
          if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2+0.2*width&&mouseY>=height/2+0.04*height&&mouseY<=height/2+0.04*height+0.1*height&&switch2==0){
          switch2=1;
  /**Added in 1.3*/        Mswitch2=1;
          delay(100);
          }
          else if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2+0.2*width&&mouseY>=height/2+0.04*height&&mouseY<=height/2+0.04*height+0.1*height&&switch2==1){
          switch2=0;
  /**Added in 1.3*/        Mswitch2=0;
          sum2=0;
          for(int a=0;a<10;a++){
            SwitchesUp2[a]=0;
          }
          //===============================
          delay(100);
        }
          }
        
          //Symbols
          if(switch3==0){
          fill(12,242,21);
          //edited in v1.8==========================================================
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2+0.18*height,0.4*width,0.1*height);
          else
          ButtonOn2(width/2-0.2*width,height/2+0.18*height,0.4*width,0.1*height,"");
          fill(0);
          text("Symbols",width/2,height/2+0.23*height);
          }
          
          else{
          fill(255,0,21);
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2+0.18*height,0.4*width,0.1*height);
          else
          ButtonOff2(width/2-0.2*width,height/2+0.18*height,0.4*width,0.1*height,"");
          fill(0);
          text("Symbols",width/2,height/2+0.23*height);
          }
          
          //Added in v1.11====
          if(menuOpened==0){
          if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2+0.2*width&&mouseY>=height/2+0.18*height&&mouseY<=height/2+0.18*height+0.1*height&&switch3==0){
          switch3=1;
 /**Added in 1.3*/         Mswitch3=1;
          delay(100);
          }
          else if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2+0.2*width&&mouseY>=height/2+0.18*height&&mouseY<=height/2+0.18*height+0.1*height&&switch3==1){
          switch3=0;
  /**Added in 1.3*/        Mswitch3=0;
          sum3=0;
          for(int a=0;a<18;a++){
            SwitchesUp3[a]=0;
          }
          delay(100);
        }
          }
        
        //added in v1.11===
          menu();
          //=================
        
        }
        
        //Added in v1.3===================================================================================
        //Uppercase Toggle
        
        else if(level==5){
          background(0);
          //edited in v1.8==============================================================
          if(ButtonSwitch==0)
          Button(width-0.28*width,height-0.12*height,0.24*width,0.08*height,"Back");
          else
          rButton(width-0.28*width,height-0.12*height,0.24*width,0.08*height,"Back");
          if(mousePressed&&mouseX>=width-0.28*width&&mouseX<=width-0.28*width+0.24*width&&mouseY>=height-0.12*height&&mouseY<=height-0.12*height+0.08*height)
          level=4;
          
          //=====================================
          if(ButtonSwitch==0)
          Upgen(UpLetters,SwitchesUp);
          else
          Upgen12(UpLetters,SwitchesUp);
          //=====================================
          
          float tplftX=0.04*width,tplftY=0.04*height,counter1a=0;
          int a;
          if(mousePressed){
          for(a=0;a<26;a++){
            if(counter1a>=6){
              tplftX=tplftX+0.04*width+0.14*width;
              tplftY=0.04*height;
              counter1a=0;
            }
            else if(a>0){
            tplftY=tplftY+0.04*height;
            }
            if(mouseX>=tplftX&&mouseX<=tplftX+0.12*width&&mouseY>=tplftY+0.12*height*counter1a&&mouseY<=tplftY+0.12*height*counter1a+0.12*height){
            if(SwitchesUp[a]==0){
            SwitchesUp[a]=1;
            sum0++;
            delay(100);
            }
            else{
            sum0--;
            SwitchesUp[a]=0;
            delay(100);
            }
            break;
          }
            ++counter1a;
          }
          
          //Edited in v1.8=============================
          
          if(ButtonSwitch==0)
          Upgen(UpLetters,SwitchesUp);
          else
          Upgen12(UpLetters,SwitchesUp);
          
          //============================================
          
          }
          if(sum0!=0)
          switch0=1;
          else{
          switch0=0;
          Mswitch0=0;
          }
        }
        
        else if(level==6){
          background(0);
          //edited in v1.8=============================================================
          if(ButtonSwitch==0)
          Button(width-0.28*width,height-0.12*height,0.24*width,0.08*height,"Back");
          else
          rButton(width-0.28*width,height-0.12*height,0.24*width,0.08*height,"Back");
          if(mousePressed&&mouseX>=width-0.28*width&&mouseX<=width-0.28*width+0.24*width&&mouseY>=height-0.12*height&&mouseY<=height-0.12*height+0.08*height)
          level=4;
          
          //===============================
          if(ButtonSwitch==0)
          Upgen(DwnLetters,SwitchesUp1);
          else
          Upgen12(DwnLetters,SwitchesUp1);
          //================================
          
          float tplftX=0.04*width,tplftY=0.04*height,counter1a=0;
          int a;
          if(mousePressed){
          for(a=0;a<26;a++){
            if(counter1a>=6){
              tplftX=tplftX+0.04*width+0.14*width;
              tplftY=0.04*height;
              counter1a=0;
            }
            else if(a>0){
            tplftY=tplftY+0.04*height;
            }
            if(mouseX>=tplftX&&mouseX<=tplftX+0.12*width&&mouseY>=tplftY+0.12*height*counter1a&&mouseY<=tplftY+0.12*height*counter1a+0.12*height){
            if(SwitchesUp1[a]==0){
            SwitchesUp1[a]=1;
            sum1++;
            delay(100);
            }
            else{
            sum1--;
            SwitchesUp1[a]=0;
            delay(100);
            }
            break;
          }
            ++counter1a;
          }
          
          //Edited in v1.8=============================
          
          if(ButtonSwitch==0)
          Upgen(DwnLetters,SwitchesUp1);
          else
          Upgen12(DwnLetters,SwitchesUp1);
          
          //============================================
          
        }
          if(sum1!=0)
          switch1=1;
          else{
          switch1=0;
          Mswitch1=0;
        }
        }
        
        else if(level==7){
          background(0);
          //edited in v1.8============================================================
          if(ButtonSwitch==0)
          Button(width-0.28*width,height-0.12*height,0.24*width,0.08*height,"Back");
          else
          rButton(width-0.28*width,height-0.12*height,0.24*width,0.08*height,"Back");
          if(mousePressed&&mouseX>=width-0.28*width&&mouseX<=width-0.28*width+0.24*width&&mouseY>=height-0.12*height&&mouseY<=height-0.12*height+0.08*height)
          level=4;
          
          //v1.8=====================
          if(ButtonSwitch==0)
          Upgen2(Nmbrs,SwitchesUp2);
          else
          Upgen22(Nmbrs,SwitchesUp2);
          //==========================
          
          float tplftX=0.04*width,tplftY=0.04*height,counter1a=0;
          int a;
          if(mousePressed){
          for(a=0;a<10;a++){
            if(counter1a>=6){
              tplftX=tplftX+0.04*width+0.14*width;
              tplftY=0.04*height;
              counter1a=0;
            }
            else if(a>0){
            tplftY=tplftY+0.04*height;
            }
            if(mouseX>=tplftX&&mouseX<=tplftX+0.12*width&&mouseY>=tplftY+0.12*height*counter1a&&mouseY<=tplftY+0.12*height*counter1a+0.12*height){
            if(SwitchesUp2[a]==0){
            SwitchesUp2[a]=1;
            sum2++;
            delay(100);
            }
            else{
            sum2--;
            SwitchesUp2[a]=0;
            delay(100);
            }
            break;
          }
            ++counter1a;
          }
          
          //Edited in v1.8=============================
          
          if(ButtonSwitch==0)
          Upgen2(Nmbrs,SwitchesUp2);
          else
          Upgen22(Nmbrs,SwitchesUp2);
          
          //============================================
          
        }
          if(sum2!=0)
          switch2=1;
          else{
          switch2=0;
          Mswitch2=0;
        }
        }
        
        else if(level==8){
          background(0);
          //edited in v1.8================================================================
          if(ButtonSwitch==0)
          Button(width-0.28*width,height-0.12*height,0.24*width,0.08*height,"Back");
          else
          rButton(width-0.28*width,height-0.12*height,0.24*width,0.08*height,"Back");
          if(mousePressed&&mouseX>=width-0.28*width&&mouseX<=width-0.28*width+0.24*width&&mouseY>=height-0.12*height&&mouseY<=height-0.12*height+0.08*height)
          level=4;
          
          //v1.8======================
          if(ButtonSwitch==0)
          Upgen3(Smbls,SwitchesUp3);
          else
          Upgen32(Smbls,SwitchesUp3);
          //===========================
          
          float tplftX=0.04*width,tplftY=0.04*height,counter1a=0;
          int a;
          if(mousePressed){
          for(a=0;a<18;a++){
            if(counter1a>=6){
              tplftX=tplftX+0.04*width+0.14*width;
              tplftY=0.04*height;
              counter1a=0;
            }
            else if(a>0){
            tplftY=tplftY+0.04*height;
            }
            if(mouseX>=tplftX&&mouseX<=tplftX+0.12*width&&mouseY>=tplftY+0.12*height*counter1a&&mouseY<=tplftY+0.12*height*counter1a+0.12*height){
            if(SwitchesUp3[a]==0){
            SwitchesUp3[a]=1;
            sum3++;
            delay(100);
            }
            else{
            sum3--;
            SwitchesUp3[a]=0;
            delay(100);
            }
            break;
          }
            ++counter1a;
          }
          
          //Edited in v1.8=============================
          
          if(ButtonSwitch==0)
          Upgen3(Smbls,SwitchesUp3);
          else
          Upgen32(Smbls,SwitchesUp3);
          
          //============================================
          
          }
          if(sum3!=0)
          switch3=1;
          else{
          switch3=0;
          Mswitch3=0;
        }
        }
       
        //=================================================================================================
        
        //Added in v.14======================================================
        
        else if(level==9){
        
          background(0);
          //edited in v1.8=============================================================
          if(ButtonSwitch==0)
          Button(width-0.28*width,height-0.12*height,0.24*width,0.08*height,"Back");
          else
          rButton(width-0.28*width,height-0.12*height,0.24*width,0.08*height,"Back");
          if(mousePressed&&mouseX>=width-0.28*width&&mouseX<=width-0.28*width+0.24*width&&mouseY>=height-0.12*height&&mouseY<=height-0.12*height+0.08*height)
          level=4;
          
          if(etcSwitch==0){
            textSize(textsize-1);
          fill(12,242,21);
          //edited in v1.8====================================================
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2-0.24*height,0.4*width,0.1*height);
          else
          ButtonOn2(width/2-0.2*width,height/2-0.24*height,0.4*width,0.1*height,"");
          fill(0);
          text("Clipboard Copy",width/2,height/2-0.19*height);
          }
          
          else{
            textSize(textsize-1);
          fill(255,0,21);
          //edited in v1.8======================================================
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2-0.24*height,0.4*width,0.1*height);
          else
          ButtonOff2(width/2-0.2*width,height/2-0.24*height,0.4*width,0.1*height,"");
          fill(0);
          text("Clipboard Copy",width/2,height/2-0.19*height);  
          }
          
          
          //Added in v1.8========================================================
          
          if(ButtonSwitch==0){
            textSize(textsize-1);
          fill(12,242,21);
          //edited in v1.8========================================================
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2-0.1*height,0.4*width,0.1*height);
          else
          ButtonOn2(width/2-0.2*width,height/2-0.1*height,0.4*width,0.1*height,"");
          fill(0);
          text("Round Buttons",width/2,height/2-0.05*height);
          }
          
          else{
            textSize(textsize-1);
          fill(255,0,21);
          //edited in v1.8=========================================================
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2-0.1*height,0.4*width,0.1*height);
          else
          ButtonOn2(width/2-0.2*width,height/2-0.1*height,0.4*width,0.1*height,"");
          fill(0);
          text("Rect. Buttons",width/2,height/2-0.05*height);  
          }
          
          if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2+0.2*width&&mouseY>=height/2-0.1*height&&mouseY<=height/2&&ButtonSwitch==0){
          ButtonSwitch=1;
          delay(100);
        }
        
        else if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2+0.2*width&&mouseY>=height/2-0.1*height&&mouseY<=height/2&&ButtonSwitch==1){
          ButtonSwitch=0;
          delay(100);
        }
        
          
          //========================================================================
          
          if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2-0.2*width+0.4*width&&mouseY>=height/2-0.24*height&&mouseY<=height/2-0.24*height+0.1*height&&etcSwitch==0){
          etcSwitch=1;
          delay(100);
        }
          else if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2-0.2*width+0.4*width&&mouseY>=height/2-0.24*height&&mouseY<=height/2-0.24*height+0.1*height&&etcSwitch==1){
          etcSwitch=0;
          delay(100);  
        }
        
        //Added in v1.9==================================================================
        
        if(privacySwitch==0){
            textSize(textsize-1);
          fill(12,242,21);
          //edited in v1.8====================================================
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2+0.04*height,0.4*width,0.1*height);
          else
          ButtonOn2(width/2-0.2*width,height/2+0.04*height,0.4*width,0.1*height,"");
          fill(0);
          text("Hide Password",width/2,height/2+0.09*height);
          }
          
          else{
            textSize(textsize-1);
          fill(255,0,21);
          //edited in v1.8======================================================
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2+0.04*height,0.4*width,0.1*height);
          else
          ButtonOff2(width/2-0.2*width,height/2+0.04*height,0.4*width,0.1*height,"");
          fill(0);
          text("Hide Password",width/2,height/2+0.09*height);  
          }
          
          if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2-0.2*width+0.4*width&&mouseY>=height/2+0.04*height&&mouseY<=height/2+0.04*height+0.1*height&&privacySwitch==0){
            privacySwitch=1;
            delay(100);
          }
          else if(mousePressed&&mouseX>=width/2-0.2*width&&mouseX<=width/2-0.2*width+0.4*width&&mouseY>=height/2+0.04*height&&mouseY<=height/2+0.04*height+0.1*height&&privacySwitch==1){
            privacySwitch=0;
            delay(100);
          }
          
        }
        
        //added in v1.11===========================================
        else if(level==10){
          
          background(0);
          menubtn();
          level10();
          
        }
        
       else{
          
          //Graphics=========================================================
          fill(0);
          //edited in v1.8===================================================
          if(ButtonSwitch==0)
          rect(width/2-0.2*width,height/2+0.12*height,0.4*width,0.1*height);
          else{
            stroke(0);
          ellipse(width/2,height/2+0.164*height,0.4*width+width/30,0.1*height+height/30);
          }
          fill(246,250,58);
          textAlign(CENTER,CENTER);
          
          //Added in v1.4==============================
          if(etcSwitch==0)
          
          text("Password was copied to Clipboard!",width/2,height/2+0.164*height);
          
          else
          text("Password generated Successfully",width/2,height/2+0.164*height);
          
          //============================================
          
          fill(246,250,0);
          //edited in v1.8====================================================
          if(ButtonSwitch==0)
          rect(width/2-0.26*width,height/2+0.24*height,0.52*width,0.1*height);
          else
          rButton(width/2-0.26*width,height/2+0.24*height,0.52*width,0.1*height,"");
          fill(0);
          text("Generate Another",width/2,height/2+0.284*height);
          
          //Back to Level 0=====================================================================================
          if(mousePressed&&mouseX>=width/2-0.26*width&&mouseX<=width/2+0.26*width&&mouseY>=height/2+0.24*height&&mouseY<=height/2+0.32*height)
          level = 1;
      
       fill(255);
       text("Main Menu",width/2,height/2-0.36*height);
       if(mousePressed&&mouseX>=width/2-0.18*width&&mouseX<=width/2+0.18*width&&mouseY>=height/2-0.42*height&&mouseY<=height/2-0.3*height)
       level = 0; 
     }
       
        
 }
 
 void Main(){
   
        String Output = new String();
        String[] Password = new String[L];
        String Uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String Lowercase = "abcdefghijklmnopqrstuvwxyz";
        String Numbers = "12345678901234567890";
        String Symbols = "!@#$%^&*()-+=?><[]!@#$%^&*()-+=?><[]";
        String Alphabet = new String();
        String Upcases = new String();
        String DwnCases = new String();
        String Nums = new String();
        String Symbs = new String();
        
        if(switch3==0)
        Alphabet = Alphabet + Symbols;
        if(switch3!=0&&Mswitch3==0){
          for(int b=0;b<18;b++){
            if(SwitchesUp3[b]==0)
            Symbs=Symbs+Smbls[b]+Smbls[b];
          }
          Alphabet=Alphabet+Symbs;
        }
        if(switch0==0)
        Alphabet = Alphabet + Uppercase;
        if(switch0!=0&&Mswitch0==0){
          for(int b=0;b<26;b++){
            if(SwitchesUp[b]==0)
            Upcases=Upcases+UpLetters[b];
          }
          Alphabet=Alphabet+Upcases;
        }
        if(switch1==0)
        Alphabet= Alphabet + Lowercase;
        if(switch1!=0&&Mswitch1==0){
          for(int b=0;b<26;b++){
            if(SwitchesUp1[b]==0)
            DwnCases=DwnCases+DwnLetters[b];
          }
          Alphabet=Alphabet+DwnCases;
        }
        if(switch2==0)
        Alphabet = Alphabet + Numbers;
        if(switch2!=0&&Mswitch2==0){
          for(int b=0;b<10;b++){
            if(SwitchesUp2[b]==0)
            Nums=Nums+Nmbrs[b]+Nmbrs[b];
          }
          Alphabet=Alphabet+Nums;
        }
        String[] Alpha = Alphabet.split("");
        
        Random rand = new Random();
        for(int x=0;x<L;x++){
            int n = rand.nextInt(Alpha.length);
            Password[x]=Alpha[n];
            Output = Output + Password[x];
        } 
        this.Output=Output;
    }
    
    void Button(float x,float y,float wide,float heigh,String text){
      textSize(textsize);
      fill(246,250,0);
      rect(x,y,wide,heigh);
      fill(0);
      textAlign(CENTER,CENTER);
      float textX=x+(wide/2);
      float textY=y+(heigh/2);
      text(text,textX,textY);
    }
    
    void ButtonOn(float x,float y,float wide,float heigh,String text){
      textSize(textsize);
      fill(12,242,21);
      rect(x,y,wide,heigh);
      fill(0);
      textAlign(CENTER,CENTER);
      float textX=x+(wide/2);
      float textY=y+(heigh/2);
      text(text,textX,textY);
    }
    
    
    //Added in v1.8================================================================
    
    void rButton(float x,float y,float wide,float heigh,String text){
      textSize(textsize);
      fill(246,250,0);
      ellipse(x+(wide/2),y+(heigh/2),wide+width/50,heigh+height/50);
      fill(0);
      textAlign(CENTER,CENTER);
      float textX=x+(wide/2);
      float textY=y+(heigh/2);
      text(text,textX,textY);
    }
    
    void ButtonOn2(float x,float y,float wide,float heigh,String text){
      textSize(textsize);
      fill(12,242,21);
      ellipse(x+(wide/2),y+(heigh/2),wide+width/50,heigh+height/50);
      fill(0);
      textAlign(CENTER,CENTER);
      float textX=x+(wide/2);
      float textY=y+(heigh/2);
      text(text,textX,textY);
    }
    
    void ButtonOff2(float x,float y,float wide,float heigh,String text){
      textSize(textsize);
      fill(255,0,21);
      ellipse(x+(wide/2),y+(heigh/2),wide+width/50,heigh+height/50);
      fill(0);
      textAlign(CENTER,CENTER);
      float textX=x+(wide/2);
      float textY=y+(heigh/2);
      text(text,textX,textY);
    }
    
    //===================================================================================
    
    
    
    void ButtonOff(float x,float y,float wide,float heigh,String text){
      textSize(textsize);
      fill(255,0,21);
      rect(x,y,wide,heigh);
      fill(0);
      textAlign(CENTER,CENTER);
      float textX=x+(wide/2);
      float textY=y+(heigh/2);
      text(text,textX,textY);
    }
  
  
  void Upgen(String[] UpLetters,int[] Switches){
    
    //Generate Buttons===========================================
          float tplftX=0.04*width,tplftY=0.04*height,counter1a=0;
          for(int btn1=0;btn1<26;btn1++){  
            if(counter1a>=6){
              tplftX=tplftX+0.04*width+0.14*width;
              tplftY=0.04*height;
              counter1a=0;
            }
            else if(btn1>0){
            tplftY=tplftY+0.04*height;
            }
            if(Switches[btn1]==0)
            ButtonOn(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,UpLetters[btn1]);
            else 
            ButtonOff(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,UpLetters[btn1]);
            ++counter1a;
          }
          //==============================================================
  }
  
  void Upgen2(String[] UpLetters,int[] Switches){
    
    //Generate Buttons===========================================
          float tplftX=0.04*width,tplftY=0.04*height,counter1a=0;
          for(int btn1=0;btn1<10;btn1++){  
            if(counter1a>=6){
              tplftX=tplftX+0.04*width+0.14*width;
              tplftY=0.04*height;
              counter1a=0;
            }
            else if(btn1>0){
            tplftY=tplftY+0.04*height;
            }
            if(Switches[btn1]==0)
            ButtonOn(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,UpLetters[btn1]);
            else 
            ButtonOff(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,UpLetters[btn1]);
            ++counter1a;
          }
          //==============================================================
  }
  
  void Upgen3(String[] UpLetters,int[] Switches){
    
    //Generate Buttons===========================================
          float tplftX=0.04*width,tplftY=0.04*height,counter1a=0;
          for(int btn1=0;btn1<18;btn1++){  
            if(counter1a>=6){
              tplftX=tplftX+0.04*width+0.14*width;
              tplftY=0.04*height;
              counter1a=0;
            }
            else if(btn1>0){
            tplftY=tplftY+0.04*height;
            }
            if(Switches[btn1]==0)
            ButtonOn(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,UpLetters[btn1]);
            else 
            ButtonOff(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,UpLetters[btn1]);
            ++counter1a;
          }
          //==============================================================
  }
  
  
  
  
  //Added in V1.8=============================================================
  
  void Upgen12(String[] UpLetters,int[] Switches){
    
    //Generate Buttons===========================================
          float tplftX=0.04*width,tplftY=0.04*height,counter1a=0;
          for(int btn1=0;btn1<26;btn1++){  
            if(counter1a>=6){
              tplftX=tplftX+0.04*width+0.14*width;
              tplftY=0.04*height;
              counter1a=0;
            }
            else if(btn1>0){
            tplftY=tplftY+0.04*height;
            }
            if(Switches[btn1]==0)
            ButtonOn2(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,UpLetters[btn1]);
            else 
            ButtonOff2(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,UpLetters[btn1]);
            ++counter1a;
          }
          //==============================================================
  }
  
  void Upgen22(String[] UpLetters,int[] Switches){
    
    //Generate Buttons===========================================
          float tplftX=0.04*width,tplftY=0.04*height,counter1a=0;
          for(int btn1=0;btn1<10;btn1++){  
            if(counter1a>=6){
              tplftX=tplftX+0.04*width+0.14*width;
              tplftY=0.04*height;
              counter1a=0;
            }
            else if(btn1>0){
            tplftY=tplftY+0.04*height;
            }
            if(Switches[btn1]==0)
            ButtonOn2(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,UpLetters[btn1]);
            else 
            ButtonOff2(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,UpLetters[btn1]);
            ++counter1a;
          }
          //==============================================================
  }
  
  void Upgen32(String[] UpLetters,int[] Switches){
    
    //Generate Buttons===========================================
          float tplftX=0.04*width,tplftY=0.04*height,counter1a=0;
          for(int btn1=0;btn1<18;btn1++){  
            if(counter1a>=6){
              tplftX=tplftX+0.04*width+0.14*width;
              tplftY=0.04*height;
              counter1a=0;
            }
            else if(btn1>0){
            tplftY=tplftY+0.04*height;
            }
            if(Switches[btn1]==0)
            ButtonOn2(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,UpLetters[btn1]);
            else 
            ButtonOff2(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,UpLetters[btn1]);
            ++counter1a;
          }
          //==============================================================
  }
  
  //Added in v1.10========================================================
  
  void menu(){
    textSize(textsize);
    fill(246,250,0);
    rect(0.03*width,0.04*width,0.088*width,0.016*height);
    rect(0.03*width,0.06*width,0.088*width,0.016*height);
    rect(0.03*width,0.08*width,0.088*width,0.016*height);
    if(menuSwitch==1){
            fill(0,0,0,80);
            rect(0,0,width,height);
            fill(0);
            rect(0,0,width/2,height);
            fill(246,250,0);
            rect(0.03*width,0.04*width,0.088*width,0.016*height);
            rect(0.03*width,0.06*width,0.088*width,0.016*height);
            rect(0.03*width,0.08*width,0.088*width,0.016*height);    
            textAlign(RIGHT);
            rect(0,0.12*height,width/2,2);
            text("Uppercase",0.28*width,0.2*height);
            text("Lowercase",0.28*width,0.28*height);
            text("Numbers",0.28*width,0.36*height);
            text("Symbols",0.28*width,0.44*height);
            rect(0,0.48*height,width/2,2);
            text("Hide Pass",0.28*width,0.56*height);
            text("Clip Copy",0.28*width,0.64*height);
            
            if(Mswitch0==1&&Mswitch1==1&&Mswitch2==1&&Mswitch3==1){
              Mswitch0=0;
              Mswitch1=0;
              Mswitch2=0;
              Mswitch3=0;
              switch0=0;
              switch1=0;
              switch2=0;
              switch3=0;
            }
            if(switch0==0){
              fill(12,242,21);
              text("On",0.44*width,0.2*height);
            }
            else{
              fill(255,0,21);
              text("Off",0.44*width,0.2*height);
            }
            
            if(mousePressed&&mouseX>=0.36*width&&mouseX<=0.48*width&&mouseY>=0.16*height&&mouseY<=0.24*height&&Mswitch0==0){
              Mswitch0=1;
              switch0=1;
              delay(100);
            }
            else if(mousePressed&&mouseX>=0.36*width&&mouseX<=0.48*width&&mouseY>=0.16*height&&mouseY<=0.24*height&&Mswitch0==1){
              //added in v1.11====
              for(int x=0;x<UpLetters.length;x++){
                SwitchesUp[x]=0;
              }
              sum0=0;
              //==================
              Mswitch0=0;
              switch0=0;
              delay(100);
            }
            
            if(Mswitch1==0){
              fill(12,242,21);
              text("On",0.44*width,0.28*height);
            }
            else{
              fill(255,0,21);
              text("Off",0.44*width,0.28*height);
            }
            
            if(mousePressed&&mouseX>=0.36*width&&mouseX<=0.48*width&&mouseY>=0.24*height&&mouseY<=0.32*height&&Mswitch1==0){
              Mswitch1=1;
              switch1=1;
              delay(100);
            }
            else if(mousePressed&&mouseX>=0.36*width&&mouseX<=0.48*width&&mouseY>=0.24*height&&mouseY<=0.32*height&&Mswitch1==1){
              //added in v1.11====
              for(int x=0;x<DwnLetters.length;x++){
                SwitchesUp1[x]=0;
              }
              sum1=0;
              //==================
              Mswitch1=0;
              switch1=0;
              delay(100);
            }
            
            if(Mswitch2==0){
              fill(12,242,21);
              text("On",0.44*width,0.36*height);
            }
            else{
              fill(255,0,21);
              text("Off",0.44*width,0.36*height);
            }
            
            if(mousePressed&&mouseX>=0.36*width&&mouseX<=0.48*width&&mouseY>=0.32*height&&mouseY<=0.4*height&&Mswitch2==0){
              Mswitch2=1;
              switch2=1;
              delay(100);
            }
            else if(mousePressed&&mouseX>=0.36*width&&mouseX<=0.48*width&&mouseY>=0.32*height&&mouseY<=0.4*height&&Mswitch2==1){
              Mswitch2=0;
              switch2=0;
              //added in v1.11====
              for(int x=0;x<Nmbrs.length;x++){
                SwitchesUp2[x]=0;
              }
              sum2=0;
              //==================
              delay(100);
            }
            
            if(Mswitch3==0){
              fill(12,242,21);
              text("On",0.44*width,0.44*height);
            }
            else{
              fill(255,0,21);
              text("Off",0.44*width,0.44*height);
            }
            
            if(mousePressed&&mouseX>=0.36*width&&mouseX<=0.48*width&&mouseY>=0.4*height&&mouseY<=0.48*height&&Mswitch3==0){
              Mswitch3=1;
              switch3=1;
              delay(100);
            }
            else if(mousePressed&&mouseX>=0.36*width&&mouseX<=0.48*width&&mouseY>=0.4*height&&mouseY<=0.48*height&&Mswitch3==1){
              Mswitch3=0;
              switch3=0;
              //added in v1.11====
              for(int x=0;x<Smbls.length;x++){
                SwitchesUp3[x]=0;
              }
              sum3=0;
              //==================
              delay(100);
            }
            
            if(privacySwitch==0){
              fill(255,0,21);
              text("Off",0.44*width,0.56*height);
            }
            else{
              fill(12,242,21);
              text("On",0.44*width,0.56*height);
            }
            
            if(mousePressed&&mouseX>=0.36*width&&mouseX<=0.48*width&&mouseY>=0.52*height&&mouseY<=0.6*height&&privacySwitch==0){
              privacySwitch=1;
              delay(100);
            }
            else if(mousePressed&&mouseX>=0.36*width&&mouseX<=0.48*width&&mouseY>=0.52*height&&mouseY<=0.6*height&&privacySwitch==1){
              privacySwitch=0;
              delay(100);
            }
            
            if(etcSwitch==0){
              fill(12,242,21);
              text("On",0.44*width,0.64*height);
            }
            else{
              fill(255,0,21);
              text("Off",0.44*width,0.64*height);
            }
            
            if(mousePressed&&mouseX>=0.36*width&&mouseX<=0.48*width&&mouseY>=0.6*height&&mouseY<=0.68*height&&etcSwitch==0){
              etcSwitch=1;
              delay(100);
            }
            else if(mousePressed&&mouseX>=0.36*width&&mouseX<=0.48*width&&mouseY>=0.6*height&&mouseY<=0.68*height&&etcSwitch==1){
              etcSwitch=0;
              delay(100);
            }
       }
       
       if(mousePressed&&mouseX>=width/2&&menuSwitch==1){
         menuSwitch=0;
         menuOpened=0;
       }
       
       if(mousePressed&&mouseX>=0&&mouseX<=0.13*width&&mouseY>=0&&mouseY<=0.13*height&&menuSwitch==1){
              menuSwitch=0;
              menuOpened=0;
              delay(100);
            }
            
       else if(mousePressed&&mouseX>=0&&mouseX<=0.13*width&&mouseY>=0&&mouseY<=0.13*height&&menuSwitch==0){
      menuSwitch=1;
      menuOpened=1;
      delay(100);
    }
  }
  
  //added in v1.11=============
  void troubleshoot(){
    
    int chk0=UpLetters.length;
    int chk1=DwnLetters.length;
    int chk2=Nmbrs.length;
    int chk3=Smbls.length;
    
    for(int x=0;x<UpLetters.length;x++){
      if(SwitchesUp[x]==1)
      chk0--;
    }
    
    for(int x=0;x<DwnLetters.length;x++){
      if(SwitchesUp1[x]==1)
      chk1--;
    }
    
    for(int x=0;x<Nmbrs.length;x++){
      if(SwitchesUp2[x]==1)
      chk2--;
    }
    
    for(int x=0;x<Smbls.length;x++){
      if(SwitchesUp3[x]==1)
      chk3--;
    }
    
    if(chk0==0){
      Mswitch0=1;
      switch0=1;
    }
    
    if(chk1==0){
      Mswitch1=1;
      switch1=1;
    }
    
    if(chk2==0){
      Mswitch2=1;
      switch2=1;
    }
    
    if(chk3==0){
      Mswitch3=1;
      switch3=1;
    }
    
    if(Mswitch0==1&&Mswitch1==1&&Mswitch2==1&&Mswitch3==1){
      
      Mswitch0=0;
      Mswitch1=0;
      Mswitch2=0;
      Mswitch3=0;
      switch0=0;
      switch1=0;
      switch2=0;
      switch3=0;
      sum0=0;
      sum1=0;
      sum2=0;
      sum3=0;
      toggle=1;
      
      for(int x=0;x<UpLetters.length;x++){
        SwitchesUp[x]=0;
      }
      
      for(int x=0;x<DwnLetters.length;x++){
        SwitchesUp1[x]=0;
      }
      
      for(int x=0;x<Nmbrs.length;x++){
        SwitchesUp2[x]=0;
      }
      
      for(int x=0;x<Smbls.length;x++){
        SwitchesUp3[x]=0;
      }
    }
    
  }
  
  //added in v1.11=================================
  void menubtn(){
      if(ButtonSwitch==0)
          Button(0.14*width,height-0.12*height,0.24*width,0.08*height,"Menu");
          else
          rButton(0.14*width,height-0.12*height,0.24*width,0.08*height,"Menu");
          //==========================================================================
          
          //Added in v1.11====
          if(menuOpened==0){
          if(mousePressed&&mouseX>=0.14*width&&mouseX<=0.14*width+0.24*width&&mouseY>=height-0.12*height&&mouseY<=height-0.12*height+0.08*height)
          level=0;
          delay(100);
          }
          //=============================================================================

  }
  
  void level10(){
    cstmSwitch=0;
    textSize(textsize/2);
    textAlign(LEFT,CENTER);
    fill(255,0,0);
    text("PLEASE ENTER PASSWORD LENGTH:",0.14*width,0.06*height);
    noStroke();
    fill(180);
    rect(0,0.11*height,width,2*0.06*height);
    textSize(textsize);
    stroke(0);
    fill(246,250,58);
    String[] input={"1","2","3","4","5","6","7","8","9"};
    
    float tplftX=0.144*width,tplftY=0.24*height,counter1a=0;
          for(int btn1=0;btn1<=8;btn1++){  
            if(counter1a>=3){
              tplftX=tplftX+0.04*width+0.14*width;
              tplftY=0.24*height;
              counter1a=0;
            }
            else if(btn1>0){
            tplftY=tplftY+0.04*height;
            }
            if(ButtonSwitch==0)
            Button(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,input[btn1]);
            else 
            rButton(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,input[btn1]);
            ++counter1a;
          }
          
          tplftY=tplftY+0.04*height;
          if(ButtonSwitch==0)
            Button(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,"0");
            else 
            rButton(tplftX,tplftY+0.12*height*counter1a,0.12*width,0.12*height,"0");
            
          tplftX=tplftX+0.04*width+0.14*width;
          tplftY=0.24*height;
          
          if(ButtonSwitch==0){
            ButtonOff(tplftX,tplftY,0.12*width*2,0.12*height,"CLEAR");
          }
          else{
            ButtonOff2(tplftX,tplftY,0.12*width*2,0.12*height,"CLEAR");
          }
          
          tplftY=tplftY+0.04*height+0.12*height;
          
          if(ButtonSwitch==0){
            Button(tplftX,tplftY,0.12*width*2,0.12*height,"<---");
          }
          else{
            rButton(tplftX,tplftY,0.12*width*2,0.12*height,"<---");
          }
          
          tplftY=tplftY+0.04*height+0.12*height+0.04*height+0.12*height;
          
          if(ButtonSwitch==0){
            Button(tplftX,tplftY,0.12*width*2,0.12*height,"Generate");
          }
          else{
            rButton(tplftX,tplftY,0.12*width*2,0.12*height,"GENERATE");
          }
          
          if(menuOpened==0){
    if(mousePressed){
          tplftX=0.144*width;
          tplftY=0.24*height;
          counter1a=0;
          for(int a=1;a<10;a++){
            if(counter1a>=2){
              tplftX=tplftX+0.04*width+0.14*width;
              tplftY=0.24*height;
              counter1a=0;
            }
            else if(a>1){
            tplftY=tplftY+0.04*height;
             ++counter1a;
            }
            if(mouseX>=tplftX&&mouseX<=tplftX+0.12*width&&mouseY>=tplftY+0.12*height*counter1a&&mouseY<=tplftY+0.12*height*counter1a+0.12*height){
            custm.add(a);
            delay(100);
            }
          }
          
          if(custm.size()>=1)
          cstmSwitch=1;
          else
          cstmSwitch=0;
          tplftY=tplftY+0.04*height+0.12*height;
          if(cstmSwitch==1)
            if(mouseX>=tplftX&&mouseX<=tplftX+0.12*width&&mouseY>=tplftY+0.12*height*counter1a&&mouseY<=tplftY+0.12*height*counter1a+0.12*height){
            custm.add(0);
            delay(100);
            }
          
          float tplftX2=tplftX+0.04*width+0.14*width;
          float tplftY2=0.24*height;
          
          if(mouseX>=tplftX2&&mouseX<=tplftX2+0.12*width*2&&mouseY>=tplftY2&&mouseY<=tplftY2+0.12*height)
          custm.clear();
           
           tplftY2=tplftY2+0.04*height+0.12*height;
           
           if(custm.size()>=1)
          if(mouseX>=tplftX2&&mouseX<=tplftX2+0.12*width*2&&mouseY>=tplftY2&&mouseY<=tplftY2+.12*height)
          custm.remove(custm.size()-1);
          
          tplftY2=tplftY2+0.04*height+0.12*height+0.04*height+0.12*height;
          if(custm.size()>=1)
          if(mouseX>=tplftX2&&mouseX<=tplftX2+0.12*width*2&&mouseY>=tplftY2&&mouseY<=tplftY2+0.12*height){
            String test = new String();
            for(int i=0;i<custm.size();i++){
              test = test + custm.get(i);
            }
            int lengt = Integer.parseInt(test);
            this.L=lengt;
            level=1;
          }
          
          }
          }
          
          String OutP = custm.toString().replaceAll("\\[|\\]", "").replaceAll(", ","\t");
          
          text(OutP,width/2,0.16*height);
          
          menu();
  }
  
