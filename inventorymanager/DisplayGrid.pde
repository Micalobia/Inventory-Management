import java.util.Arrays;

class DisplayGrid {
  
}

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
}
