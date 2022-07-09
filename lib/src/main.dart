import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_cart/src/config/theme/theme.dart';
import 'package:insta_cart/src/presentation/widget/widgets.dart';

import 'presentation/bloc/product_bloc/product_bloc.dart';
import 'presentation/views/product_list_screen/product_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
  const SystemUiOverlayStyle(statusBarColor: Colors.blue));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ProductsBloc _productBloc = ProductsBloc();


  @override
  void initState() {
    _productBloc.add(GetProductList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.lightTheme,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => _productBloc,
        child: BlocListener<ProductsBloc, ProductsState>(
            listener: (context, state) {
              if (state is ProductsError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message))
                );
              }  
            },
          child: BlocBuilder<ProductsBloc,ProductsState>(
            builder:(context,state){
              if (state is ProductsInitial) {
                return productLoading();
              }
              else if (state is ProductsLoading) {
                return productLoading();
              }else if (state is ProductsLoaded) {
                return ProductScreen(context,state.productModel,state.laptopModel,state.mobileModel);
              }else if (state is ProductsError) {
                return Container();
              } else {
                return Container();
              }
            } ,
          ),

            ),
      ),
    );
  }
}
