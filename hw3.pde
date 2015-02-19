//BCB 4002 A3: Experiments in Biology
//Tete Zhang

//declare header font
PFont h1;

//declare label font
PFont l1;
PFont l2;

void setup(){
  //basics
  size(850,600);
  background(230,230,250);
  smooth();
  //use 'Calibri' as the header font with size 14pt
  h1 = createFont("Calibri",14,false);
  //use 'Calibri' as the data label font with size 11pt
  l1 = createFont("Calibri",11,false);
  //use 'Calibri' as the category label font with size 9pt
  l2 = createFont("Calibri",12,false);

  //call the draw bar chart funtion
  drawBar1("zoo.csv",50,300,750,100);
  
  drawBar2("zoo.csv",50,500,300,100);
}

                
//draw bar chart function
void drawBar1(String filename, float ox1, float oy1, float cWidth, 
             float cHeight){
  //declare a float variable for the max y axis value
  float ymax;
  
  //declare a float variable for the min y axis value
  float ymin = 0;
  
  //set stroke color and weight for axis lines
  stroke(0);
  strokeWeight(2);
  
  //draw the axis
  line(ox1-4,oy1,ox1+cWidth, oy1);
  line(ox1,oy1+2,ox1,oy1-cHeight);
  
  //set start x value
  float xStart = ox1;
  
  //load the file
  String[] lines = loadStrings(filename);
  
  //set a counter array
  int[] count = new int[15];
  
  //set a category name array
  String[] names = new String[15];
  names = split(lines[0],',');
  
  //loop through the file
  for(int j=1;j<lines.length;j++){
    String[] pieces = split(lines[j],',');
    
    count[0] = count[0] + int(pieces[1]);
    count[1] = count[1] + int(pieces[2]);
    count[2] = count[2] + int(pieces[3]);
    count[3] = count[3] + int(pieces[4]);
    count[4] = count[4] + int(pieces[5]);
    count[5] = count[5] + int(pieces[6]);
    count[6] = count[6] + int(pieces[7]);
    count[7] = count[7] + int(pieces[8]);
    count[8] = count[8] + int(pieces[9]);
    count[9] = count[9] + int(pieces[10]);
    count[10] = count[10] + int(pieces[11]);
    count[11] = count[11] + int(pieces[12]);
    count[12] = count[12] + int(pieces[13]);
    count[13] = count[13] + int(pieces[14]);
    count[14] = count[14] + int(pieces[15]);
  }
  
  //set the max y axis value to be higher than the data points
  ymax = max(count) +17;
  
  //draw minimum and maximum y axis labels
  textFont(h1);
  fill(45,45,45);
  textAlign(RIGHT, CENTER);
  text(int(ymax), ox1-7, oy1-cHeight);
  text(int(ymin),ox1-7, oy1);
  
  //draw each bar for each count;
  for (int k=0;k<15;k++){
    
    //set the bar height
    float bHeight = int(count[k]);
    
    //set the bar width
    float bWidth = cWidth/15 - 5;
    
    //set bar color
    fill(139,0,139);
    
    //draw the bar
    quad(ox1+2,oy1,ox1+2,oy1-bHeight,ox1+bWidth,oy1-bHeight, 
         ox1+bWidth,oy1);
    
    //draw data label
    textFont(l1);
    textAlign(CENTER,CENTER);
    fill(0);
    text(count[k], ox1+10, oy1-bHeight-15);
    
    //draw category label
    textFont(l2);
    textAlign(CENTER,CENTER);
    fill(0);
    text(names[k+1], ox1+20, oy1+15);
    
    //increment the x point for next bar
    ox1 = ox1 + cWidth/15;
  }
  //set original back to prevent infinite drawing
  ox1 = xStart;
  
  //draw a title text box for the bar chart
  textFont(h1);
  fill(45,45,45);
  textAlign(CENTER, CENTER);
  text("Zoo Animal Category Stats", 400,180);
             }
             
             
//draw second bar chart function
void drawBar2(String filename, float ox1, float oy1, float cWidth, 
             float cHeight){
  //declare a float variable for the max y axis value
  float ymax;
  
  //declare a float variable for the min y axis value
  float ymin = 0;
  
  //set stroke color and weight for axis lines
  stroke(0);
  strokeWeight(2);
  
  //draw the axis
  line(ox1-4,oy1,ox1+cWidth, oy1);
  line(ox1,oy1+2,ox1,oy1-cHeight);
  
  //set start x value
  float xStart = ox1;
  
  //load the file
  String[] lines = loadStrings(filename);
  
  //set counters
  int[] counter = new int[7];
  counter[0] = 0;
  counter[1] = 0;
  counter[2] = 0;
  counter[3] = 0;
  counter[4] = 0;
  counter[5] = 0;
  counter[6] = 0;
  
  //set a category name array
  String[] names = new String[15];
  names = split(lines[0],',');
  
  //loop through the file
  for(int j=1;j<lines.length;j++){
    String[] pieces = split(lines[j],',');

    if(int(pieces[16]) == 1){
      counter[0] = counter[0]+1;
    }
    if(int(pieces[16]) == 2){
      counter[1]++;
    }
    if(int(pieces[16]) == 3){
      counter[2]++;
    }
    if(int(pieces[16]) == 4){
      counter[3]++;
    }
    if(int(pieces[16]) == 5){
      counter[4]++;
    }
    if(int(pieces[16]) == 6){
      counter[5]++;
    }
    if(int(pieces[16]) == 7){
      counter[6]++;
    }
  }

//set the max y axis value to be higher than the data points
  ymax = max(counter) +17;
  
  //draw minimum and maximum y axis labels
  textFont(h1);
  fill(45,45,45);
  textAlign(RIGHT, CENTER);
  text(int(ymax), ox1-7, oy1-cHeight);
  text(int(ymin),ox1-7, oy1);
  
  //draw x axis label
  textFont(h1);
  fill(45,45,45);
  textAlign(RIGHT, CENTER);
  text("type", ox1+cWidth+20, oy1+15);
  
  //draw each bar for each count;
  for (int k=0;k<7;k++){
    
    //set the bar height
    float bHeight = counter[k];
    
    //set the bar width
    float bWidth = cWidth/7 - 5;
    
    //set bar color
    fill(123,104,238);
    
    //draw the bar
    quad(ox1+2,oy1,ox1+2,oy1-bHeight,ox1+bWidth,oy1-bHeight, 
         ox1+bWidth,oy1);
    
    //draw data label
    textFont(l1);
    textAlign(CENTER,CENTER);
    fill(0);
    text(counter[k], ox1+10, oy1-bHeight-15);
    
    //draw category label
    textFont(l2);
    textAlign(CENTER,CENTER);
    fill(0);
    text(str(k+1), ox1+20, oy1+15);
    
    //increment the x point for next bar
    ox1 = ox1 + cWidth/7;
  }
  //set original back to prevent infinite drawing
  ox1 = xStart;
  
  //draw a title text box for the bar chart
  textFont(h1);
  fill(45,45,45);
  textAlign(CENTER, CENTER);
  text("Zoo Animal Type Stats", 200,380);
             }  
