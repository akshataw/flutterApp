//import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
//import 'model/products_repository.dart';
//import 'model/product.dart';
//
//class HomePage extends StatelessWidget {
//  List<Card> _buildGridCards(BuildContext context) {
//    List<Product> products = ProductsRepository.loadProducts(Category.all);
//
//    if (products == null || products.isEmpty) {
//      return const <Card>[];
//    }
//
//    final ThemeData theme = Theme.of(context);
//    final NumberFormat formatter = NumberFormat.simpleCurrency(
//        locale: Localizations.localeOf(context).toString());
//
//    return products.map((product) {
//      return Card(
//        clipBehavior: Clip.antiAlias,
//        elevation: 0.0,
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            AspectRatio(
//              aspectRatio: 18 / 11,
//              child: Image.asset(
//                product.assetName,
//                package: product.assetPackage,
//                // TODO: Adjust the box size (102)
//              ),
//            ),
//            Expanded(
//              child: Padding(
//                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.end,
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  children: <Widget>[
//                    Text(
//                      product == null ? '' : product.name,
//                      style: theme.textTheme.title,
//                      softWrap: false,
//                      overflow: TextOverflow.ellipsis,
//                      maxLines: 1,
//                    ),
//                    SizedBox(height: 8.0),
//                    Text(
//                      product == null ? '' : formatter.format(product.price),
//                      style: theme.textTheme.caption,
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ],
//        ),
//      );
//    }).toList();
//  }
//
//  // TODO: Add a variable for Category (104)
//  @override
//  Widget build(BuildContext context) {
//    // TODO: Return an AsymmetricView (104)
//    // TODO: Pass Category variable to AsymmetricView (104)
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("SHRINE"),
//        leading: IconButton(
//          icon: Icon(
//            Icons.menu,
//            semanticLabel: 'menu',
//          ),
//          onPressed: () {
//            print('menu pressed!');
//          },
//        ),
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(
//              Icons.search,
//              semanticLabel: 'search',
//            ),
//            onPressed: () {
//              print('search button pressed!');
//            },
//          ),
//          IconButton(
//            icon: Icon(
//              Icons.tune,
//              semanticLabel: 'filter',
//            ),
//            onPressed: () {
//              print('filter button pressed!');
//            },
//          ),
//        ],
//      ),
//      body: GridView.count(
//        crossAxisCount: 2,
//        padding: EdgeInsets.all(16.0),
//        childAspectRatio: 8.0 / 9.0,
//        children: _buildGridCards(context),
//      ),
//      resizeToAvoidBottomInset: false,
//    );
//  }
//}

import 'package:flutter/material.dart';

import 'model/products_repository.dart';
import 'model/product.dart';
import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  // TODO: Add a variable for Category (104)

  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('Menu button');
          },
        ),
        title: Text('SHRINE'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
      ),
      body: AsymmetricView(products: ProductsRepository.loadProducts(Category.all)),
    );
  }
}