private double fractionLength = .8; 
private int smallestBranch = 30; 
private double branchAngle = 0.2;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(255);
  stroke(3);
  stroke(176,171,252);   
  line(320,480,320,380);   
  drawBranches(320,380, 120,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1= angle + branchAngle;
  double angle2= angle-branchAngle;
  branchLength = branchLength * fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
    line(x,y, endX1,endY1);
    line(x,y, endX2, endY2);
    
  if(branchLength > smallestBranch){
  drawBranches(endX1,endY1, branchLength-15, angle1-100);
  drawBranches(endX2, endY2, branchLength-15, angle2+100);
}
  
  //your code here    
} 
