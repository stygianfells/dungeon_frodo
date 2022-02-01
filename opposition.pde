
class gary extends GameObject {

  float size;
  int roomx, roomy;
  String name;

  gary(int rx, int ry, int locx, int locy, int _size, String _name) {
    loc = new PVector(locx, locy);
    vel = new PVector(0, 0);
    hp = 50;
    roomX = rx;
    roomY = ry;
    size = _size;
    name = _name;
  }

  void show() {
    if (this.roomX == huebert.roomX && this.roomY == huebert.roomY) {
      fill(0, 255, 0);
      stroke(0);
      circle(loc.x, loc.y, size);
      fill(255);
      textSize(size/3);
      text(name, loc.x, loc.y);
    }
  }

  void act() {
    if (this.roomX == huebert.roomX && this.roomY == huebert.roomY) {
      size+=0.5;
      if (dist(huebert.loc.x, huebert.loc.y, this.loc.x, this.loc.y) <= this.size) {
        huebert.hp--;
      }
      //if (dist(this.loc.x, this.loc.y, gary.loc.x, gary.loc.y) <= this.size) gary.hp--;
    }
  }
}
