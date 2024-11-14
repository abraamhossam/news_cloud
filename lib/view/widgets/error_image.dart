import 'package:flutter/material.dart';
import 'package:newscloud/utils/size_config.dart';

class ErrorImage extends StatelessWidget {
  const ErrorImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
      ),
      width: SizeConfig.width,
      height: 220,
      child: const Icon(
        Icons.error_outline,
        color: Colors.black,
        size: 46,
      ),
    );
  }
}
