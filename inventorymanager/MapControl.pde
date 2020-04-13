class MapControl implements Control {
  int x;
  int y;
  int width;
  int height;

  private boolean _hidden;
  private Storage _activeStorage;
  private Storage _globalStorage;
  private Item _activeItem;

  private color _hoverHighlightColor;
  private color _selectedHighlightColor;
  private color _searchHighlightColor;
  private float _selectedHighlightAmp;
  private float _hoverHighlightAmp;
  private color _backgroundColor;
  private color _storageColor;
  private color _itemColor;
  private color _strokeColor;
  private float _strokeWeight;

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

  void setHoverHighlightColor(color col) {
    _hoverHighlightColor = col;
  }
  void setSelectedHighlightColor(color col) {
    _selectedHighlightColor = col;
  }
  void setSearchHighlightColor(color col) {
    _searchHighlightColor = col;
  }
  void setSelectedHighlightAmp(float val) {
    _selectedHighlightAmp = val;
  }
  void setHoverHighlightAmp(float val) {
    _hoverHighlightAmp = val;
  }
  void setBackgroundColor(color col) {
    _backgroundColor = col;
  }
  void setStorageColor(color col) {
    _storageColor = col;
  }
  void setItemColor(color col) {
    _itemColor = col;
  }
  void setStrokeColor(color col) {
    _strokeColor = col;
  }
  void setStrokeWeight(float val) {
    _strokeWeight = val;
  }
}
