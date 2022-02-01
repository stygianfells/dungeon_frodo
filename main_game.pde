
void playing() {
  background(227, 211, 172);
  room();
  darkness.show();

  int i = 0;
  while (i < myObjects.size()) { 
    GameObject myObj = myObjects.get(i);
    myObj.show();
    myObj.act();
    if (myObj.hp == 0) myObjects.remove(i);
    else i++;
  }
  
  mmap.show();
}

void room() {
  rectMode(CENTER);
  stroke(0);
  strokeWeight(1);
  line(0, 0, width, height);
  line(width, 0, 0, height);

  fill(0, 150);
  //exits
  northRoom = map.get(huebert.roomX, huebert.roomY-1);
  eastRoom = map.get(huebert.roomX+1, huebert.roomY);
  southRoom = map.get(huebert.roomX, huebert.roomY+1);
  westRoom = map.get(huebert.roomX-1, huebert.roomY);

  if (northRoom != #FFFFFF) {
    rect(width/2, height*0.1, 150, 100);
  }
  if (eastRoom != #FFFFFF) {
    rect(width*0.9, height/2, 150, 150);
  }
  if (southRoom != #FFFFFF) {
    rect(width/2, height*0.9, 150, 100);
  }
  if (westRoom != #FFFFFF) {
    rect(width*0.1, height/2, 150, 150);
  }

  fill(227, 211, 172);
  rect(width/2, height/2, width*0.9, height*0.9);
  rectMode(CORNER);
  
  if (huebert.hp <= 0) mode = lose;
}
