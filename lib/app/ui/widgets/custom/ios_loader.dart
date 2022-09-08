import 'package:flutter/cupertino.dart';

class IOSLoader extends StatelessWidget {
  final Color color;
  const IOSLoader({Key? key, this.color = CupertinoColors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(
        color: color,
      ),
    );
  }
}
