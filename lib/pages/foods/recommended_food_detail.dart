import 'package:e_comm_flutter/utils/colors.dart';
import 'package:e_comm_flutter/widgets/app_icon.dart';
import 'package:e_comm_flutter/widgets/big_texts.dart';
import 'package:e_comm_flutter/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

import '../../utils/dimensions.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_checkout_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child:
                        BigText(size: Dimensions.font26, text: "Cake It Out")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food_0.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                      text:
                          "Strawberry cake made with fresh strawberries and no Jell-O? Yes, it’s possible and it’s delicious! The secret is adding a fresh strawberry reduction to your cake batter and mix the rest into your buttercream frosting for a fresh strawberry cake recipe that tastes like real strawberries! If you’ve been to Pinterest lately, you will have approximately one TRILLION recipes for strawberry cake. I tried a few from some big-name blogs that I thought would for sure delivery and boy was I disappointed. Most recipes contained either Jell-O for the strawberry flavor or the use of a boxed mix.Strawberry cake made with fresh strawberries and no Jell-O? Yes, it’s possible and it’s delicious! The secret is adding a fresh strawberry reduction to your cake batter and mix the rest into your buttercream frosting for a fresh strawberry cake recipe that tastes like real strawberries! If you’ve been to Pinterest lately, you will have approximately one TRILLION recipes for strawberry cake. I tried a few from some big-name blogs that I thought would for sure delivery and boy was I disappointed. Most recipes contained either Jell-O for the strawberry flavor or the use of a boxed mix. Strawberry cake made with fresh strawberries and no Jell-O? Yes, it’s possible and it’s delicious! The secret is adding a fresh strawberry reduction to your cake batter and mix the rest into your buttercream frosting for a fresh strawberry cake recipe that tastes like real strawberries! If you’ve been to Pinterest lately, you will have approximately one TRILLION recipes for strawberry cake. I tried a few from some big-name blogs that I thought would for sure delivery and boy was I disappointed. Most recipes contained either Jell-O for the strawberry flavor or the use of a boxed mix."),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
