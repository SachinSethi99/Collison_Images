CollisonShapes obj1; //the images will be known as obj1,2... because it is a suitable name
CollisonShapes obj2; // when I need to call upon them I'd need to use obj1
CollisonShapes obj3;
CollisonShapes obj4;

void setup() // setting my shapes postion, speeds and canvas size
{
  size (750,750); // size of the canvas
  obj1 = new CollisonShapes (500,500,3,3); // (x,y,speedX,speedY)
  obj2 = new CollisonShapes (240,100,5,2);
  obj3 = new CollisonShapes (375,420,8,1);
  obj4 = new CollisonShapes (100,50,1,4);
}

void draw () // this is where the objects collison will be drawn out on
{
 background (255); // the background colour is white 
 obj1.update(); //void draw will display the contents of what is inside of void update in the second tab
 obj2.update(); 
 obj3.update(); 
 obj4.update(); 
 
 if (obj1.edgeCollsion(obj2)){ //if obj1 hits obj2 then obj1 will bounce away, this is same situration for the rest of the objects when the collide with each other
    obj1.bounceback();
  }
  if (obj1.edgeCollsion(obj3)){
    obj1.bounceback();
  }
  if (obj1.edgeCollsion(obj4)){
    obj1.bounceback();
  }
  // second ball
  if (obj2.edgeCollsion(obj1)){
    obj2.bounceback();
  }
  if (obj2.edgeCollsion(obj3)){
    obj2.bounceback();
  }
  if (obj2.edgeCollsion(obj4)){
    obj2.bounceback();
  }
  // third ball
  if (obj3.edgeCollsion(obj2)){
    obj3.bounceback();
  }
  if (obj3.edgeCollsion(obj1)){
    obj3.bounceback();
  }
  if (obj3.edgeCollsion(obj4)){
    obj3.bounceback();
  }
  // fourth ball
  if (obj4.edgeCollsion(obj2)){
    obj4.bounceback();
  }
  if (obj4.edgeCollsion(obj3)){
    obj4.bounceback();
  }
  if (obj4.edgeCollsion(obj1)){
    obj4.bounceback();
  }
}
