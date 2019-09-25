/*int rand;
void setup()
{
	size(100, 100);
}
void draw()
{
	rand=(int)(Math.random()*10+0.5);
	println(rand);
}*/
float endX, endY;
float centerX=250, centerY=250, rad=150;
float leng=150, wid=150, wit=150;
float base=150, mid=75*sqrt(3);
float startX=250, startY=250, circCount=0;
double randY;
boolean circ=false, rect=false,tri=true,rain=false;
int[] bottom={};
void setup()
{
	background(255,0,0);
	size(500, 500);
	frameRate(50);
}
void draw()
{
	// fill(255,0,0);
	// rect(0,0,500,500);
	// if(circCount%30==0)
	// {
	// 	rectBack();
	// }
	endRand();
	lineDraw();
}
void lineDraw()
{
	strokeWeight(1);
	if(rain==false)
	{
		stroke(0,0,0);
	}
	if(rain)
	{
		int a=(int)random(-1,256);
		int b=(int)random(-1,256);
		int c=(int)random(-1,256);
		stroke(a,b,c);
	}
	line(startX,startY,endX,endY);
	startX=endX;
	startY=endY;
	circCount++;
}
void endRand()
{
	if(circ)
	{
		endX=(float)random(centerX-rad, centerX+rad);
		randY=(int)random(1,3);
		if(randY==1)
		{
			endY=(sqrt(sq(rad)-sq(endX)+(2*centerX*endX)-sq(centerX)))+centerY;
		}else if(randY==2)
		{
			endY=(((sqrt(sq(rad)-sq(endX)+(2*centerX*endX)-sq(centerX)))*-1)+centerY);
		}
	}
	if(rect)
	{
		endX=(float)random(centerX-leng-10, centerX+leng+10);
		if(endX<=centerX-leng||endX>=centerX+leng)
		{
			if(endX<=centerX-leng)
			{
				endX=centerX-leng;
			}
			if(endX>=centerX+leng)
			{
				endX=centerX+leng;
			}
			endY=(float)random(centerY-wid, centerY+wid);
		}else if(endX>centerX-leng||endX<centerX+leng)
		{
			randY=(int)random(1,3);
			if(randY==1)
			{
				endY=centerY-wid;
			}
			if(randY==2)
			{
				endY=centerY+wid;
			}
		}
	}
	if(tri)
	{
		endX=(float)random(centerX-base, centerX+base);
		randY=Math.random()*10;
		//line(centerX-base, centerY+wid, centerX+base, centerY+wid);
		if(endX<=centerX)
		{
			endY=endX*-1.5+550;
			if(randY>5&&randY<6)
			{
				endY=centerY+wit;
			}
		}
		if(endX>centerX)
		{
			endY=endX*1.5-200;
			if(randY>5&&randY<6)
			{
				endY=centerY+wit;
			}
		}
		if(endX<=centerX-base||endX>=centerX+base)
		{
			if(endX<=centerX-base)
			{
				endX=centerX-base;
			}
			if(endX>=centerX+base)
			{
				endX=centerX+base;
			}
		}
	}
}
void rectBack()
{
	fill(255,0,0);
	rect(0, 0, 500, 500);
	noFill();
}
void keyPressed()
{
	switch(key)
	{
		case ' ':
			rectBack();
		break;
		case 'd':
			centerX+=5;
		break;
		case 'a':
			centerX-=5;
		break;
		case 's':
			centerY+=5;
		break;
		case 'w':
			centerY-=5;
		break;
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		case '8':
		case '9':
			if(circ)
			{
				rad=Integer.parseInt(Character.toString(key))*30;
			}
			if(rect)
			{
				leng=Integer.parseInt(Character.toString(key))*30;
				wid=Integer.parseInt(Character.toString(key))*30;
			}
			if(tri)
			{
				base=Integer.parseInt(Character.toString(key))*30;
				wit=Integer.parseInt(Character.toString(key))*30;
			}
		break;
		case 'f':
			rain=!rain;
		break;
		case 'q':
			exit();
		break;
		case 'e':
			circ=true;
			rect=false;
			tri=false;
		break;
		case 'r':
			circ=false;
			rect=true;
			tri=false;
		break;
		case 't':
			circ=false;
			rect=false;
			tri=true;
		break;
	}
}














/*
float x1=250;
float y1=250;
float x2=250;
float y2=250;
float radi;
void setup()
{
  size(250,250);
}
void draw()
{
  	float lin=jump();
  	x2=cos(lin);
  	y2=sin(lin);
  	fill(0,0,0);
  	line(x1,y1,x2,y2);
  	x1=x2;
  	y1=y2;
  	println(lin);
  	fill(255,255,255);
  	rect(0,0,250,250);
}
float jump()
{
	radi=random(0,2*PI);
	return radi;
}
*/


