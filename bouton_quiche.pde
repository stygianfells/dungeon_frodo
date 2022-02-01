
//issa button
//n u press it
class Button {
  boolean clicked;
  color colour, highlighted;
  float x, y, w, h;
  String text;

  public Button(color colourP, color highlightedP, float xP, float yP, float wP, float hP, String textP) {
    colour = colourP;
    highlighted = highlightedP;
    x = xP;
    y = yP;
    w = wP;
    h = hP;
    text = textP;
  }

  void show() {
    textAlign(CENTER, CENTER);
    stroke(255);
    strokeWeight(7);
    fill(colour);
    if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
      fill(highlighted);
    }
    rect(x, y, w, h);
    fill(255);
    text(text, x+w/2, y+h/2);

    if (released && mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) clicked = !clicked;
    if (clicked) mode++;
  }
}

void keyPressed() {
  if (key=='w' || key=='W') w = true;
  if (key=='a' || key=='A') a = true;
  if (key=='s' || key=='S') s = true;
  if (key=='d' || key=='D') d = true;
    if (key == ' ') space = true;
}

void keyReleased() {
  if (key=='w' || key=='W') w = false;
  if (key=='a' || key=='A') a = false;
  if (key=='s' || key=='S') s = false;
  if (key=='d' || key=='D') d = false;
  if (key == ' ') space = false;
}
