class Product {
   final int id, pricee;
  final String title, subtitle, description, image;

  Product({
    required this.id,
   required this.pricee,
   required this.title,
   required this.subtitle,
   required this.description,
   required this.image,
});
}
List<Product> getProducts = [
  Product(
    id: 1,
    pricee: 59,
    title: "Wireless Airpods",
    subtitle: "High-quality sound",
    image: "images/airpod.png",
    description:
    "The Apple AirPods deliver a wireless audio experience like no other. With the latest Bluetooth technology, you can enjoy music and take calls without the hassle of tangled wires.",
  ),
  Product(
    id: 2,
    pricee: 199,
    title: "Smart Phone",
    subtitle: "Android system \n(two SIM cards)",
    image: "images/mobile.png",
    description:
    "The smartphone combines power and elegance in a sleek package,perfect for watching videos or playing games.",
  ),
  Product(
    id: 3,
    pricee: 39,
    title: "3D Glass",
    subtitle: "  To take you to\n the virtual world",
    image: "images/class.png",
    description:
"Elevate your 3D viewing experience with our premium 3D glasses. Designed for comfort and style, these glasses provide an immersive 3D experience like no other."  ),
  Product(
    id: 4,
    pricee: 56,
      title: "HeadPhones",
    subtitle: "long listening hours",
    image: "images/headset.png",
    description:
"Experience the ultimate in audio excellence with our premium headphones, Elevate your listening experience and immerse yourself in sound like never before."),


  Product(
    id: 5,
    pricee: 62,
    title: "Smart Watch",
    subtitle: "High definition \n  color screen",
    image: "images/forhuaweigt3prosmartwatchmenswomen390390hdscreenheartratebluetoothcallip67waterproofsportmartlionnowisthemomenttoplaceanorderandreceiveabonus0.png",
    description:
    "Stay connected and stay active with our cutting-edge smartwatch. Designed to complement your lifestyle, this smartwatch offers a range of features to keep you informed and motivated throughout your day.",
  ),
  Product(
    id: 6,
    pricee: 39,
    title: "Camera",
    subtitle: "High image quality\n   and resolution",
    image: "images/camera.png",
    description:
    "Capture life's moments in stunning detail with our advanced digital camera. Whether you're a photography enthusiast or a casual shooter.",
  ),];
