import 'package:diet_maker/features/products/domain/entities/product.dart';

class ProductsResponse {
  List<Product> items;
  int total;
  int limit;
  int offset;

  ProductsResponse(
      {required this.items,
      required this.total,
      required this.limit,
      required this.offset});

  factory ProductsResponse.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['items'] as List;
    List<Product> products = list.map((i) => Product.fromJson(i)).toList();

    return ProductsResponse(
        items: products,
        total: parsedJson['total'],
        limit: parsedJson['limit'],
        offset: parsedJson['offset']);
  }
}
