import 'package:furniture_app/constants/icons.dart';

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

final interestedItems = [
  {
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
  {"title": "Profile", "icon": "assets/icons/profile_icon.svg"},
  {"title": "Payment Methods", "icon": "assets/icons/payments_icon.svg"},
  {"title": "Order History", "icon": "assets/icons/order_history.svg"},
  {
    "title": "Delivery Address",
    "icon": "assets/icons/delivery_address_icon.svg"
  },
  {"title": "Support Center", "icon": "assets/icons/support_center.svg"},
  {"title": "Legal Policy", "icon": "assets/icons/legal_policy.svg"},
];

/*
  Created By : Jainil Dalwadi
  Purpose : Settings Menu Item
 */
final settingsPageMenu = [
  {"title": "Notifications", "icon": "assets/icons/notification.svg"},
  {"title": "Email Settings", "icon": "assets/icons/email_icon.svg"},
  {"title": "Manage Addresses", "icon": "assets/icons/manage_address.svg"},
  {"title": "Manage Payment", "icon": "assets/icons/payments_icon.svg"},
  {"title": "Data Control", "icon": "assets/icons/data_center.svg"},
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
