int next(int x) {
  if (x == 1) return x;

  if (x % 2 == 0) return x / 2;
  return x * 3 + 1;
}

void setup() {
  size(900, 900);
  background(33);

  //translate(width / 2, height / 2);
  for (int i = 2; i <= 2_000; i++) {
    int current = i;
    stroke(255, 100);
    strokeWeight(1);
    pushMatrix();
    while (current != 1) {
      rotate(current % 2 == 0 ? QUARTER_PI / 5 : -QUARTER_PI / 5);
      translate(20, 0);
      //println(current);
      point(0, 0);
      current = next(current);
    }
    //println(current);
    popMatrix();
  }
}
