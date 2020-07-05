class Ball {
  int ballx;
  int bally;
  int size = 100;
  int score = 0;
  int comb = 0;
  int dy = int(random(4, 10));
  int num = int(random(1, 51));
  int primeArray[] = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47};
  int prime_num;
  boolean isInside = false;
  boolean isPrime = false;
  Ball(int x, int y) {
    ballx=x;
    bally=y;
  }


  void display() {
    noStroke();
    fill(ballx, 100, 100);
    ellipse(ballx, bally, size/2, size/2);
    fill(0);
    text(num, ballx, bally+3);
  }

  void move() {
    bally += dy;
    if (isInside) {
      if (int(random(2))==1) {
        num = int(random(51));
      } else {
        num = primeArray[int(random(15))];
      }
      ballx=int(random(82, 400));
      bally=-50;
      dy = int(random(4, 10));
      isInside = false;
      isPrime=false;
    }

    if (bally > height) {
      num = int(random(1, 50));
      ballx=int(random(82, 400));
      bally=-50;
      dy = int(random(4, 10));
      if (isPrime) {
        comb = 0;
        score -= 100;
      } else {
        score += 10;
      }
    }
  }

  void isCatch(int kx, int ky) {
    if (dist(ballx, bally, kx, ky) < 45) {
      isInside = true;
      if (isPrime) {
        comb += 1;
        score += 100*(comb+1);
      } else {
        comb = 0;
        score -= 200;
      }
    }
  }

  void prime() {
    int cnt = 0;
    for (int i = 2; i <= num; i++) {
      if (num%i==0) {
        cnt += 1;
      }
    }
    if (num != 1 && cnt == 1) {
      prime_num = num;
      isPrime = true;
    }
  }
}

PImage kago;
PImage back;
PImage renga;
PFont fontA;
PFont fontB;
PFont fontC;
String[] str = {"Are You Ready?", "Start!!"};
int cnt;
int mouseClickCnt;
int kagoX, kagoY;

long t0;
final int LIMIT=32;


Ball b;

void setup() {
  imageMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  size(500, 700);
  t0 = millis();  
  b = new Ball(int(random(50, 300)), -50);
  kago = loadImage("kago.PNG");
  renga = loadImage("renga.jpeg");
  back = loadImage("back.jpg");
  kago.resize( kago.width/3, kago.height/3);
  fontA = loadFont("ComicSansMS-48.vlw");
  fontB = loadFont("ArialNarrow-Italic-48.vlw");
  fontC = loadFont("FZLTTHK--GBK1-0-48.vlw");
  cnt = 0;
  mouseClickCnt = 0;
}

void draw() {
  background(360);
  if (mouseClickCnt==0) {
    start_game();
  } else {
    go_game();
  }
}

void start_game() {
  grdCircle1(width*0.25, height*0.75, 200);
  fill(100);
  textFont(fontC);
  textSize(80);
  text("Prime", width/4+70, 150);
  text("catcher!", width/2, 230);
  textFont(fontA);
  textAlign(CENTER);
  textSize(28);
  text("Let's catch the prime number ball!", width/2, height/2+30);
  textSize(23);
  text("Click Schreen and you start game...", width/2, height-100);
}


void go_game() {
  if (cnt >= str.length) {    
    game();
  } else {
    make_str();
    cnt ++;
  }
}

void make_str() {
  background(360);
  frameRate(1);
  fill(100);
  textSize(60);
  textAlign(CENTER);
  text(str[cnt], width/2, height/2);
}

void game() {
  frameRate(60);
  image(back, width/2, height/2);
  image(renga, -82, height/2);
  image(renga, width+82, height/2);
  kagoX=mouseX;
  kagoY=600;
  image(kago, kagoX, kagoY);

  int erapsed= (int)((millis()-t0)/1000); //増えていく秒数
  if (erapsed>LIMIT) {
    erapsed=LIMIT;
  }
  int remains=LIMIT-erapsed; //減っていく秒数
  fill(0);
  textSize(20);
  text("time :"+remains+" sec", 135, 20);

  make_ball(remains, kagoX, kagoY);
  gameover(remains, b.score, b.comb);
}

void mousePressed() {
  t0=millis();
}
void gameover(int time, int score, int comb) {
  if (time == 0 ) aftergameover(score);
  else score_display(score, comb);
}

void aftergameover(int score) {
  background(360);
  grdCircle2(width*0.25, height*0.75, 200);
  grdRect1(width/2, height/4, 300, 200);
  textFont(fontB);
  textSize(80);
  fill(225, 80, 100);
  text(score, width/2, height/3*2-30);
  textFont(fontA);
  strokeWeight(1);
  stroke(100);
  line(20, height/2-15, width-20, height/2-15);
  fill(360);
  textAlign(CENTER);
  textSize(70);
  text("FINISH", width/2, height/3-30);  
  fill(100);
  textSize(30);
  text("score", width/2, height/2-20);
  textSize(25);
  text("You click key and finish this game", width/2, height-100);
  text("max combo : "+b.comb, width/2, height*2/3);
  text("special prime number :"+b.prime_num, width/2, height*2/3 + 25);
}
void keyPressed() {
  exit();
}

void grdCircle1(float x, float y, float d) {  
  noStroke();
  color c1 = color(60, 100, 100, 20);
  color c2 = color(5, 100, 100, 5);
  color c3 = color(166, 100, 100, 20);
  color c4 = color(260, 100, 100, 5);
  color c5 = color(114, 100, 100, 20);
  color c6 = color(70, 100, 100, 5);
  color c7 = color(350, 100, 100, 10);
  color c8 = color(320, 100, 100, 5);

  float c = 100;

  for (int i=0; i<c; i++) {
    color col = lerpColor(c1, c2, i/c);
    color col1 = lerpColor(c6, c5, i/c);
    color col2 = lerpColor(c3, c4, i/c);
    color col3 = lerpColor(c8, c7, i/c);

    float dd = lerp(d, d*0.2, i/c);
    fill(col);
    ellipse(x, y, dd, dd);
    fill(col1);
    ellipse(x*4, y/2, dd/2, dd/2);
    fill(col2);
    ellipse(x*2, y/4, dd*2/3, dd*2/3);
    fill(col3);
    ellipse(x*3, y+150, dd*2/3, dd*2/3);
  }
}

void grdCircle2(float x, float y, float d) {  
  noStroke();
  color c1 = color(60, 100, 100, 20);
  color c2 = color(5, 100, 100, 5);
  color c3 = color(166, 100, 100, 20);
  color c4 = color(260, 100, 100, 5);
  color c5 = color(114, 100, 100, 20);
  color c6 = color(70, 100, 100, 5);
  color c7 = color(350, 100, 100, 10);
  color c8 = color(320, 100, 100, 5);
  color c9 = color(297, 100, 100, 10);
  color c10 = color(276, 100, 100, 5);
  float c = 100;

  for (int i=0; i<c; i++) {
    color col = lerpColor(c1, c2, i/c);
    color col1 = lerpColor(c6, c5, i/c);
    color col2 = lerpColor(c3, c4, i/c);
    color col3 = lerpColor(c8, c7, i/c);
    color col4 = lerpColor(c9, c10, i/c);
    float dd = lerp(d, d*0.2, i/c);
    fill(col);
    ellipse(x*3+20, y-100, dd, dd);
    fill(col3);
    ellipse(x*4, y/2-50, dd/2, dd/2);
    fill(col2);
    ellipse(x-20, y+5, dd*2/3, dd*2/3);
    fill(col1);
    ellipse(x*3, y+150, dd*2/3, dd*2/3);
    fill(col4);
    ellipse(x-120, y/7-20, dd/2, dd/2);
  }
}


void grdRect1(float x, float y, float w, float h) {
  rectMode(CENTER);
  noStroke();
  float c = 100;
  color c1 = color(140, 100, 100, 5);
  color c2 = color(180, 100, 100, 5);
  for (int i=0; i<c; i++) {
    color col = lerpColor(c1, c2, i/c);
    float hh = lerp(h, 0, i/c);
    float yy = lerp(y, y-(h/2), i/c);

    fill(col);
    rect(x, yy, w, hh, 40);
  }
}



void score_display(int score, int comb) {
  fill(0);
  text("socre :", 113, 40);
  text(score, 180, 40);
  text("combo :", 115, 60);
  text(comb, 160, 60);
}

void make_ball(int time, int kx, int ky) {

  if (time != 0) {
    b.prime();
    b.move();
    b.display();
    b.isCatch(kx, ky);
  }
}
void mouseClicked() {
  mouseClickCnt++;
  println(mouseClickCnt);
}
