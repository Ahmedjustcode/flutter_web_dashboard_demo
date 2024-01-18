import 'package:flutter/cupertino.dart';

extension SizeUtils on num{


  double w(BuildContext context)=> MediaQuery.of(context).size.width * (this / 100);


}