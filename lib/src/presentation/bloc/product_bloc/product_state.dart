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
  const ProductsLoaded(this.productModel);
}

class ProductsError extends ProductsState {
  final String message;
  const ProductsError(this.message);
}
