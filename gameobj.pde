
class GameObject {
  int hp;
  PVector loc, vel;
  int roomX, roomY;
  //roomx and roomy eventually

  GameObject() {
    hp = 1;
    loc = new PVector (width/2, height/2);
    vel = new PVector (0, 0);
  }

  void show() {
  }

  void act() {
    loc.add(vel);

    if (loc.y < height*0.07) loc.y = height*0.07;
    if (loc.y > height*0.93) loc.y = height*0.93;
    if (loc.x < width*0.06) loc.x = width*0.06;
    if (loc.x > width*0.94) loc.x = width*0.94;
  }
}
