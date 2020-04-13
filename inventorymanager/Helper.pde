import java.util.Arrays;

static class Helper {
  static Item[] GetAllItemsInStorage(Storage storage) {
    ArrayList<Item> items = new ArrayList();
    Storable[] stored = storage.getStored();
    for (Storable s : stored) {
      if (s.getType() == "item") {
        items.add((Item)s);
      } else if (s.getType() == "storage") {
        Item[] item = GetAllItemsInStorage((Storage)s);
        items.addAll(Arrays.asList(item));
      }
    }
    Item[] arr = new Item[items.size()]; 
    arr = items.toArray(arr);
    return arr;
  }

  static boolean PointInEllipse(int x, int y, int h, int k, int width, int height) {
    int _w = (width * width) / 4;
    int _h = (height * height) / 4;
    int _x = x - h;
    int _y = y - k;
    return _x * _x * _h + _y * _y * _w <= _w * _h;
  }
}
