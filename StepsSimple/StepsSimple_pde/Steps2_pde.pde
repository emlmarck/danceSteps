import controlP5.*; 
ControlP5 cp5;

void setup() {
  size(512, 512);

  //____________________generate sliders_____________________________//

  cp5 = new ControlP5(this);
  // the value of slider is linked
  // to variable "sliderValue" 
  cp5.addSlider("xdim")
    .setColorForeground(color(255, 0, 0))
      .setSize(250, 20)
        .setPosition(10, 50)
          .setRange(1, 255)
            ;
  cp5.addSlider("ydim")
    .setColorForeground(color(0, 255, 0))
      .setSize(250, 20)
        .setPosition(10, 70)
          .setRange(1, 255)
            ;
  cp5.addSlider("zdim")
    .setColorForeground(color(0, 0, 255))
      .setSize(250, 20)
        .setPosition(10, 90)
          .setRange(1, 255)
            ;
  cp5.addSlider("zoom")
    .setSize(250, 20)
      .setPosition(10, 110)
        .setRange(-500, 500)
          ;
  cp5.addSlider("spinY")
    .setSize(250, 20)
      .setPosition(10, 130)
        .setRange(0, 360)
          ;
  cp5.addSlider("spinX")
    .setSize(250, 20)
      .setPosition(10, 150)
        .setRange(0, 360)
          ;
  cp5.addToggle("shaded")
    .setPosition(10, 170)
      .setSize(50, 20)
        .setValue(true)
          .setMode(ControlP5.SWITCH)
            ;
}

void draw() {
  background(0);
}

