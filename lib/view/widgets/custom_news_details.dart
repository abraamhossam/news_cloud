import 'package:flutter/material.dart';
import 'package:newscloud/model/news_details_model.dart';
import 'package:newscloud/view/widgets/error_image.dart';

class CustomNewsDetails extends StatelessWidget {
  const CustomNewsDetails({
    super.key,
    required this.model,
  });
  final NewsDetailsModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: model.image == null
                ? const ErrorImage()
                : Image.network(
                    model.image!,
                  ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            model.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            model.subTitle ?? 'No Description',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.6),
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
