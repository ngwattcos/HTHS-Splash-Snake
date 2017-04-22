void setup() {
	// INSERT code for screen size under here

	// INSERT code for frame rate here
	
}

/////////////////////


// directions; up, down, left, or right
String direction = "right";

// Part A: INSERT code for tile size


int positionX = 3;
int positionY = 5;

int velocityX = 1;
int velocityY = 0;

int maxTilePosX = 900/tileSize;
int maxTilePosY = 600/tileSize;

int foodX = round(random(0, maxTilePosX - 1));
int foodY = round(random(0, maxTilePosY - 1));


int frameNum = 0;

int updateFrame = 10;	// 3 times per second

boolean changedDirection = false;
boolean alive = true;

// we use ArrayList because our snake needs to grow!
ArrayList<int[]> snake = new ArrayList<int[]>();

///////////////////
// this is the main game loop that is called
// 30 frames per second
void draw() {
	// Part B: initialize the head of the snake
	if (frameNum == 0) {
		snake.add(new int[] {positionX, positionY});
	}
	
	///////////////////
	// deal with keyboard input
	if (keyPressed && !changedDirection) {
		// Part C: add code to change the snake's direction

		changedDirection = true;
	}

	///////////////////
	// Part D: change direction of velocity


	/////////////////////////////////////////////////////////////////////////////
	// Part E: make the update loop run every 10 frames
	if (.............) {
		changedDirection = false;

		//////////////////////////////////
		////// Snake Movement
		if (alive) {
			// Part F1 - move each body segment to the next body segment's position.
			

			// move "head" last (in the velocity's direction)
			snake.get(0)[0] += velocityX;
			snake.get(0)[1] += velocityY;

			///////////////////
			// allow body parts to cross walls
			for (int i = 0; i < snake.size(); i++) {
				if (snake.get(i)[0] < 0) {
					snake.get(i)[0] += maxTilePosX;
				}
				if (snake.get(i)[0] > maxTilePosX - 1) {
					snake.get(i)[0] -= maxTilePosX;
				}
				if (snake.get(i)[1] < 0) {
					snake.get(i)[1] += maxTilePosY;
				}
				if (snake.get(i)[1] > maxTilePosY - 1) {
					snake.get(i)[1] -= maxTilePosY;
				}
			}



			/////////////////////////////////////////
			// Part G: Eat
			// check if has "eaten" food
			

			//////////////////////////////////////
			// do not eat thyself!
			for (int i = 1; i < snake.size(); i++) {
				// if the head collides with any part of the body
				// Part H
				if (..............) {
					// snake causes an ouroboros, you get a domain error, and you die
					alive = .......;
				}
			}
		}


	}

	//////////////////////////////////////////////

	background(255, 255, 255);
	////////////////
	// draw the snake first
	strokeWeight(10);
	stroke(255, 255, 255);
	// Part I-1: color the body segments of the snake
	fill(..., ..., ...);
	for (int i = 0; i < snake.size(); i++) {
		// Part I-2: draw the snake body
		rect(......,
			......,
			xxxxxx, xxxxxx);
	}

	// Part I-3: draw the food
	fill(xxxxxx, xxxxxx, xxxxxx);
	rect(tileSize * ......, tileSize * ......, tileSize, tileSize);

	//////////////////////////////////
	// Part J: Game Over Screen
	if (............) {
		// you are dead
		fill(255, 255, 255, 150);
		rect(0, 0, 900, 600);
		fill(0, 0, 0);
		textSize(30);
		textAlign(CENTER);
		text("Yer DIED", 450, 250);
		text("Click To Restart", 450, 300);
		if (mousePressed) {
			// reset snake, food
			snake.clear();
			snake.add(new int[] {3, 5});
			direction = "right";
			foodX = round(random(0, maxTilePosX - 1));
			foodY = round(random(0, maxTilePosY - 1));
			alive = true;
		}

		
	}

	textAlign(LEFT);

	///////////////////////////////
	// Part K
	// Add code for score here
	
	////////////////////////////////
	// increment the framerate
	frameNum = frameNum + 1;
}