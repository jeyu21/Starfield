Particle[] bean;



void setup()
{
	size(500,500);
	background(0);
	bean= new Particle[300];
	for(int i=0;i<bean.length;i++){
		bean[i]=new NormalParticle();
		bean[0]=new OddballParticle(300,100);
		bean[1]=new JumboParticle();
	}

	//your code here
}




void draw()
{
	background(0);
for(int i=0;i<bean.length;i++){
	bean[i].show();
	bean[i].move();
}
	//your code here
}




class NormalParticle implements Particle 
{
	double dSpeed, dX, dY, dTheta;
	int myColor;

	NormalParticle(){
	dX = 250;
	dY = 250;
	dSpeed = (double)Math.random()*1;
    dTheta = (double)Math.random()*(Math.PI*2);
	myColor = color((int)(Math.random()*251+100), (int)(Math.random()*251+100), (int)(Math.random()*251+100));
}

	public void move(){
		dX =  dX + (Math.cos(dTheta))*dSpeed;
		dY =  dY + (Math.sin(dTheta))*dSpeed;
	}
	public void show(){
		noStroke();
		fill(myColor);
		ellipse((float)dX,(float) dY, 5, 5);

	}
}




interface Particle
{
	public void show();
	public void move();
}





class OddballParticle implements Particle 
{
	double dSpeed, dX, dY, dTheta;
	int myColor;

	OddballParticle(int x, int y){
	dX = x;
	dY = y;
	dSpeed = (double)Math.random()*1;
    dTheta = (double)Math.random()*(Math.PI*2);
	myColor = color((int)(Math.random()*200+100), (int)(Math.random()*200+100), (int)(Math.random()*200+100));
}
	
	void show(){
		noStroke();
		rect((float)dX,(float) dY, 30, 30);

	}
	public void move(){
		dX =  dX + (Math.cos(dTheta))*dSpeed;
		dY =  dY + (Math.sin(dTheta))*dSpeed;
	}
}






class JumboParticle extends NormalParticle
{
	void show(){
		noStroke();
		fill(250, 250,250);
		ellipse(100, 200, 30, 30);
	}
	
}

