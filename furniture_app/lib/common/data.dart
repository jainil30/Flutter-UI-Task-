import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/constants/icons.dart';
import 'package:furniture_app/views/payments_screen.dart';
import 'package:furniture_app/views/settings_screen.dart';

import '../views/notification_screen.dart';

/*used_for: All static data are present here
 */
final initData = [
  {
    "imageUrl": "assets/images/init_1.png",
    "text": "View And Exprience Furniture With The Help Of Augmented Reality"
  },
  {
    "imageUrl": "assets/images/init_2.png",
    "text": "Design Your Space With Augmented Reality By Creating Room"
  },
  {
    "imageUrl": "assets/images/init_3.png",
    "text":
        "Explore World Class Top Furnitures As Per Your Requirements & Choice"
  }
];

final specialOffersData = [
  {
    "imageUrl": "assets/images/sp_offers_1.jpg",
    "discount": "25% Discount",
    "title": "For a cozy yellow set!",
    "btnName": "Learn More"
  },
  {
    "imageUrl": "assets/images/sp_offers_2.jpg",
    "discount": "35% Discount",
    "title": "For a cozy yellow set!",
    "btnName": "Shop Now"
  }
];

final categories = [
  {"imageUrl": "assets/images/sofa.svg", "label": "Armchair"},
  {"imageUrl": "assets/images/sofa.svg", "label": "Sofa"},
  {"imageUrl": "assets/images/bed.svg", "label": "Bed"},
  {"imageUrl": "assets/images/lamp.svg", "label": "Light"},
];

final items = [
  {
    "id": 1,
    "imageUrl": "assets/images/inte_1.png",
    "imageBig": "assets/images/inte_b_1.png",
    "itemName": "Ox Mathis Chair",
    "shopName": "Hans j. wegner",
    "price": 9.99,
    "description":
        "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
    "likes": 294,
    "isLiked": false,
  },
  {
    "id": 2,
    "imageUrl": "assets/images/inte_2.png",
    "itemName": "Fuji Arm Chair",
    "imageBig": "assets/images/inte_2.png",
    "shopName": "Hans j. wegner",
    "price": 9.99,
    "description":
        "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
    "likes": 290,
    "isLiked": false,
  },
  {
    "id": 3,
    "imageUrl": "assets/images/popular_1.png",
    "itemName": "Swoon Lounge",
    "shopName": "Regal Do Lobo",
    "imageBig": "assets/images/popular_b_1.png",
    "price": 9.99,
    "description":
        "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
    "likes": 294,
    "isLiked": false,
  },
  {
    "id": 4,
    "imageUrl": "assets/images/popular_2.png",
    "itemName": "Rotating Chair",
    "shopName": "Hans j. wegner",
    "imageBig": "assets/images/popular_b_2.png",
    "price": 39.99,
    "description":
        "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
    "likes": 290,
    "isLiked": false,
  },
  {
    "id": 5,
    "imageUrl": "assets/images/i1.png",
    "itemName": "Levi Armchair",
    "shopName": "Cultured White",
    "imageBig": "assets/images/popular_b_2.png",
    "price": 279.95,
    "description":
        "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
    "likes": 290,
    "isLiked": false,
  },
  {
    "id": 6,
    "imageUrl": "assets/images/i2.png",
    "itemName": "Hero Armchair",
    "shopName": "Cultured White",
    "imageBig": "assets/images/popular_b_2.png",
    "price": 250.91,
    "description":
        "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
    "likes": 290,
    "isLiked": false,
  },
  {
    "id": 7,
    "imageUrl": "assets/images/i3.png",
    "itemName": "Slipcove Armchair",
    "shopName": "Hatil-Loren",
    "imageBig": "assets/images/popular_b_2.png",
    "price": 369.86,
    "description":
        "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
    "likes": 290,
    "isLiked": false,
  },
  {
    "id": 8,
    "imageUrl": "assets/images/i4.png",
    "itemName": "Rose Armchair",
    "shopName": "Regel Furniture",
    "imageBig": "assets/images/popular_b_2.png",
    "price": 258.91,
    "description":
        "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
    "likes": 290,
    "isLiked": false,
  },
  {
    "id": 9,
    "imageUrl": "assets/images/i6.png",
    "itemName": "Besen Egge Chair",
    "shopName": "Partex Furniture",
    "imageBig": "assets/images/popular_b_2.png",
    "price": 398.86,
    "description":
        "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
    "likes": 290,
    "isLiked": false,
  }
];

final interestedItems = [
  {
    "id": 1,
    "imageUrl": "assets/images/inte_1.png",
    "imageBig": "assets/images/inte_b_1.png",
    "itemName": "Ox Mathis Chair",
    "shopName": "Hans j. wegner",
    "price": 9.99,
    "description":
        "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
    "likes": 294,
    "isLiked": false,
  },
  {
    "id": 2,
    "imageUrl": "assets/images/inte_2.png",
    "itemName": "Fuji Arm Chair",
    "imageBig": "assets/images/inte_2.png",
    "shopName": "Hans j. wegner",
    "price": 9.99,
    "description":
        "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
    "likes": 290,
    "isLiked": false,
  }
];

final popularItems = [
  {
    "id": 3,
    "imageUrl": "assets/images/popular_1.png",
    "itemName": "Swoon Lounge",
    "shopName": "Regal Do Lobo",
    "imageBig": "assets/images/popular_b_1.png",
    "price": 9.99,
    "description":
        "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
    "likes": 294,
    "isLiked": false,
  },
  {
    "id": 4,
    "imageUrl": "assets/images/popular_2.png",
    "itemName": "Rotating Chair",
    "shopName": "Hans j. wegner",
    "imageBig": "assets/images/popular_b_2.png",
    "price": 39.99,
    "description":
        "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
    "likes": 290,
    "isLiked": false,
  }
];

/*
  Created By : Jainil Dalwadi
  Purpose : Profile Menu Items
 */
final profilePageMenu = [
  {"title": "Profile", "icon": "assets/icons/profile_icon.svg", "routeTo": ""},
  {
    "title": "Payment Methods",
    "icon": "assets/icons/payments_icon.svg",
    "routeTo": PaymentScreen.routeName
  },
  {
    "title": "Order History",
    "icon": "assets/icons/order_history.svg",
    "routeTo": ""
  },
  {
    "title": "Delivery Address",
    "icon": "assets/icons/delivery_address_icon.svg",
    "routeTo": ""
  },
  {
    "title": "Support Center",
    "icon": "assets/icons/support_center.svg",
    "routeTo": ""
  },
  {
    "title": "Legal Policy",
    "icon": "assets/icons/legal_policy.svg",
    "routeTo": ""
  },
  {
    "title": "Settings",
    "icon": "assets/icons/legal_policy.svg",
    "routeTo": SettingsScreen.routeName
  },
];

/*
  Created By : Jainil Dalwadi
  Purpose : Settings Menu Item
 */
final settingsPageMenu = [
  {
    "title": "Notifications",
    "icon": "assets/icons/notification.svg",
    "routeTo": NotificationScreen.routeName
  },
  {
    "title": "Email Settings",
    "icon": "assets/icons/email_icon.svg",
    "routeTo": ""
  },
  {
    "title": "Manage Addresses",
    "icon": "assets/icons/manage_address.svg",
    "routeTo": ""
  },
  {
    "title": "Manage Payment",
    "icon": "assets/icons/payments_icon.svg",
    "routeTo": ""
  },
  {
    "title": "Data Control",
    "icon": "assets/icons/data_center.svg",
    "routeTo": ""
  },
];

/*
  Created By : Jainil Dalwadi
  Purpose : Categories of Category Screen
 */
final categorisPageMenu = [
  {
    "title": "Minimalist Chair",
    "icon": IconsConstants.MINIMALIST_CHAIR,
    "products": "126 Products"
  },
  {
    "title": "Hiro Arm Chair",
    "icon": IconsConstants.HIRO_ARM_CHAIR,
    "products": "236 Products"
  },
  {
    "title": "Florence Chair ",
    "icon": IconsConstants.FLORENCE_CHAIR,
    "products": "375 Products"
  },
  {
    "title": "Pearlystic Chair",
    "icon": IconsConstants.PEARLYSTIC_CHAIR,
    "products": "296 Products"
  },
  {
    "title": "Arm Oxer Chair",
    "icon": IconsConstants.ARM_OXER_CHAIR,
    "products": "946 Products"
  },
];

/*
  Created By : Jainil Dalwadi
  Purpose : Notifications Screen Menu
 */
final notificationPageMenu = [
  {
    "title": "Your order will be ship. Once we get confirm address",
    "icon": IconsConstants.FLORENCE_ARCADIA_CHAIR,
    "subtitle": "16 minute ago",
    "isDismissed": false
  },
  {
    "title": "Special offer on bean upto 46% off all the products",
    "icon": IconsConstants.ROATATING_LOUNGE_CHAIR,
    "subtitle": "26 minute ago",
    "isDismissed": false
  },
  {
    "title": "New products you may like are available go and show now.",
    "icon": IconsConstants.LEVI_ARMCHAIR,
    "subtitle": "49 minute ago",
    "isDismissed": false
  },
  {
    "title": "Your order 3 summery green chiar has been shipped!",
    "icon": IconsConstants.NOTIFICATION_MENU_DEFAULT_ICON,
    "subtitle": "16 days ago",
    "isDismissed": false
  },
];

/*
  Created By : Jainil Dalwadi
  Purpose : Checkout Screen Address Menu
 */
final addressList = [
  {
    "addressId": 1,
    "addressType": "Home Address",
    "phoneNumber": "(269)- 444-6853",
    "address": "Road Number 5649 Akali"
  },
  {
    "addressId": 2,
    "addressType": "Office Address",
    "phoneNumber": "259- 444-6853",
    "address": "1578 H Blog Shekh Para"
  }
];

/*
  Created By : Jainil Dalwadi
  Purpose : Checkout Screen Address Menu
 */
final paymentsList = [
  {
    "paymentId": 1,
    "paymentMethodName": "Credit Card",
    "icon": IconsConstants.CREDIT_CARD_ICON,
  },
  {
    "paymentId": 2,
    "paymentMethodName": "Paypal",
    "icon": IconsConstants.PAYPAL_ICON,
  },
  {
    "paymentId": 3,
    "paymentMethodName": "Apple Pay",
    "icon": IconsConstants.APPLE_PAY_ICON,
  },
  {
    "paymentMethodName": "All 12 Methods",
    "icon": IconsConstants.ALL_OTHER_ICON,
  },
];

/*
  Created By : Jainil Dalwadi
  Purpose : To show reviews in Review Screen
 */

final reviewsList = [{}];

final brands = [
  "Partex",
  "Regular Furniture",
  "Hatil",
  "Regal"
];

final colorsList = [
  primaryColor,
  Colors.amber,
Colors.black,
Colors.grey
];

final stars = [
  "5",
  "4",
  "3",
  "2",
  "1"
];
