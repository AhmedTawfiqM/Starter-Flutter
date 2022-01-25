import 'package:flutter/cupertino.dart';

mixin ResponsiveScreen {
  late BuildContext _context;

  setContext(BuildContext context) {
    _context = context;
  }

  late var height = MediaQuery.of(_context).size.height;
  late var width = MediaQuery.of(_context).size.width;
}
