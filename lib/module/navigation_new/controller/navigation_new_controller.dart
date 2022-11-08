import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/navigation_new_view.dart';

class NavigationNewController extends State<NavigationNewView>
    implements MvcController {
  static late NavigationNewController instance;
  late NavigationNewView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
