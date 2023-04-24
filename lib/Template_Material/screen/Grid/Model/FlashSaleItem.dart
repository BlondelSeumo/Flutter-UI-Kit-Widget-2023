class SaleItem {
  final String? id;
  final String? ratingStart;
  final String? image;
  final String? title;
  final String? normalprice;
  final String? discountprice;
  final String? ratingvalue;
  final String? place;
  final String? stock;
  final int? colorLine;
  final double? widthLine;
  final String? detailProduct;
  final String? description;

  const SaleItem(
      {this.id,
      this.image,
      this.title,
      this.ratingStart,
      this.normalprice,
      this.discountprice,
      this.ratingvalue,
      this.place,
      this.stock,
      this.colorLine,
      this.widthLine,
      this.detailProduct,
      this.description});
}

List<SaleItem> flashData = [
  const SaleItem(
      id: "1",
      image:
          "https://images.pexels.com/photos/2047905/pexels-photo-2047905.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      title: "Apple Macbook Pro 13 with Touch Bar",
      normalprice: "\$ 2,020",
      discountprice: "\$ 1,300",
      ratingStart: "4.1",
      ratingvalue: "(56)",
      place: "United Kingdom",
      stock: "9 Available",
      colorLine: 0xFFFFA500,
      widthLine: 50.0,
      detailProduct:
          "1) MackBook Pro \n\n2) SSD 256 GB \n\n3) Ram 8 GB DDR4\n\n4) Non Touch Bar ",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen....."),
  const SaleItem(
      id: "2",
      image:
          "https://images.pexels.com/photos/761963/pexels-photo-761963.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      title: "7 Level Karina Dress Sweet Pesta",
      normalprice: "\$ 14",
      discountprice: "\$ 10",
      ratingStart: "3.4",
      ratingvalue: "(16)",
      place: "United Kingdom",
      stock: "24 Available",
      colorLine: 0xFF52B640,
      widthLine: 100.0,
      detailProduct:
          "1)Lorem Ipsum is simply \n\n2)Lorem Ipsum is simply \n\n3)Lorem Ipsum is simply\n\n ",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen....."),
  const SaleItem(
      id: "3",
      image:
          "https://images.pexels.com/photos/3756879/pexels-photo-3756879.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      title: "Samsung Galaxy Note 9 8GB - 512GB",
      normalprice: "\$ 1,000",
      discountprice: "\$ 950",
      ratingStart: "4.9",
      ratingvalue: "(20)",
      place: "United Kingdom",
      stock: "14 Available",
      colorLine: 0xFF52B640,
      widthLine: 90.0,
      detailProduct:
          "1)Lorem Ipsum is simply \n\n2)Lorem Ipsum is simply \n\n3)Lorem Ipsum is simply\n\n ",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen....."),
  const SaleItem(
      id: "4",
      image:
          "https://images.pexels.com/photos/1005012/pexels-photo-1005012.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      title: "Harry Potter Spesial Edition ",
      normalprice: "\$ 25",
      discountprice: "\$ 20",
      ratingStart: "4.2",
      ratingvalue: "(22)",
      place: "United Kingdom",
      stock: "5 Available",
      colorLine: 0xFFFFA500,
      widthLine: 30.0,
      detailProduct:
          "1)Lorem Ipsum is simply \n\n2)Lorem Ipsum is simply \n\n3)Lorem Ipsum is simply\n\n ",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen....."),
  const SaleItem(
      id: "5",
      image:
          "https://images.pexels.com/photos/1171084/pexels-photo-1171084.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      title: "Pro Evolution Soccer 2019 Steam Original PC Games",
      normalprice: "\$ 50",
      discountprice: "\$ 30",
      ratingStart: "4.6",
      ratingvalue: "(10)",
      place: "United Kingdom",
      stock: "30 Available",
      colorLine: 0xFF52B640,
      widthLine: 100.0,
      detailProduct:
          "1)Lorem Ipsum is simply \n\n2)Lorem Ipsum is simply \n\n3)Lorem Ipsum is simply\n\n ",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen....."),
  const SaleItem(
      id: "6",
      image:
          "https://images.pexels.com/photos/1022187/pexels-photo-1022187.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      title: "Camera DSLR C1000",
      normalprice: "\$ 400",
      discountprice: "\$ 200",
      ratingStart: "4.4",
      ratingvalue: "(10)",
      place: "United Kingdom",
      stock: "10 Available",
      colorLine: 0xFF52B640,
      widthLine: 80.0,
      detailProduct:
          "1)Lorem Ipsum is simply \n\n2)Lorem Ipsum is simply \n\n3)Lorem Ipsum is simply\n\n ",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen....."),
];
