public float a = 72;
 public float interval = 15;
 public void setup()
{
 size(850,850);
 background(255);
 frameRate(1200);
 
}
public void draw()
{
  
  background(255);
  if( a < 400)
  {
   
sier(255,a,a,300);

a = a + interval;
interval = interval/1.001;

  }
  else
  {
  a = 72;
 interval = 1;
  }
}
void mouseClicked() {
  System.out.println(mouseX);
  System.out.println(mouseY);
}
public void mouseDragged()//optional
{

}
public void sier(int a, float x, float y, float len) 
{
  fill(250-a,250,250-a,400/75);
  stroke(150-a,150 - a,210);
  square(x * 2,y * 2,(len));
   square((300 - x) * 2,(300 - y) * 2,(len));
   square( x * 2,(300 - y) * 2,(len));
   square((300 - x) * 2,y * 2,(len));
 if(len > 50)
 {
   sier(a-(mouseX + mouseY/2),(x/1.1) ,(y/1.1) ,(len/1.005));
   

 
 
 } 
}
