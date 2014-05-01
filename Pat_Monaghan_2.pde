//MAZE
PImage img;
PFont f;
color wall = color(0);
boolean won = false;
float speed = 3;

// Set a speed variable
float numPixels = 25;

// Set our starting position
float xPosition = 25;
float yPosition = 25;
float xpos, ypos;  

void setup()
{
  size(500, 500);
  smooth();
  {
    f = loadFont("Georgia-24.vlw");
  }
  {
    img = loadImage("pinhole.jpg");
  }
}

// Draw loop
void draw()
{

  // Clear the background
  {
    background(255);
    //Let's ask the computer a question
    if (xPosition == width) 
    {

      xPosition = xPosition - numPixels;
    }
    if (xpos < 0)
    {
      xPosition = xPosition + numPixels;
    }
    if (yPosition == height) 
    {
      yPosition = yPosition - numPixels;
    }
    if (ypos < 0)
    {
      yPosition = yPosition + numPixels;
    }
  }
  {
    if (won = false);
    {
      image(img, xPosition - 1000, yPosition - 1000);
    }
    {
      {

        // Draw a circle
        noStroke();
        fill(0, 200, 200);
        frameRate(30);
        ellipseMode(CENTER);
        ellipse(xPosition, yPosition, 25, 25);

        //border
        fill(0);
        stroke(10);
        line(0, 0, 0, 499);
        line(0, 499, 499, 499);
        line(499, 499, 499, 0);
        line(0, 0, 499, 0);

        //top left-start
        //horizontal
        line(0, 100, 50, 100);
        line(50, 50, 100, 50);
        line(150, 50, 700, 50);
        line(100, 100, 150, 100);
        line(50, 150, 100, 150);
        line(0, 250, 200, 250);
        line(150, 150, 200, 150);
        line(200, 200, 300, 200);
        line(350, 300, 400, 300);
        line(300, 250, 350, 250);
        line(200, 300, 300, 300);
        line(500, 200, 450, 200);
        line(450, 250, 400, 250);
        line(450, 300, 500, 300);
        line(400, 100, 450, 100);
        line(400, 400, 500, 400);
        line(400, 350, 450, 350);
        line(350, 450, 250, 450);
        line(100, 350, 250, 350);
        line(100, 300, 50, 300);
        line(50, 450, 200, 450);
        line(50, 400, 150, 400);
        line(400, 399, 500, 399);

        //vertical
        line(100, 50, 100, 150);
        line(50, 150, 50, 200);
        line(100, 250, 100, 200);
        line(150, 100, 150, 200);
        line(200, 150, 200, 200);
        line(200, 100, 200, 150);
        line(250, 50, 250, 150);
        line(200, 250, 200, 300);
        line(300, 200, 300, 100);
        line(400, 100, 400, 400);
        line(350, 150, 350, 400);
        line(250, 300, 250, 200);
        line(450, 200, 450, 150);
        line(400, 450, 400, 500);
        line(350, 400, 350, 450);
        line(300, 300, 300, 400);
        line(250, 450, 250, 350);
        line(150, 250, 150, 300);
        line(50, 300, 50, 450);
        line(200, 500, 200, 450);
        line(200, 400, 200, 450);
        line(399, 450, 399, 500);

        {
          textFont(f, 24);
          stroke(1);
          fill(0);
          text("Start", 25, 45);
        }
        {
          fill(150);
          noStroke();
          rect(0, 0, 0, 50);
          {
            fill(255, 255, 0);
            noStroke();
            rect(402, 402, 499, 499);
            textFont(f, 24);
            {
              stroke(1);
              fill(0);
              text("Finish", 420, 455);
            }
          }
        }
        {
          color c = get((int)xPosition, (int)yPosition);
          println(c);
          if (c == - 256)
          {
            won = true; 
            {
              background(255);
             {
                noStroke();
                fill(255);
                frameRate(30);
                ellipseMode(CENTER);
              }
              {
                stroke(1);
                fill(0);
                text("Congratulations", 100, 200);
                text("Press Spacebar to Play Again", 100, 300);
              }
              ellipse(xPosition, yPosition, 25, 25);
            }
          }
        }
      }
      // Draw a circle
      noStroke();
      fill(0, 200, 200);
      frameRate(30);
      ellipseMode(CENTER);
      ellipse(xPosition, yPosition, 25, 25);
    }
  }
}


// If a key has been pressed
void keyPressed()
{
  // Check if the key is coded
  if (key == CODED)
  {
    // UP key
    if (keyCode == UP)
    {
      yPosition = yPosition - numPixels; 
      color c = get((int)xPosition, (int)yPosition);
      println(c);
      if (c == - 16119286)
      {
        yPosition = yPosition + numPixels;
      }
      if ((c == 723723) || (c == 1644825))
      {
        yPosition = yPosition + numPixels;
      }
    }

    // DOWN key
    if (keyCode == DOWN)
    {
      yPosition = yPosition + numPixels; 
      color c = get((int)xPosition, (int)yPosition);
      println(c);
      if (c == - 16119286)
      {
        yPosition = yPosition - numPixels;
      }
      if ((c == 723723) || (c == 1644825))
      {
        yPosition = yPosition - numPixels;
      }
    }

    // RIGHT key
    if (keyCode == RIGHT)
    {
      xPosition = xPosition + numPixels; 
      color c = get((int)xPosition, (int)yPosition);
      println(c);
      if (c == - 16119286)
      {
        xPosition = xPosition - numPixels;
      }
      if ((c == 723723) || (c == 1644825))
      {
        xPosition = xPosition - numPixels;
      }
    }

    // LEFT key
    if (keyCode == LEFT)
    {
      xPosition = xPosition - numPixels; 
      color c = get((int)xPosition, (int)yPosition);
      println(c);
      if (c == - 16119286)
      {
        xPosition = xPosition + numPixels;
      }
      if ((c == 723723) || (c == 1644825))
      {
        xPosition = xPosition + numPixels;
      }
      if (c == - 256)
      {
      }
    }
  }
  {
    if (key == ' ')
    {
      xPosition = 25;
      yPosition = 25;
      image(img, xPosition - 950, yPosition - 950);
    }
  }
}

