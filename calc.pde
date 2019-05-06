
    String prevNum = "";
    String currentNum = "";
    Button ac = new Button("AC",50,175);
    Button off = new Button("Off", 175, 175);
    Button divide = new Button("%", 425, 175);
    Button seven = new Button("7", 50, 300);
    Button eight = new Button("8", 175, 300);
    Button nine = new Button("9", 300, 300);
    Button multiply = new Button("x", 425, 300);
    Button four = new Button("4", 50, 425);
    Button five = new Button("5", 175, 425);
    Button six = new Button("6", 300, 425);
    Button minus = new Button("-", 425, 425);
    Button one = new Button("1", 50, 550);
    Button two = new Button("2", 175, 550);
    Button three = new Button("3", 300, 550);
    Button plus = new Button("+", 425, 550);
    Button zero = new Button("0", 50, 675);
    Button decimal = new Button(".", 300, 675);
    Button equal = new   Button("=", 425, 675);
    boolean operator = false;
    boolean clear = false;
    boolean equate = false;
    boolean subtract = false;
    boolean addition = false;
    boolean div = false;
    boolean mult = false;
  
    void setup() {
    size(565,800);
    background(0);
    ac.changeX(22);
    off.changeSize(215);
    off.changeX(-35);
    zero.changeSize(215);
   }
  
   void draw() {
    if (multipleDecimals()){
       currentNum = "";
       background(0);
       fill(255);
       print("You had two or more decimals in your number!!");
       System.exit(0);
    }
     
    if ((!decimalPoint()) && (currentNum.length() >= 10)) {
      currentNum = "";
      background(0);
      fill(255);
      print("overflow!!");
      System.exit(0);
    }
    
    off.display();
    
    if (!div) {
      divide.display();
    } 
    else
      divide.pressed();
    ac.display();
    

    seven.display();
    eight.display();
    nine.display();
    if (!mult) {
      multiply.display();
    } else {
      multiply.pressed();
    }
    four.display();
    five.display();
    six.display();
    
    if (!subtract) {
      minus.display();
    } else {
      minus.pressed();
    }
    one.display();
    two.display();
    three.display();
    
    if (!addition) {
      plus.display();
    } else {
      plus.pressed();
    }
    decimal.display();
    zero.display();
    equal.display();
    
    fill(255);
    textSize(75.0F);
    int numPlace = 55;
    if (!clear) {
      for (int i = 0; i < currentNum.length(); i++) {
        if (numPlace < 554) {
          text(currentNum.charAt(i), numPlace, 100.0F);
        }
        numPlace += 50;
      }
      clear = false;
    }
    
    if (operator) {
      fill(0);
      rect(0.0F, 0.0F, 600.0F, 150.0F);
      operator = false;
      prevNum = currentNum;
      currentNum = "";
    }
    
    if (equate) {
      fill(0);
      rect(0.0F, 0.0F, 500.0F, 150.0F);
      

      if (mult) {
        double temp = Double.parseDouble(prevNum) * Double.parseDouble(currentNum);
        currentNum = Double.toString(temp);
        mult = false;
      } else if (div) {
        double temp = Double.parseDouble(prevNum) / Double.parseDouble(currentNum);
        currentNum = Double.toString(temp);
        div = false;
      } else if (subtract) {
        double temp = Double.parseDouble(prevNum) - Double.parseDouble(currentNum);
        currentNum = Double.toString(temp);
        subtract = false;
      } else if (addition) {
        double temp = Double.parseDouble(prevNum) + Double.parseDouble(currentNum);
        currentNum = Double.toString(temp);
        addition = false;
      }
      equate = false;
    }
    
    if (ac.mouseIsOver()) {
      cursor(12);
    } else if (off.mouseIsOver()) {
      cursor(12);
    } else if (divide.mouseIsOver()) {
      cursor(12);
    } else if (seven.mouseIsOver()) {
      cursor(12);
    } else if (eight.mouseIsOver()) {
      cursor(12);
    } else if (nine.mouseIsOver()) {
      cursor(12);
    } else if (multiply.mouseIsOver()) {
      cursor(12);
    } else if (four.mouseIsOver()) {
      cursor(12);
    } else if (five.mouseIsOver()) {
      cursor(12);
    } else if (six.mouseIsOver()) {
      cursor(12);
    } else if (minus.mouseIsOver()) {
      cursor(12);
    } else if (one.mouseIsOver()) {
      cursor(12);
    } else if (two.mouseIsOver()) {
      cursor(12);
    } else if (three.mouseIsOver()) {
      cursor(12);
    } else if (plus.mouseIsOver()) {
      cursor(12);
    } else if (zero.mouseIsOver()) {
      cursor(12);
    } else if (decimal.mouseIsOver()) {
      cursor(12);
    } else if (equal.mouseIsOver()) {
      cursor(12);
    } else {
      cursor(0);
    }
    
    clear = false;
  }
  
  void mouseClicked() {
    if (ac.mouseIsOver()) {
      ac.pressed();
      //cursor(12);
      currentNum = "";
      prevNum = "";
      clear = true;
      fill(0);
      rect(0.0F, 0.0F, 600.0F, 150.0F);
      equate = false;
      subtract = false;
      addition = false;
      div = false;
      mult = false;
    }
    else if (off.mouseIsOver()) {
      off.pressed();
      System.exit(0);
    }
    else if (divide.mouseIsOver()) {
      div = true;
      operator = true;
      fill(0);
      rect(0.0F, 0.0F, 600.0F, 150.0F);
    }
    else if (seven.mouseIsOver()) {
      seven.pressed();
      currentNum += "7";
    }
    else if (eight.mouseIsOver()) {
      eight.pressed();
      currentNum += "8";
    }
    else if (nine.mouseIsOver()) {
      nine.pressed();
      currentNum += "9";
    }
    else if (multiply.mouseIsOver()) {
      mult = true;
      operator = true;
      fill(0);
      rect(0.0F, 0.0F, 600.0F, 150.0F);
    }
    else if (four.mouseIsOver()) {
      four.pressed();
      currentNum += "4";
    }
    else if (five.mouseIsOver()) {
      five.pressed();
      currentNum += "5";
    }
    else if (six.mouseIsOver()) {
      six.pressed();
      currentNum += "6";
    }
    else if (minus.mouseIsOver()) {
      subtract = true;
      operator = true;
      fill(0);
      rect(0.0F, 0.0F, 600.0F, 150.0F);
    }
    else if (one.mouseIsOver()) {
      one.pressed();
      currentNum += "1";
    }
    else if (two.mouseIsOver()) {
      two.pressed();
      currentNum += "2";
    }
    else if (three.mouseIsOver()) {
      three.pressed();
      currentNum += "3";
    }
    else if (plus.mouseIsOver()) {
      addition = true;
      operator = true;
      fill(0);
      rect(0.0F, 0.0F, 600.0F, 150.0F);
    }
    else if (zero.mouseIsOver()) {
      zero.pressed();
      currentNum += "0";
    }
    else if (decimal.mouseIsOver()) {
      decimal.pressed();
      currentNum += ".";
    }
    else if (equal.mouseIsOver()) {
      equal.pressed();
      equate = true;
      fill(0);
      rect(0.0F, 0.0F, 600.0F, 150.0F);
    }
  }
  
  boolean decimalPoint() {
    for (int i = 0; i < currentNum.length(); i++) {
      if (currentNum.charAt(i) == '.') {
        return true;
      }
    }
    return false;
  } 
  
  boolean multipleDecimals(){
     int decCount = 0;
     for (int i = 0; i < currentNum.length(); i++){
       if (currentNum.charAt(i) == '.'){
          decCount++; 
       }
     }
     
     if (decCount > 1)
       return true;
       
      return false;
  }
