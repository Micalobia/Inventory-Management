//The interface for a storable object, used by Item and Storage
interface Storable {
  String getName();            //Returns the name of the object
  void setName(String name);   //Sets the name of the object
  int getX();                  //Gets the x-coordinate of the object, relative to parent
  int getY();                  //Gets the y-coordinate of the object, relative to parent
  void setX(int x);            //Sets the x-coordinate of the object, relative to parent
  void setY(int y);            //Sets the y-coordinate of the object, relative to parent
  String[] getTags();          //Gets the tags of the object
  void addTag(String tag);     //Adds a tag to the object
  void addTags(String[] tags); //Adds a collection of tags to the object
  void setTags(String[] tags); //Sets the tags of the object
  int getWidth();              //Gets the width of the object
  int getHeight();             //Gets the height of the object
  void setWidth(int width);    //Sets the width of the object
  void setHeight(int height);  //Sets the height of the object
  JSONObject getJSONObject();
}
