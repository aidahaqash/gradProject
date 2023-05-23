// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/screens/edit_product/components/body.dart';
import 'package:brandcrowd/screens/edit_product/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../models/OwnerProduct.dart';

class EditProductScreen extends StatelessWidget {
  static String routeName = "/editprod";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.oproduct.rating),
      ),
      body: Body(oproduct: agrs.oproduct),
    );
  }
}

class ProductDetailsArguments {
  final OProduct oproduct;

  ProductDetailsArguments({required this.oproduct});
}
