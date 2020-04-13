ButtonControl button;
ButtonControl button2;

void setup() {
  size(1200, 675);
  Storage small = new Storage("small");
  small.addStorable(new Item("apple"));
  small.addStorable(new Item("orange"));
  small.addTag("fruit");
  small.addTag("hasPerishable");
  
  //New Comment
  
  //Storage main = new Storage("main", true);
  //Storage small = new Storage("small", false);
  //small.addStorable(new Item("apple"));
  //small.addStorable(new Item("orange"));
  //small.addTag("fruit");
  //small.addTag("hasPerishable");
  //main.addStorable(small);
  //Storage otherSmall = new Storage("othersmall", false);
  //Storage pillBox = new Storage("pill box", false);
  //pillBox.addTag("movable");
  //otherSmall.addStorable(pillBox);
  //otherSmall.addStorable(new Item("cucumber"));
  //otherSmall.addTag("random");
  //otherSmall.addTag("hasPerishable");
  //main.addStorable(otherSmall);
  //main.addStorable(new Item("random item"));
  //saveJSONObject(main.getJSONObject(),"test.json","indent=1");

  //Item[] items = Helper.GetAllItemsInStorage(main);
  //for(Item i : items) {
  //  println(i.getName());
  //}
}
void draw() {
}
