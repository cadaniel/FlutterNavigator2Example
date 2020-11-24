import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:navigator_example/data/model/product.dart';
import 'package:navigator_example/ui/common/paltform_scaffold.dart';
import 'package:navigator_example/ui/common/platform_page.dart';
import 'package:navigator_example/ui/home/cubit/home/home_cubit.dart';
import 'package:navigator_example/ui/home/products/cubit/products_cubit.dart';

class ProductsPage extends PlatformPage {
  ProductsPage() : super(ProductsWidget(), "products");
}

class ProductsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var homeCubit = BlocProvider.of<HomeCubit>(context);
    return PlatformScaffold(
      materialAppBar: AppBar(
        title: Text("Go Shopping!"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => homeCubit.navigateToCart(),
          ),
        ],
      ),
      cupertinoNavigationBar: CupertinoNavigationBar(
        previousPageTitle: "Products",
        middle: Text("Go Shopping"),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () => homeCubit.navigateToCart(),
        ),
      ),
      child: BlocBuilder(
        cubit: GetIt.instance.get<ProductsCubit>(),
        builder: (BuildContext context, ProductsState state) {
          return state.when(
            loading: () => Container(),
            loaded: (List<Product> products) {
              return ListView.builder(
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Material(
                    child: InkWell(
                      onTap: () => homeCubit.navigateToProduct(products[index]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(products[index].imageUrl),
                              SizedBox(height: 8),
                              Text(products[index].description),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
