int amount = 1500;
PVector[] position;
PVector[] velocity;
int[] limit; 
float x; 
float y; 
float z;

void setup() 
{
  //size(800, 800, P3D);
  fullScreen(P3D);

  position = new PVector[amount];
  velocity = new PVector[amount];
  limit = new int[amount];

  for ( int i = 0; i < amount; i++) 
  {
    position[i] = new PVector(0, 0);
    if (i < amount/2) 
    {
      velocity[i] = new PVector(random(-2, 2), random(-10, -5));
      limit[i] = int(random(50, 100));
    } else 
    {
      velocity[i] = new PVector(0, 0);
      limit[i] = int(random(0, 50));
    }
  }
}


void draw() 
{
  background(0);

  translate(width/2, height/2);
  rotateY(radians(1+mouseX/3));

  stroke(255);
  strokeWeight(2);

  for ( int i = 0; i < amount; i++) 
  {
    stroke(121, 39, 255);
    point( position[i].x + width/2-9000, position[i].y + height);
    stroke(39, 137, 255);
    point( position[i].x + width/2-8000, position[i].y + height);
    stroke(39, 255, 239);
    point( position[i].x + width/2-7000, position[i].y + height);  

    stroke(121, 39, 255);
    point( position[i].x + width/2-6000, position[i].y + height);
    stroke(39, 137, 255);
    point( position[i].x + width/2-5000, position[i].y + height);
    stroke(39, 255, 239);
    point( position[i].x + width/2-4000, position[i].y + height);    

    stroke(121, 39, 255);
    point( position[i].x + width/2-3000, position[i].y + height);
    stroke(39, 137, 255);
    point( position[i].x + width/2-2000, position[i].y + height);
    stroke(39, 255, 239);
    point( position[i].x + width/2-1000, position[i].y + height);

    stroke(121, 39, 255); //purple
    point( position[i].x + width/2, position[i].y + height);
    stroke(39, 137, 255); //blue
    point( position[i].x + width/2-500, position[i].y + height);
    stroke(39, 255, 239); //green
    point( position[i].x + width/2+500, position[i].y + height);

    stroke(121, 39, 255);
    point( position[i].x + width/2+2500, position[i].y + height);
    stroke(39, 137, 255);
    point( position[i].x + width/2+1500, position[i].y + height);
    stroke(39, 255, 239);
    point( position[i].x + width/2+3500, position[i].y + height);

    stroke(121, 39, 255);
    point( position[i].x + width/2+5500, position[i].y + height);
    stroke(39, 137, 255);
    point( position[i].x + width/2+4500, position[i].y + height);
    stroke(39, 255, 239);
    point( position[i].x + width/2+6500, position[i].y + height);

    stroke(121, 39, 255);
    point( position[i].x + width/2+8500, position[i].y + height);
    stroke(39, 137, 255);
    point( position[i].x + width/2+7500, position[i].y + height);
    stroke(39, 255, 239);
    point( position[i].x + width/2+9500, position[i].y + height);
    
    ////////
    
    stroke(121, 39, 255);
    point( position[i].x + width/2-9000, position[i].y);
    stroke(39, 137, 255);
    point( position[i].x + width/2-8000, position[i].y);
    stroke(39, 255, 239);
    point( position[i].x + width/2-7000, position[i].y);  

    stroke(121, 39, 255);
    point( position[i].x + width/2-6000, position[i].y);
    stroke(39, 137, 255);
    point( position[i].x + width/2-5000, position[i].y);
    stroke(39, 255, 239);
    point( position[i].x + width/2-4000, position[i].y);    

    stroke(121, 39, 255);
    point( position[i].x + width/2-3000, position[i].y);
    stroke(39, 137, 255);
    point( position[i].x + width/2-2000, position[i].y);
    stroke(39, 255, 239);
    point( position[i].x + width/2-1000, position[i].y);

    stroke(121, 39, 255); //purple
    point( position[i].x + width/2, position[i].y);
    stroke(39, 137, 255); //blue
    point( position[i].x + width/2-500, position[i].y);
    stroke(39, 255, 239); //green
    point( position[i].x + width/2+500, position[i].y);

    stroke(121, 39, 255);
    point( position[i].x + width/2+2500, position[i].y);
    stroke(39, 137, 255);
    point( position[i].x + width/2+1500, position[i].y);
    stroke(39, 255, 239);
    point( position[i].x + width/2+3500, position[i].y);

    stroke(121, 39, 255);
    point( position[i].x + width/2+5500, position[i].y);
    stroke(39, 137, 255);
    point( position[i].x + width/2+4500, position[i].y);
    stroke(39, 255, 239);
    point( position[i].x + width/2+6500, position[i].y);

    stroke(121, 39, 255);
    point( position[i].x + width/2+8500, position[i].y);
    stroke(39, 137, 255);
    point( position[i].x + width/2+7500, position[i].y);
    stroke(39, 255, 239);
    point( position[i].x + width/2+9500, position[i].y);
  }

  for ( int i = 0; i < amount; i++) 
  {
    position[i].add(velocity[i]);
    limit[i] -= 1;

    if (limit[i] < 0) 
    {
      velocity[i] = new PVector(random(-2, 2), random(-10, -5));
      position[i] = new PVector(0, 0, 0);
      limit[i] = int(random(50, 150));
    }
  }
}