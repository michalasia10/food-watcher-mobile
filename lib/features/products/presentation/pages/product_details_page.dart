import 'package:diet_maker/core/bloc/get_data_state.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/common/presentation/components/failure_view.dart';
import 'package:diet_maker/features/common/presentation/components/progress_view.dart';
import 'package:diet_maker/features/products/domain/entities/product.dart';
import 'package:diet_maker/features/products/presentation/bloc/details/product_details_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsPage extends StatefulWidget {
  ProductDetailsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final productId = args["productId"] as int;

    return BlocProvider(
      create: (BuildContext context) => ProductDetailsCubit.fromContext(context)
        ..loadProductDetails(productId),
      child: Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, GetDataState<Product>>(
      builder: (BuildContext context, GetDataState<Product> state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          inProgress: () => const ProgressView(),
          success: (Product product) => _builderProductDetails(
            context,
            product,
          ),
          failure: (Failure failure) => Center(
            child: FailureView(failure: failure),
          ),
        );
      },
    );
  }

  Widget _builderProductDetails(BuildContext context, Product productData) =>
      Center(child: Text(productData.name));
}
