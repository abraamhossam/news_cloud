import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:newscloud/constants.dart';
import 'package:newscloud/controller/fetch_news_details_controller.dart';
import 'package:newscloud/view/widgets/custom_news_details.dart';

class NewsViewBody extends StatelessWidget {
  const NewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<FetchNewsDetailsController>(
      builder: (controller) {
        if (controller.state.value == 'success') {
          return ListView.builder(
            itemCount: controller.dataSuccess.length,
            itemBuilder: (context, index) {
              return CustomNewsDetails(
                model: controller.dataSuccess[index],
              );
            },
          );
        } else if (controller.state.value == 'failure') {
          return Center(
            child: Text(controller.dataFailure),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: kPrimaryColor,
            ),
          );
        }
      },
    );
  }
}
