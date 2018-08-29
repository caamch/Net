// # puntos
int nDots = 100;
PVector[] dots;

void setup () {
  size(600, 600);
// inicializa posiciones de los puntos de forma aleatoria
  dots = new PVector[nDots]; 
  for (int i = 0; i < nDots; i++) {
    dots[i] = new PVector(random(0, width), random(0, height));
  }
}

void draw () {
  background(255);

  updateDots();
  renderDots();
}

void updateDots() {
  for (int i = 0; i < nDots; i++) {
    PVector offset = new PVector(random(-3, 3), random(-3, 3));
    dots[i].add(offset);
    
    if (dots[i].x < 0) { dots[i].x = width; }
    if (dots[i].x > width) { dots[i].x = 0; }
    if (dots[i].y < 0) { dots[i].y = height; }
    if (dots[i].y > height) { dots[i].y = 0; }
  }
}
//dibujar cada uno de los puntos
void renderDots() {
  for (int i = 0; i < nDots; i++) {
    noStroke();
    fill(0,0,255);
    ellipse(dots[i].x, dots[i].y, 5, 5);
    fill(0,255,0,60);
    ellipse(dots[i].x, dots[i].y, 25, 25);
  }
}
