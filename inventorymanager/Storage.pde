//Defines what a storage should be, things like boxes or rooms
class Storage implements Storable {
  private String _name;
  private String _type;
  private boolean _room;
  private int _x;
  private int _y;
  private int _width;
  private int _height;
  private String[] _tags;
  
  private Storable[] _stored;
  
  public Storage(String name, boolean room) {
    _name = name;
    _tags = new String[0];
    _stored = new Storable[0];
    _type = "storage";
    _room = room;
  }
  
  //Creates the file object
  JSONObject getJSONObject() {
    JSONObject json = new JSONObject();
    json.setString("name", _name);
    json.setString("type", "storage");
    json.setInt("x", _x);
    json.setInt("y", _y);
    json.setInt("width", _width);
    json.setInt("height", _height);
    json.setBoolean("room",_room);
    
    JSONArray tags = new JSONArray();
    for(int i = 0; i < _tags.length; i++) tags.setString(i, _tags[i]);
    json.setJSONArray("tags",tags);
    
    JSONArray stored = new JSONArray();
    for(int i = 0; i < _stored.length; i++) stored.setJSONObject(i,_stored[i].getJSONObject());
    json.setJSONArray("stored",stored);
    
    return json;
  }
  
  Storable[] getStored() {
    return _stored;
  }
  
  String getType() {
    return _type;
  }
  
  void addStorable(Storable storable) {
    //Create a new list of storables that is one larger than the current list of storables
    Storable[] a = new Storable[_stored.length+1];
    //Populate the new list of storables with the old stuff
    for (int i = 0; i < _stored.length; i++) {
      a[i] = _stored[i];
    }
    //Set the last item to the new storable
    a[_stored.length] = storable;
    //Set our storables to the new storables list
    _stored = a;
  }
  
  void addStorables(Storable[] storables) {
    //Create a new list of storables that is larger than the current list of storables
    Storable[] a = new Storable[_stored.length+storables.length];
    //Populate the new list of storables with the old stuff
    for (int i = 0; i < _stored.length; i++) {
      a[i] = _stored[i];
    }
    //Populate the rest of the new list with the new storables
    for (int i = 0; i < storables.length; i++) {
      a[i + _stored.length] = storables[i];
    }
    //Set our storables to the new storables list
    _stored = a;
  }
  
  Storable getStorable(int index) {
    return _stored[index];
  }
  
  void setStorable(int index, Storable storable) {
    _stored[index] = storable;
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
