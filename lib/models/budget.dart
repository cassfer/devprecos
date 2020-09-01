class Budget {
  final String title;
  final int time;
  double price;
  final String note;
  Budget(this.title, this.time, this.note){
    this.price = this.time * 10.0;
  }
}
