import controlP5.*;
ControlP5 cp5;

int xwidth = 30;
int ywidth = 30;
int knob = 0;

void setup() {
	size(512, 512);

	  //____________________generate sliders_____________________________//

  cp5 = new ControlP5(this);
  // the value of slider is linked
  // to variable "sliderValue" 

  cp5.addSlider("xwidth")
  .setSize(250, 20)
    .setPosition(10, 30)
      .setRange(1, 150)
        ;
  cp5.addSlider("ywidth")
  .setSize(250, 20)
    .setPosition(10, 80)
      .setRange(0, 150)
        ;
        cp5.addKnob("knob")
               .setRange(0,255)
               .setValue(50)
               .setPosition(30,130)
               .setRadius(30)
               .setDragDirection(Knob.VERTICAL)
               ;


}

void draw() {
	background(0);
	fill(knob);
	ellipse(width/2, height/2,xwidth,ywidth);
}