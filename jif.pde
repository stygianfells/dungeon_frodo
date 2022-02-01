
class Gif {
  PImage[] gif;
  int frames, cuFrame;

  public Gif(int numframes, String spre, String spost) {
    frames = numframes;
    pre= spre;
    post = spost;
    gif = new PImage[frames];

    int i=0;
    while (i<frames) {
      gif[i] = loadImage(pre+i+post);
      i++;
    }
    cuFrame = 0;
  }

  void show() {
    imageMode(CENTER);
    //int mod = 0;
    //if (0 < mod && mod < frames) mod++;
    //if (mod > frames) mod--;
    if (cuFrame == frames) cuFrame = 0;
    image(gif[cuFrame], width/2, height/2-50, width/2, height/2+100);
    cuFrame++;
  }
}
