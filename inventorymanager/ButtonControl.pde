class ButtonControl {
  int x;
  int y;
  int width;
  int height;
  private boolean _hidden;
  private boolean _locked;

  private boolean _held;
  private boolean _heldOld;
  private boolean _hover;

  private PImage _img;
  private String _label;
  private boolean _circle;

  private color _fillColor;
  private color _strokeColor;
  private boolean _noStroke;
  private float _strokeWeight;
  private color _textColor;
  
  private color _heldFillColor;
  private color _heldStrokeColor;
  private boolean _heldNoStroke;
  private float _heldStrokeWeight;
  private color _heldTextColor;
  
  private color _lockedFillColor;
  private color _lockedStrokeColor;
  private boolean _lockedNoStroke;
  private float _lockedStrokeWeight;
  private color _lockedTextColor;

  ButtonControl(int x, int y, int width, int height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    _circle = false;
    _img = null;
    _label = null;
  }

  ButtonControl(int x, int y, int width, int height, String text) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    _circle = false;
    _img = null;
    _label = text;
  }

  ButtonControl(int x, int y, int width, int height, PImage img) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    _circle = false;
    _img = img;
    _label = null;
  }

  ButtonControl(int x, int y, int width, int height, String text, PImage img, boolean circle) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    _circle = circle;
    _img = img;
    _label = text;
  }

  void setFill(color col) {
    _fillColor = col;
  }

  void setStroke(color col) {
    _noStroke = false;
    _strokeColor = col;
  }

  void setNoStroke() {
    _noStroke = true;
  }
  
  void setStrokeWeight(float val) {
    _strokeWeight = val;
  }
  
  void setTextColor(color col) {
    _textColor = col;
  }

  void setHeldFill(color col) {
    _heldFillColor = col;
  }

  void setHeldStroke(color col) {
    _heldNoStroke = false;
    _heldStrokeColor = col;
  }

  void setHeldNoStroke() {
    _heldNoStroke = true;
  }
  
  void setHeldStrokeWeight(float val) {
    _heldStrokeWeight = val;
  }
  
  void setHeldTextColor(color col) {
    _heldTextColor = col;
  }
  
  void setLockedFill(color col) {
    _lockedFillColor = col;
  }

  void setLockedStroke(color col) {
    _lockedNoStroke = false;
    _lockedStrokeColor = col;
  }

  void setLockedNoStroke() {
    _lockedNoStroke = true;
  }
  
  void setLockedStrokeWeight(float val) {
    _lockedStrokeWeight = val;
  }
  
  void setLockedTextColor(color col) {
    _lockedTextColor = col;
  }
  
  void isEllipse() {
    _circle = true;
  }
  
  void isRect() {
    _circle = false;
  }

  void loop() {
    if(_circle) _hover = Helper.PointInEllipse(mouseX, mouseY, x + width / 2, y + height / 2, width, height);
    else _hover = mouseX > x && mouseX < x + width && mouseY > y && mouseY < y + height;
    _heldOld = _held;
    _held = _onHold();
  }

  private boolean _onHold() {
    return mousePressed && !_hidden && !_locked && _hover;
  }

  void hide() {
    _hidden = true;
  }

  void show() {
    _hidden = false;
  }

  void lock() {
    _locked = true;
  }

  void unlock() {
    _locked = false;
  }

  boolean onHover() {
    return _hover;
  }

  boolean onHold() {
    return _held;
  }

  boolean onPress() {
    return _held && !_heldOld;
  }

  boolean onRelease() {
    return _heldOld && !_held && _hover;
  }
  
  void draw() {
    draw(height / 2);
  }

  void draw(float textSize) {
    //If the button is hidden, don't even bother drawing
    if (_hidden) return;
    //Different colors based on if you're holding the button or not
    if (_held) {
      strokeWeight(_heldStrokeWeight);
      if (_heldNoStroke) noStroke();
      else stroke(_heldStrokeColor);
      fill(_heldFillColor);
    } else if(_locked) {
      strokeWeight(_lockedStrokeWeight);
      if (_lockedNoStroke) noStroke();
      else stroke(_lockedStrokeColor);
      fill(_lockedFillColor);
    } else {
      strokeWeight(_strokeWeight);
      if (_noStroke) noStroke();
      else stroke(_strokeColor);
      fill(_fillColor);
    }
    //Different shape depending if you've selected circle or not
    if (_circle) {
      ellipse(x + width / 2, y + height / 2, width, height);
    } else {
      rect(x, y, width, height);
    }
    if(_img!=null) {
    }
    if(_label!=null) {
      noStroke();
      if(_held) fill(_heldTextColor);
      else if(_locked) fill(_lockedTextColor);
      else fill(_textColor);
      textSize(textSize);
      float _x = x + (width - textWidth(_label)) / 2;
      float _y = y + (height + (textAscent() - textDescent()) * 0.8) / 2;
      println(_x,',',_y);
      text(_label, _x, _y);
    }
  }
}
