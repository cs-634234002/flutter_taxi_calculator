class Calculator {
  static int _carTax = 0;

  static int car({required int km, required int person}) {
    double tax1 = 0;

    if (km <= 1) {
      tax1 = tax1 + 35;
    } else if (km > 1 && km <= 10) {
      tax1 = km * 7;
    } else if (km > 10 && km <= 20) {
      tax1 = km * 6;
    } else if (km > 20 && km <= 30) {
      tax1 = km * 5;
    } else if (km > 30) {
      tax1 = km * 4;
    }

    double amount = 0;
    if (person == 2) {
      amount = amount + 10;
    } else if (person == 3) {
      amount = amount + 30;
    } else if (person == 4) {
      amount = amount + 50;
    }
    _carTax = (tax1 + amount).toInt();
    return _carTax;
  }

  static int uberry({required int km, required int day}) {
    double tax2 = 0;

    if (km <= 1) {
      tax2 = tax2 + 35;
    } else if (km > 1 && km <= 10) {
      tax2 = km * 7;
    } else if (km > 10 && km <= 20) {
      tax2 = km * 6;
    } else if (km > 20 && km <= 30) {
      tax2 = km * 5;
    } else if (km > 30) {
      tax2 = km * 4;
    }

    double amount = 1;
    if (day == 1) {
      amount = amount * 1;
    } else if (day == 2) {
      amount = amount * 2;
    }
    _carTax = (tax2 * amount).toInt();
    return _carTax;
  }
}
