class Course {

  late String title;
  late String imageAsset;
  late String price;
  
  Course();

  Course.withFullField(this.title, this.imageAsset, this.price);

  // Getter cho trường title
  String getTitle() {
    return title;
  }

  // Setter cho trường title
  void setTitle(String title) {
    this.title = title;
  }

  // Getter cho trường imageAsset
  String getImageAsset() {
    return imageAsset;
  }

  // Setter cho trường imageAsset
  void setImageAsset(String imageAsset) {
    this.imageAsset = imageAsset;
  }

  // Getter cho trường price
  String getPrice() {
    return price;
  }

  // Setter cho trường price
  void setPrice(String price) {
   this.price = price;
  }
}