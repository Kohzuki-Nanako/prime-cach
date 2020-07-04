class Ball {
  int ballx;
  int bally;
  int size = 100;
  int dy = int(random(2, 6));
  Ball(int x, int y) {
    ballx=x;
    bally=y;
  }
  void display() {
    ellipse(ballx, bally, size/2, size/2);
  }

  void move() {
    bally += dy;
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
final int LIMIT=5;


Ball[] b;
int n = 3;

void setup() {
  colorMode(HSB, 360, 100, 100);
  size(500, 700);
  t0 = millis();
  b = new Ball[n];
  for (int i=0; i<n; i++) {
    b[i]=new Ball(-50, 100);
  }
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
    make_ball();
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
  image(back, 0, 0);
  image(renga, -250, 0);
  image(renga, 450, 0);
  kagoX=mouseX-100;
  kagoY=600;
  image(kago, kagoX, kagoY);

  int erapsed= (int)((millis()-t0)/1000); //増えていく秒数
  if (erapsed>LIMIT) {
    erapsed=LIMIT;
  }
  int remains=LIMIT-erapsed; //減っていく秒数
  fill(0);
  textSize(20);
  text("time :"+remains+" sec", 5, 5, 250, 30);

  int score=100;

  gameover(remains, score);
}

void mousePressed() {
  t0=millis();
}
void gameover(int time, int score) {
  if (time == 0 ) aftergameover(score);
  else score_display(score);
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



void score_display(int score) {
  text("socre :"+score, 0, 30, 250, 30);
}

void make_ball() {
  for (int i=0; i < n; i++) {
    b[i].move();
    b[i].display();
  }
}

void mouseClicked() {
  mouseClickCnt++;
  println(mouseClickCnt);
}
