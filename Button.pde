class Button {
    String name;
    int x = 0;
    int y = 0;
    int size = 100;
    int set = 40;

      Button(String n, int x, int y) {
        name = n;
        this.x = x;
        this.y = y;
    }

    void display() {
          fill(255);
          rect(x, y,size, 100.0f);
          fill(0);
          textSize(40.0f);
          text(name, x+set, y + 50);
    }

    void changeSize(int size) {
        this.size = size;
    }

    void changeX(int n) {
        set -= n;
    }

    boolean mouseIsOver() {
        if (x <=   mouseX &&   mouseX <= x + size && y <=  mouseY &&  mouseY <= y + 100) {
            return true;
        }
        return false;
    }

    void pressed() {
          fill(100);
          rect(x, y,size, 100.0f);
          fill(0);
          textSize(40.0f);
          text(name, x + set, y + 50);
    }
}
