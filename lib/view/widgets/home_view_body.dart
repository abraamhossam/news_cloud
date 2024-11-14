import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newscloud/constants.dart';
import 'package:newscloud/controller/fetch_news_controller.dart';
import 'package:newscloud/utils/lists.dart';
import 'package:newscloud/view/widgets/custom_news_category.dart';
import 'package:newscloud/view/widgets/custom_news_details.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 110,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: listOfCategories.length,
              itemBuilder: (context, index) {
                return CustomNewsCategory(
                  model: listOfCategories[index],
                );
              },
            ),
          ),
        ),
        GetX<FetchNewsController>(
          builder: (controller) {
            if (controller.state.value == 'success') {
              return SliverList.builder(
                itemCount: controller.dataSuccess.length,
                itemBuilder: (context, index) {
                  return CustomNewsDetails(
                    model: controller.dataSuccess[index],
                  );
                },
              );
            } else if (controller.state.value == 'failure') {
              return SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 200,
                    left: 8,
                    right: 8,
                  ),
                  child: Center(
                    child: Text(controller.dataFailure),
                  ),
                ),
              );
            } else {
              return const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 200,
                  ),
                  child: Center(
                    child: CircularProgressIndicator(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
