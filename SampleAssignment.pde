float x1=250;
float y1=250;
float x2=250;
float y2=250;

void setup()
{
  size(250,250);
}
void draw()
{
  	int lin=jump();
  	println(lin);
}
float jump()
{
	float radi=Math.random(0,2PI);
	return radi;
}


