class CollisonShapes {
  int x; 
  int y;
  int w = 100 ; // Remember this is the width, it can be used for sizing images 
  int h = 100;// Remember this is the height
  int speedX; // this is the speed in X direction
  int speedY; // this is 
  PImage img1, img2, img3, img4; // these are the images name that I am going to use and call upon 

CollisonShapes( int x, int y, int dx,int dy) // next we need to make our constructor
{
  this.x = x;
  this.y = y;
  this.speedX = dx; // speedX is now known as dx
  this.speedY= dy; // speedY is no known as dy
  img1 = loadImage("data/bouncerne.png"); //images get loaded
  img2 = loadImage("data/bouncernw.png"); // the image will be under the vairble of img1,img2... etc
  img3= loadImage ("data/bouncerse.png");
  img4= loadImage("data/bouncersw.png");
  img1.resize(w,h); // the width and height is passed down here,
  img2.resize(w,h);//so width is 100 and height is 100.
  img3.resize(w,h);
  img4.resize(w,h);
}

void render() // this is the render of the image 
{
 if (speedX<0 && speedY<0) // so if speed in the x and y direction is less than 0 then img1 shows in the x,y
 {image(img1,x,y);} // image will be shown when ^^^^
 else if (speedX>0 && speedY>0) // if speed in the x and y direction is greater than 0 then img2 shows in the x,y 
 {image(img2,x,y);}
 else if (speedX>0 && speedY<0) // if speedX is more than 0 and speedY less than 0 then show img3
 {image(img3,x,y);} // if speedX or Y isn't anything equal or greater or less than 0 then just show img4
 else{image(img4,x,y);}
  
}

void move() // this how the shapes will move
{
  x= x+speedX; // when x + speedX, direction it is moving at + the direction speed
  y= y+speedY; // when y + speedy, direction it is moving at + the direction speed
 
}

void update() // when called upon void update will load up the render, move and boundries
{
  render(); // image will be shown
  move(); // how the image will move
  boundries(); // what will happen when images hits the boundies otherwise know as the side of screen
  
}

void boundries()
{ 
  if (x<=width -100) // if there is a collison at the side on the x axis then the object would bounce back
  {speedX= -speedX;}// the outcome if the object hits the boundry is that  it will bounce back
  if (x>=0) // if x axis is equal to 0 then the object will repell 
  {speedX= -speedX;}
  if (y >=0) //if y axis is equal to 0 then the object will repell 
  {speedY=-speedY;}
  if (y<=height -100) //if there is a collison on the y axis then the object would bounce back when it hits it
  {speedY= -speedY;}
}


void bounceback()
{
  speedX = -speedX; //if hit then it bounce back, -speedX is to send it back
  speedY = -speedY;//if hit then it bounce back, -speedY is to send it back
}
 
boolean edgeCollsion (CollisonShapes other)
{
  return (abs(this.x-other.x) <100 && abs(this.y-other.y) <100); // if object's x and y are within 100 of each other then they should repell away 
}
}
