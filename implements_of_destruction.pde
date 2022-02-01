
//enter: combat mechanics
//nothing wotc-level, i'm just talkin like
//basic hp stuff lol

public class wephon {

  public int shottimer;
  public int threshold;
  public int projspeed;

  public wephon() {
    shottimer = 0;
    threshold = 30;
    projspeed = 7;
  }

  public wephon(int fast, int zoooom) {
    shottimer = 0;
    threshold = fast;
    projspeed = zoooom;
  }

  public void shoot() {
    if (shottimer >= threshold) {
      PVector aimvector = new PVector(mouseX-huebert.loc.x, mouseY-huebert.loc.y);
      aimvector.setMag(projspeed);
      myObjects.add(new bullette(aimvector, 10));
      shottimer = 0;
      //println("pew");
    }
  }

  public void tick() {
    shottimer++;
  }
}


//bullets!
//they shoot u and you die

public class bullette extends GameObject {

  int size;
  //roomx and y from superclass

  public bullette(PVector aim, int _size) {
    hp = 1;
    loc = new PVector(huebert.loc.x, huebert.loc.y);
    vel = aim;
    size = _size;
    roomX = huebert.roomX;
    roomY = huebert.roomY;
  }

  public void show() {
    noStroke();
    fill(255);
    //circle(loc.x, loc.y, size);
    image(barf, loc.x, loc.y, 30, 30);
    //he's shooting lembas
    //presumably out of his stomach
  }

  public void act() {
    super.act();
    //if it hits stuff
    if (this.loc.y <= height*0.07 || this.loc.y >= height*0.93 || this.loc.x <= width*0.06 || this.loc.x >= width*0.94) {
      //splat!!!
      this.hp--;
    }
  }
  
}


  // more weapons!!!!
  public class multigun extends wephon {

    public multigun() {
      super(40, 5);
    }
    //multiple bullets?
    void shoot() {
      PVector aimvector = new PVector(mouseX-huebert.loc.x, mouseY-huebert.loc.y);
      PVector aim2 = new PVector(mouseX+30-huebert.loc.x, mouseY+30-huebert.loc.y);
      PVector aim3 = new PVector(mouseX-30-huebert.loc.x, mouseY-30-huebert.loc.y);
      aim2.setMag(5);
      aim3.setMag(5);

      if (shottimer >= threshold) {
        aimvector.setMag(projspeed);
        myObjects.add(new bullette(aimvector, 10));
        myObjects.add(new bullette(aim2, 10));
        myObjects.add(new bullette(aim3, 10));
        shottimer = 0;
      }
    }
  }

  public class gatling extends wephon {
    public gatling() {
      super(20, 10);
    }
  }
