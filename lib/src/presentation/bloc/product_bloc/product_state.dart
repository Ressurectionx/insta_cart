part of 'product_bloc.dart';
abstract class ProductsState extends Equatable {
  const ProductsState();
  @override
  List<Object> get props => [];
}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsLoaded extends ProductsState {
  final ProductModel productModel;
  final ProductModel laptopModel;
  final ProductModel mobileModel;

  const ProductsLoaded(this.productModel,this.laptopModel,this.mobileModel);
}

class ProductsError extends ProductsState {
  final String message;
  const ProductsError(this.message);
}
