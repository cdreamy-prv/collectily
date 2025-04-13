// Interface für gemeinsame Methoden
abstract class Sortable {
  void sort();
  void filter(String criteria);
}

// Einzelnes Item mit Wert für Statistiken
class Item implements Sortable {
  final String name;
  final double value; // Für Berechnungen

  Item({required this.name, required this.value});

  @override
  void sort() {
    print("Sorting item: $name");
    // Implementierung z. B. nach Wert sortieren
  }

  @override
  void filter(String criteria) {
    print("Filtering item: $name by '$criteria'");
    // Logik z. B. Namen/Vergleiche prüfen
  }

  // Item-spezifische Statistik
  double calculateStatistic() {
    return value * 2; // Beispielrechnung
  }

  @override
  String toString() {
    return 'Item: $name, Value: $value';
  }
}

// Sammlung (kann Items und Subcollections enthalten)
class Collection implements Sortable {
  final String name;
  final List<Item> items = [];
  final List<Collection> subcollections = [];

  Collection({required this.name});

  void addItem(Item item) => items.add(item);
  void addSubcollection(Collection collection) =>
      subcollections.add(collection);

  @override
  void sort() {
    print("Sorting collection: $name");
    items.sort((a, b) => a.value.compareTo(b.value)); // Nach Wert sortieren
    subcollections.forEach((c) => c.sort()); // Rekursiv
  }

  @override
  void filter(String criteria) {
    print("Filtering collection: $name by '$criteria'");
    items.removeWhere((item) => !item.name.contains(criteria)); // Namen filtern
    subcollections.forEach((c) => c.filter(criteria)); // Rekursiv
  }

  // Statistik über alle Items (inkl. Subcollections)
  double calculateTotalStatistic() {
    double total = items.fold(
      0,
      (sum, item) => sum + item.calculateStatistic(),
    );
    total += subcollections.fold(
      0,
      (sum, coll) => sum + coll.calculateTotalStatistic(),
    );
    return total;
  }

  @override
  String toString() {
    return 'Collection: $name, Items: $items, Subcollections: $subcollections';
  }
}

// --- Beispielnutzung ---
void main() {
  // Items erstellen
  final item1 = Item(name: "One Piece 1", value: 700);
  final item2 = Item(name: "One Piece 2", value: 700);

  // Collections erstellen
  final subcollection = Collection(name: "One Piece");
  subcollection.addItem(item1);
  subcollection.addItem(item2);

  final mainCollection = Collection(name: "Manga");
  mainCollection.addItem(item1);
  mainCollection.addItem(item2);
  mainCollection.addSubcollection(subcollection);

  print("Main Collection: $mainCollection");

  // Methoden testen
  mainCollection.sort();
  mainCollection.filter("Coin");
  print("Total statistic: ${mainCollection.calculateTotalStatistic()}");
}
