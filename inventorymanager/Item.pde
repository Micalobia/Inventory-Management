class Item implements Storable {
  private String _name;
  private int _x;
  private int _y;
  private int _width;
  private int _height;
  private String[] _tags;
  
  private int _quantity;
  
  public Item(String name) {
    _name = name;
    _tags = new String[0];
  }

  JSONObject getJSONObject() {
    JSONObject json = new JSONObject();
    json.setString("name", _name);
    json.setString("type", "item");
    json.setInt("x", _x);
    json.setInt("y", _y);
    json.setInt("width", _width);
    json.setInt("height", _height);
    
    JSONArray tags = new JSONArray();
    for(int i = 0; i < _tags.length; i++) tags.setString(i, _tags[i]);
    json.setJSONArray("tags",tags);
    
    json.setInt("quantity",_quantity);
    
    return json;
  }
  
  int getQuantity() {
    return _quantity;
  }
  
  void setQuantity(int quantity) {
    _quantity = quantity;
  }

  String getName() {
    return _name;
  }
  
  void setName(String name) {
    _name = name;
  }
  
  int getX() {
    return _x;
  }
  
  int getY() {
    return _y;
  }
  
  void setX(int x) {
    _x = x;
  }
  
  void setY(int y) {
    _y = y;
  }
  
  String[] getTags() {
    return _tags;
  }
  
  void addTag(String tag) {
    //Create a new list of tags that is one larger than the current list of tags
    String[] a = new String[_tags.length+1];
    //Populate the new list of tags with the old stuff
    for (int i = 0; i < _tags.length; i++) {
      a[i] = _tags[i];
    }
    //Set the last item to the new tag
    a[_tags.length] = tag;
    //Set our tags to the new tag list
    _tags = a;
  }
  
  void addTags(String[] tags) {
    //Create a new list of tags that is larger than the current list of tags
    String[] a = new String[_tags.length+tags.length];
    //Populate the new list of tags with the old stuff
    for (int i = 0; i < _tags.length; i++) {
      a[i] = _tags[i];
    }
    //Populate the rest of the new list with the new tags
    for (int i = 0; i < tags.length; i++) {
      a[i + _tags.length] = tags[i];
    }
    //Set our tags to the new tag list
    _tags = a;
  }
  
  void setTags(String[] tags) {
    _tags = tags;
  }
  
  int getWidth() {
    return _width;
  }
  
  int getHeight() {
    return _height;
  }
  
  void setWidth(int width) {
    _width = width;
  }
  
  void setHeight(int height) {
    _height = height;
  }
}
