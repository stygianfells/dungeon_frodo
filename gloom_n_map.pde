
//yonder, the bricks
//of darkness
class Darknessbrick {
  float opacity;
  float x, y, size;

  public Darknessbrick(float px, float py, float ps) {
    size = ps;
    x = px;
    y = py;
    opacity = 100;
  }

  void show() {
    for (y = 0; y <= height; y += size) {
      for (x = 0; x <= width; x += size) {
        float d = dist(huebert.loc.x, huebert.loc.y, this.x, this.y);
        opacity = map(d, 0, 750, 0, 255);
        noStroke();
        fill(0, opacity);
        square(x, y, size);
      }
    }
  }
}


//minimap class
//I know it didn't have to be a class but
//once you go object-oriented you can't go back

public class mapmini {
  private int size = 7;
  private int farfrom = 0;
  
  public mapmini(int far) {
    farfrom = far;
  }

  public void show() {
    for (int i = 0; i < map.height; i++) {
      for (int j = 0; j < map.width; j++) {
        color skware = map.get(j, i);
        noStroke();
        fill(skware, 200);
        if (j==huebert.roomX && i==huebert.roomY) fill(245, 147, 67);
        square(j*size+farfrom, i*size+farfrom, size);
      }
    }
  }
}
