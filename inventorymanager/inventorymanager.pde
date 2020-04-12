void setup() {
  Storage main = new Storage("main");
  Storage small = new Storage("small");
  small.addStorable(new Item("apple"));
  small.addStorable(new Item("orange"));
  small.addTag("fruit");
  small.addTag("hasPerishable");
  main.addStorable(small);
  Storage otherSmall = new Storage("othersmall");
  Storage pillBox = new Storage("pill box");
  pillBox.addTag("movable");
  otherSmall.addStorable(pillBox);
  otherSmall.addStorable(new Item("cucumber"));
  otherSmall.addTag("random");
  otherSmall.addTag("hasPerishable");
  main.addStorable(otherSmall);
  main.addStorable(new Item("random item"));
  saveJSONObject(main.getJSONObject(),"test.json","indent=1");
  
  //New Comment
  
}
void draw() {
}
