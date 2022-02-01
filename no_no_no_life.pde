
//no no no no no no no
//i couldn't do it

//mode stuff
final int intro=0, playing=1, pause=2, win=3, lose=4;
int mode=0;
ArrayList<GameObject> myObjects;
//objects ig
Hero huebert;
gary one, two, three, four, five;
Darknessbrick darkness;
//louis buttons
boolean hadpressed, released;
Button playbutton;
boolean w, a, s, d, space;
//gifs
//String pre = "frame_", post = "_delay-0.06s.png";
String pre = "sting_", post = ".png";
Gif giffy;
//map
PImage map, frodo, barf;
color northRoom, eastRoom, southRoom, westRoom;
mapmini mmap;

void setup() {
  size(1000, 600);
  playbutton = new Button(100, 150, width/2-100, height/2+50, 200, 100, "PLY GMAEM ;-;;;");
  //entities
  huebert = new Hero();
  gary one = new gary(2, 1, 400, 400, 60, "Gary");
  gary two = new gary(8, 7, width/2, height/2, 80, "Gerold");
  gary three = new gary(1, 5, 600, 300, 30, "Garrett");
  gary four = new gary(5, 4, 200, 100, 50, "Guy");
  gary five = new gary(3, 6, 800, 200, 100, "Gurney");
  //objects, my
  ArrayList garylist = new ArrayList<gary>();
  garylist.add(one);
  garylist.add(two);
  garylist.add(three);
  garylist.add(four);
  garylist.add(five);
  myObjects = new ArrayList<GameObject>();
  myObjects.add(huebert);
  myObjects.add(one);
  myObjects.add(two);
  myObjects.add(three);
  myObjects.add(four);
  myObjects.add(five);
  //giffies
  giffy = new Gif(40, pre, post);
  //coloUrs
  northRoom = #FFFFFF;
  eastRoom = #FFFFFF;
  southRoom = #FFFFFF;
  westRoom = #FFFFFF;
  map = loadImage("map.png");
  //other objs
  darkness = new Darknessbrick(0, 0, 5);
  mmap = new mapmini(40);
  frodo = loadImage("frodo.png");
  barf = loadImage("barf.png");
}

void draw() {
  //mode-us operandi
  if (mode == intro) intro();
  else if (mode == playing) playing();
  else if (mode == pause) pause();
  else if (mode == win) win();
  else if (mode == lose) lose();
  else println("mate check your fucking mode why is it "+mode);
  //System.out.println(huebert.hp);

  //button
  if (mousePressed) hadpressed = true;
  if (hadpressed && !mousePressed) {
    released = true;
    hadpressed = false;
  } else if (released) released = false;
}
