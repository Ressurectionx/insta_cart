import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:insta_cart/src/data/repository/api_repository.dart';
import '../../../data/models/product_model.dart';


part 'product_event.dart';
part 'product_state.dart';


class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial()) {
    final ApiRepository _repository=ApiRepository();
    on<ProductsEvent>((event, emit) async{
      try{
        emit(ProductsLoading());
        final productList=await _repository.fetchProductList();
        emit(ProductsLoaded(productList));
      }on NetworkError{
        emit(const ProductsError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
