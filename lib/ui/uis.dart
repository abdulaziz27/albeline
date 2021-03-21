// import 'dart:convert';
// import 'dart:html';
import 'dart:ui';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:albeline/models/models.dart';
// import 'package:albeline/services/auth.dart';
import 'package:albeline/viewModels/view_models.dart';
// import 'dart:async';
// import 'dart:io';

// Splash Screen
import 'package:albeline/constants.dart';
import 'package:albeline/size_config.dart';
// import 'package:albeline/routes.dart';
// import 'package:albeline/theme.dart';
import 'package:albeline/enums.dart';
// import 'package:albeline/wrapper.dart';

// Chatt
import 'package:flutter/material.dart';
// import 'package:albeline/ui/chatt/widgets/category_selector.dart';
// import 'package:albeline/ui/chatt/widgets/recent_chats.dart';
// import 'package:albeline/ui/chatt/models/message_model.dart';
// import 'package:albeline/ui/chatt/screens/chat_screen.dart';
import 'package:albeline/ui/chatt/models/user_model.dart';

// import 'package:albeline/ui/chatt/widgets/favorite_contacts.dart';

// This is the best practice
// import '../components/splash_content.dart';
// import '../../../components/default_button.dart';

// This is the best practice
// import '../components/splash_content.dart';
import 'package:albeline/widgets/widgets.dart';
// import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

part 'splash/splash_screen.dart';
part 'splash/components/body.dart';
part 'splash/components/splash_content.dart';

part 'sign_in/components/sign_form.dart';
part 'sign_in/components/body.dart';
part 'sign_in/sign_in_screen.dart';

part 'forgot_password/forgot_password_screen.dart';
part 'forgot_password/components/body.dart';

part 'login_success/login_success_screen.dart';
part 'login_success/components/body.dart';

part 'home/home_screen.dart';
part 'home/components/body.dart';
part 'home/components/allproducts.dart';
part 'home/components/categories.dart';
part 'home/components/discount_banner.dart';
part 'home/components/home_header.dart';
part 'home/components/icon_btn_with_counter.dart';
// part 'home/components/popular_product.dart';
part 'home/components/search_field.dart';
part 'home/components/section_title.dart';
part 'home/components/special_offers.dart';

part 'helper/keyboard.dart';

part 'complete_profile/complete_profile_screen.dart';
part 'complete_profile/components/body.dart';
part 'complete_profile/components/complete_profile_form.dart';

part 'create_product/create_product_screen.dart';
part 'create_product/components/body.dart';
part 'create_product/components/create_product_form.dart';

part 'otp/otp_screen.dart';
part 'otp/components/body.dart';
part 'otp/components/otp_form.dart';

part 'sign_up/sign_up_screen.dart';
part 'sign_up/components/body.dart';
part 'sign_up/components/sign_up_form.dart';

part 'profile/profile_screen.dart';
part 'profile/components/body.dart';
part 'profile/components/profile_menu.dart';
part 'profile/components/profile_pic.dart';

part 'chatt/chatt_screen.dart';
part 'chatt/components/body.dart';
// part 'chatt/widgets/category_selector.dart';
// part 'chatt/widgets/favorite_contacts.dart';
part 'chatt/widgets/recent_chats.dart';
part 'chatt/screens/chat_screen.dart';
part 'chatt/models/message_model.dart';

part 'cart/cart_screen.dart';
part 'cart/components/body.dart';

part 'notification/notif_screen.dart';
part 'notification/components/body.dart';

// part 'details/details_screen.dart';
// part 'details/components/body.dart';
// part 'details/components/color_dots.dart';
// part 'details/components/custom_app_bar.dart';
// part 'details/components/product_description.dart';
// part 'details/components/product_images.dart';
// part 'details/components/top_rounded_container.dart';

part 'product_detail/components/body.dart';
part 'product_detail/components/sample_screen.dart';
part 'product_detail/product_detail_screen.dart';

part 'help_center/help_center_screen.dart';
part 'help_center/components/body.dart';

part 'setting_profile/setting_profile_screen.dart';
part 'setting_profile/components/body.dart';

part 'productsbycategory/products_by_category_screen.dart';
// part 'productsbycategory/';

part 'help_center/components/app_work_content_screen.dart';
part 'help_center/components/contents/app_work.dart';

part 'help_center/components/buy_items_content_screen.dart';
part 'help_center/components/contents/buy_items.dart';

part 'help_center/components/features_cod_content_screen.dart';
part 'help_center/components/contents/features_cod.dart';
