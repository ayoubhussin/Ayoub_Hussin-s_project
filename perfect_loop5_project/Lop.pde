class Lop {
  float sw,alpha;
  float yStep=10;
  float arcsize= 200;
  ;
  void draw()
  {
    background(255);
mouseY = constrain(mouseY,10,height);
    mouseX = constrain(mouseX,10,width);
  yStep= mouseY;
  arcsize= mouseX;
  
  
    noFill();
    stroke(20);
    strokeWeight(6);
   
     for(int y=0; y<height; y+=yStep){
       sw= map(sin(radians(y-alpha)),-1,1,2,yStep);
       strokeWeight(sw);
       for(int x=0; x<width+arcsize; x+=arcsize){
      arc(x,y,arcsize/2,arcsize/2,0,3.14);
         arc(x+arcsize/2,y,arcsize/2,arcsize/2,3.14,3.14*2);
  }
     
}
alpha++;
}

}
