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
String[] str = {"Are", "You", "Ready?","Start!!"};
int cnt;
int mouseClickCnt;
int kagoX, kagoY;


Ball[] b;
int n = 3;

void setup() {
  colorMode(HSB, 360, 100, 100);
  size(500, 700);
  b = new Ball[n];
  for (int i=0; i<n; i++) {
    b[i]=new Ball(-50, 100);
  }
  kago = loadImage("kago.PNG");
  renga = loadImage("renga.jpeg");
  back = loadImage("back.jpg");
  kago.resize( kago.width/3, kago.height/3);
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
  frameRate(60);
  fill(0);
  textAlign(CENTER);
  textSize(25);
  text("Let's catch the prime number ball!", width/2, height/2);
  textSize(20);
  text("Click Schreen and you start game...", width/2, height/2+30);  
  grdCircle1(width*0.25, height*0.75, 200);
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
  fill(100, 100, 100);
  textSize(100);
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
