import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_cart/src/data/models/product_model.dart';
import 'package:insta_cart/src/presentation/bloc/details_bloc/details_bloc.dart';
import 'package:insta_cart/src/presentation/views/product_details_screen/product_details.dart';

import '../../widget/widgets.dart';

class Details extends StatelessWidget {
  Products products;

  Details(this.products, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DetailsBloc detailsBloc=DetailsBloc();

    return BlocProvider(
      create: (context) => detailsBloc,
      child: BlocBuilder<DetailsBloc, DetailsState>(
        builder: (context, state) {
          if (state is DetailsInitial) {
            return productLoading();
          }
          else if (state is DetailsLoading) {
            return productLoading();
          } else if (state is DetailsLoaded) {
            return ProductDetails(products);
          } else if (state is DetailsError) {
            return Container();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
