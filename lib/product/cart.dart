import 'package:course_flutter_practice2/product/item.dart';
import 'package:flutter/widgets.dart';

class Cart extends ChangeNotifier{
  List<Item> _Items =[];
  double _totalPrice=0;

  void AddProduct (Item item){
    _Items.add(item);
    _totalPrice+= item.price;
    notifyListeners();
  }

  void ReomveProduct (Item item){
    _Items.remove(item);
    _totalPrice-= item.price;
    notifyListeners();
  }

 int numOfProduct(){
  return _Items.length;
 }

 double getTotlaPrice(){
  return _totalPrice;
 }

 List<Item> getAllProduct(){
  return _Items;
 }




}