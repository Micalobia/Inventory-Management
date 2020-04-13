class TabPanel implements Control {
  int tabIndex;
  private boolean _hidden;

  void hide() { 
    _hidden = true;
  }
  void show() { 
    _hidden = false;
  }

  void draw() {
    if (_hidden) return;
  }
  
  void loop() {
  }
}
