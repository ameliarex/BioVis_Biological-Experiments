//BCB 4002 A3: Experiments in Biology
//Tete Zhang

//declare header font
PFont h1;

//declare label font
PFont l1;
PFont l2;

//set up some name arrays for the category stats
String[] c1 = new String[0];
String[] c2 = new String[0];
String[] c3 = new String[0];
String[] c4 = new String[0];
String[] c5 = new String[0];
String[] c6 = new String[0];
String[] c7 = new String[0];
String[] c8 = new String[0];
String[] c9 = new String[0];
String[] c10 = new String[0];
String[] c11 = new String[0];
String[] c12 = new String[0];
String[] c13 = new String[0];
String[] c14 = new String[0];
String[] c15 = new String[0];

//set up some name arrays for the type stats
String[] t1 = new String[0];
String[] t2 = new String[0];
String[] t3 = new String[0];
String[] t4 = new String[0];
String[] t5 = new String[0];
String[] t6 = new String[0];
String[] t7 = new String[0];

void setup(){
  //basics
  size(850,600);
  smooth();
  
  //use 'Calibri' as the header font with size 14pt
  h1 = createFont("Calibri",14,false);
  //use 'Calibri' as the data label font with size 11pt
  l1 = createFont("Calibri",11,false);
  //use 'Calibri' as the category label font with size 9pt
  l2 = createFont("Calibri",12,false);
  
  //load the file
  String[] lines = loadStrings("zoo.csv");
  
  //loop through the file
  for(int j=1;j<lines.length;j++){
    String[] pieces = split(lines[j],',');
   
    //category stats name aggregation
    if (pieces[1].equals("1")){
      c1 = append(c1,pieces[0]);
    }
    if (pieces[2].equals("1")){
      c2 = append(c2,pieces[0]);
    }
    if (pieces[3].equals("1")){
      c3 = append(c3,pieces[0]);
    }
    if (pieces[4].equals("1")){
      c4 = append(c4,pieces[0]);
    }
    if (pieces[5].equals("1")){
      c5 = append(c5,pieces[0]);
    }
    if (pieces[6].equals("1")){
      c6 = append(c6,pieces[0]);
    }
    if (pieces[7].equals("1")){
      c7 = append(c7,pieces[0]);
    }
    if (pieces[8].equals("1")){
      c8 = append(c8,pieces[0]);
    }
    if (pieces[9].equals("1")){
      c9 = append(c9,pieces[0]);
    }
    if (pieces[10].equals("1")){
      c10 = append(c10,pieces[0]);
    }
    if (pieces[11].equals("1")){
      c11 = append(c11,pieces[0]);
    }
    if (pieces[12].equals("1")){
      c12 = append(c12,pieces[0]);
    }
    if (pieces[13].equals("1")){
      c13 = append(c13,pieces[0]);
    }
    if (pieces[14].equals("1")){
      c14 = append(c14,pieces[0]);
    }
    if (pieces[15].equals("1")){
      c15 = append(c15,pieces[0]);
    }
    
    //type stats name aggregation
    if (pieces[16].equals("1")){
      t1 = append(t1,pieces[0]);
    }
    if (pieces[16].equals("2")){
      t2 = append(t2,pieces[0]);
    }
    if (pieces[16].equals("3")){
      t3 = append(t3,pieces[0]);
    }
    if (pieces[16].equals("4")){
      t4 = append(t4,pieces[0]);
    }
    if (pieces[16].equals("5")){
      t5 = append(t5,pieces[0]);
    }
    if (pieces[16].equals("6")){
      t6 = append(t6,pieces[0]);
    }
    if (pieces[16].equals("7")){
      t7 = append(t7,pieces[0]);
    }
  }
}


void draw(){
  background(230,230,250);
  //call the draw bar chart funtion
  drawBar1("zoo.csv",50,300,750,100);
  //call the second draw bar chart function;
  drawBar2("zoo.csv",50,500,280,100);
  
  //mouse over for the category stats
  String jc1 = join(c1," ");
  String jc2 = join(c2," ");
  String jc3 = join(c3," ");
  String jc4 = join(c4," ");
  String jc5 = join(c5," ");
  String jc6 = join(c6," ");
  String jc7 = join(c7," ");
  String jc8 = join(c8," ");
  String jc9 = join(c9," ");
  String jc10 = join(c10," ");
  String jc11 = join(c11," ");
  String jc12 = join(c12," ");
  String jc13 = join(c13," ");
  String jc14 = join(c14," ");
  String jc15 = join(c15," ");

  if (mouseX>=50 && mouseX<=90 && mouseY<=300 && mouseY>=257){
    text(jc1,50,-100,400,400);
  }
  
  if (mouseX>=100 && mouseX<=145 && mouseY<=300 && mouseY>=280){
    text(jc2,50,-100,400,400);
  }
  
  if (mouseX>=150 && mouseX<=195 && mouseY<=300 && mouseY>=241){
    text(jc3,50,-100,400,400);
  }
  
  if (mouseX>200 && mouseX<=245 && mouseY<=300 && mouseY>=259){
    text(jc4,50,-100,400,400);
  }
  
  if (mouseX>=250 && mouseX<=295 && mouseY<=300 && mouseY>=276){
    text(jc5,50,-100,400,400);
  }
  
  if (mouseX>=300 && mouseX<=345 && mouseY<=300 && mouseY>=264){
    text(jc6,50,-100,400,400);
  }
  
  if (mouseX>=350 && mouseX<=395 && mouseY<=300 && mouseY>=244){
    text(jc7,50,-100,400,400);
  }
  
  if (mouseX>=400 && mouseX<=445 && mouseY<=300 && mouseY>=239){
    text(jc8,50,-100,400,400);
  }
  
  if (mouseX>=450 && mouseX<=495 && mouseY<=300 && mouseY>=217){
    text(jc9,50,-100,400,400);
  }
  
  if (mouseX>=500 && mouseX<=545 && mouseY<=300 && mouseY>=220){
    text(jc10,50,-100,400,400);
  }
  
  if (mouseX>=550 && mouseX<=595 && mouseY<=300 && mouseY>=292){
    text(jc11,50,-100,400,400);
  }
  
  if (mouseX>=600 && mouseX<=645 && mouseY<=300 && mouseY>=283){
    text(jc12,50,-100,400,400);
  }
  
  if (mouseX>=650 && mouseX<=695 && mouseY<=300 && mouseY>=225){
    text(jc13,50,-100,400,400);
  }
  
  if (mouseX>=700 && mouseX<=745 && mouseY<=300 && mouseY>=287){
    text(jc14,50,-100,400,400);
  }
  
  if (mouseX>=750 && mouseX<=795 && mouseY<=300 && mouseY>=256){
    text(jc15,50,-100,400,400);
  }
  
  //mouse over for the type stats
  String jt1 = join(t1," ");
  String jt2 = join(t2," ");
  String jt3 = join(t3," ");
  String jt4 = join(t4," ");
  String jt5 = join(t5," ");
  String jt6 = join(t6," ");
  String jt7 = join(t7," ");
  
  if (mouseX>=50 && mouseX<=85 && mouseY<=500 && mouseY>=459){
    text(jt1,400,250,400,400);
  }
  if (mouseX>=90 && mouseX<=125 && mouseY<=500 && mouseY>=480){
    text(jt2,400,250,400,400);
  }
  if (mouseX>=130 && mouseX<=165 && mouseY<=500 && mouseY>=495){
    text(jt3,400,250,400,400);
  }
  if (mouseX>=170 && mouseX<=205 && mouseY<=500 && mouseY>=487){
    text(jt4,400,250,400,400);
  }
  if (mouseX>=210 && mouseX<=245 && mouseY<=500 && mouseY>=496){
    text(jt5,400,250,400,400);
  }
  if (mouseX>=250 && mouseX<=285 && mouseY<=500 && mouseY>=492){
    text(jt6,400,250,400,400);
  }
  if (mouseX>=290 && mouseX<=325 && mouseY<=500 && mouseY>=490){
    text(jt7,400,250,400,400);
  }
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
