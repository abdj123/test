import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/image_constants.dart';
import '../../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../../core/widgets/app_bar/appbar_subtitle.dart';
import '../../../core/widgets/app_bar/custom_app_bar.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 100.w,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                top: 2.3399014778325123153.h, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                reusableText("TickeTree Terms of Use", 28),
                reusableText("1, Introduction", 14),
                reusableText("2, The TickeTree Service Provided By Us", 14),
                reusableText("3, Your Use Of The TickeTree Service", 14),
                reusableText("4, Content and Intellectual Property Rights", 14),
                reusableText(
                    "5, Customer Support, Information, Questions and Complaints",
                    14),
                reusableText("6, Problems and Disputes", 14),
                reusableText("7, About these Terms", 14),

                // contents
                //first
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 5),
                  child: reusableText("1, Introduction", 20,
                      color: const Color(0xff121212)),
                ),
                reusableText("""
Hipster ipsum tattooed brunch I'm baby. Dsa food kombucha vice party bun. Readymade selvage vinegar franzen enamel ramps. Air them you fingerstache tile skateboard occupy same pok heirloom. Whatever plz etsy on coffee bun. Mumblecore bitters enamel single-origin tile bushwick chia. Roof bushwick bodega copper out bird of roof. Pabst kale tumblr everyday them seitan same chips fam.

Sartorial gastropub intelligentsia readymade master beer. Them four kogi bruh twee polaroid party kogi. Yolo gentrify.""",
                    13,
                    color: const Color(0xff121212)),

                // second
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 5),
                  child: reusableText(
                      "2, The TickeTree Service Provided By Us", 20,
                      color: const Color(0xff121212)),
                ),
                reusableText(
                    """Hipster ipsum tattooed brunch I'm baby. Dsa food kombucha vice party bun. Readymade selvage vinegar franzen enamel ramps. Air them you fingerstache tile skateboard occupy same pok heirloom. Whatever plz etsy on coffee bun. Mumblecore bitters enamel single-origin tile bushwick chia. Roof bushwick bodega copper out bird of roof. Pabst kale tumblr everyday them seitan same chips fam.

Sartorial gastropub intelligentsia readymade master beer. Them four kogi bruh twee polaroid party kogi. Yolo gentrify.""",
                    13,
                    color: const Color(0xff121212)),

                // third
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 5),
                  child: reusableText(
                      "3, Your Use Of The TickeTree Service", 20,
                      color: const Color(0xff121212)),
                ),
                reusableText(
                    """Hipster ipsum tattooed brunch I'm baby. Dsa food kombucha vice party bun. Readymade selvage vinegar franzen enamel ramps. Air them you fingerstache tile skateboard occupy same pok heirloom. Whatever plz etsy on coffee bun. Mumblecore bitters enamel single-origin tile bushwick chia. Roof bushwick bodega copper out bird of roof. Pabst kale tumblr everyday them seitan same chips fam.

Sartorial gastropub intelligentsia readymade master beer. Them four kogi bruh twee polaroid party kogi. Yolo gentrify.""",
                    13,
                    color: const Color(0xff121212)),

                // fourth
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 5),
                  child: reusableText(
                      "4, Content and Intellectual Property Rights", 20,
                      color: const Color(0xff121212)),
                ),
                reusableText(
                    """Hipster ipsum tattooed brunch I'm baby. Dsa food kombucha vice party bun. Readymade selvage vinegar franzen enamel ramps. Air them you fingerstache tile skateboard occupy same pok heirloom. Whatever plz etsy on coffee bun. Mumblecore bitters enamel single-origin tile bushwick chia. Roof bushwick bodega copper out bird of roof. Pabst kale tumblr everyday them seitan same chips fam.

Sartorial gastropub intelligentsia readymade master beer. Them four kogi bruh twee polaroid party kogi. Yolo gentrify.""",
                    13,
                    color: const Color(0xff121212)),

                // fifth
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 5),
                  child: reusableText(
                      "5, Customer Support, Information, Questions and Complaints",
                      20,
                      color: const Color(0xff121212)),
                ),
                reusableText(
                    """Hipster ipsum tattooed brunch I'm baby. Dsa food kombucha vice party bun. Readymade selvage vinegar franzen enamel ramps. Air them you fingerstache tile skateboard occupy same pok heirloom. Whatever plz etsy on coffee bun. Mumblecore bitters enamel single-origin tile bushwick chia. Roof bushwick bodega copper out bird of roof. Pabst kale tumblr everyday them seitan same chips fam.

Sartorial gastropub intelligentsia readymade master beer. Them four kogi bruh twee polaroid party kogi. Yolo gentrify.""",
                    13,
                    color: const Color(0xff121212)),

                // sixth
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 5),
                  child: reusableText("6, Problems and Disputes", 20,
                      color: const Color(0xff121212)),
                ),
                reusableText(
                    """Hipster ipsum tattooed brunch I'm baby. Dsa food kombucha vice party bun. Readymade selvage vinegar franzen enamel ramps. Air them you fingerstache tile skateboard occupy same pok heirloom. Whatever plz etsy on coffee bun. Mumblecore bitters enamel single-origin tile bushwick chia. Roof bushwick bodega copper out bird of roof. Pabst kale tumblr everyday them seitan same chips fam.

Sartorial gastropub intelligentsia readymade master beer. Them four kogi bruh twee polaroid party kogi. Yolo gentrify.""",
                    13,
                    color: const Color(0xff121212)),

                // seventh
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 5),
                  child: reusableText("7, About these Terms", 20,
                      color: const Color(0xff121212)),
                ),
                reusableText(
                    """Hipster ipsum tattooed brunch I'm baby. Dsa food kombucha vice party bun. Readymade selvage vinegar franzen enamel ramps. Air them you fingerstache tile skateboard occupy same pok heirloom. Whatever plz etsy on coffee bun. Mumblecore bitters enamel single-origin tile bushwick chia. Roof bushwick bodega copper out bird of roof. Pabst kale tumblr everyday them seitan same chips fam.

Sartorial gastropub intelligentsia readymade master beer. Them four kogi bruh twee polaroid party kogi. Yolo gentrify.""",
                    13,
                    color: const Color(0xff121212)),
                SizedBox(height: 6.1576354679802955665.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text reusableText(String val, double size,
      {Color color = const Color(0xffCC004E)}) {
    return Text(
      val,
      style: TextStyle(fontSize: size, color: color),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 5.0492610837438423645.h,
      leadingWidth: 12.266666666666666667.w,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 5.8666666666666666667.w,
          top: 1.477832512315270936.h,
          bottom: 0.61576354679802955665.h,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "terms & conditions",
      ),
    );
  }
}
