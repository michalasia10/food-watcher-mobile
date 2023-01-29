import 'package:diet_maker/core/app/router.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/common/presentation/components/failure_view.dart';
import 'package:diet_maker/features/common/presentation/components/progress_view.dart';
import 'package:diet_maker/features/products/domain/entities/product.dart';
import 'package:diet_maker/features/products/presentation/bloc/list/products_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListPage extends StatefulWidget {
  ProductListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  late ScrollController _controller;

  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      print("reach the bottom");
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) {
          return ProductsCubit.fromContext(context)..loadProducts();
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: _buildBody(context),
        ));
  }

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (BuildContext context, ProductsState state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const ProgressView(),
          products: (List<Product> productsData) => _builderProductsDetails(
            context,
            productsData,
          ),
          failed: (Failure failure) => Center(
            child: FailureView(failure: failure),
          ),
        );
      },
    );
  }

  Widget _builderProductsDetails(
    BuildContext context,
    List<Product> productsData,
  ) {
    return ListView.separated(
      controller: _controller,
      padding: const EdgeInsets.all(16),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            Routes.kProductDetailsPage,
            arguments: {"productId": productsData[index].id},
          ),
          child: Text(productsData[index].name),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 12),
      itemCount: productsData.length,
    );
  }
}
