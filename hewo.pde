
class Hero extends GameObject {
  float speed;
  wephon equipped;

  //our dear ringbearer
  Hero() {
    super();
    hp = 100;
    speed = 8;
    roomX = 1;
    roomY = 1;
    equipped = new gatling();
  }

  void show() {
    strokeWeight(2);
    stroke(0);
    noFill();
    //circle(loc.x, loc.y, 20);
    image(frodo, loc.x, loc.y, 80, 80);
  }

  void act() {
    super.act();
    
    //firing weapon
    equipped.tick();
    if (space) {
      equipped.shoot(); 
    }

    //local movement
    if (w) vel.y = -speed;
    if (s) vel.y = speed;
    if (a) vel.x = -speed;
    if (d) vel.x = speed;
    //because im neurotic
    if (vel.mag() > speed) vel.setMag(speed);
    if (!w && !s) vel.y = 0;
    if (!a && !d) vel.x = 0;

    //vwoop vwoop
    if (northRoom != #FFFFFF && loc.x >= width/2-75 && loc.x <= width/2+75 && loc.y <= height*0.1) {
      roomY--;
      loc = new PVector(width/2, height*0.9-10);
    }
    else if (eastRoom != #FFFFFF && loc.x >= width*0.9 && loc.y >= height/2-75 && loc.y <= height/2+75) {
      roomX++;
      loc = new PVector(width*0.1+10, height/2);
    }
    else if (southRoom != #FFFFFF && loc.x >= width/2-75 && loc.x <= width/2+75 && loc.y >= height*0.9) {
      roomY++;
      loc = new PVector(width/2, height*0.1+10);
    }
    else if (westRoom != #FFFFFF && loc.x <= width*0.1 && loc.y >= height/2-75 && loc.y <= height/2+75) {
      roomX--;
      loc = new PVector(width*0.9-10, height/2);
    }
  }
  
}
