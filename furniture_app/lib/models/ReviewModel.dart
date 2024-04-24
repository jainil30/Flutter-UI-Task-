/// reviewerName : "Angelina Anderson"
/// reviewStars : "4.5"
/// reviewTime : "16 Minutes"
/// reviewerProfilePicture : "https://th.bing.com/th/id/OIP.uFXviv0pQL0EQOCHR3sLWQHaFj?rs=1&pid=ImgDetMain"
/// review : "nice studio, the app where You can buy Your furniture with just a top without any hassle_ products are realy awesome....."

class ReviewModel {
  ReviewModel({
      String? reviewerName, 
      String? reviewStars, 
      String? reviewTime, 
      String? reviewerProfilePicture, 
      String? review,}){
    _reviewerName = reviewerName;
    _reviewStars = reviewStars;
    _reviewTime = reviewTime;
    _reviewerProfilePicture = reviewerProfilePicture;
    _review = review;
}

  ReviewModel.fromJson(dynamic json) {
    _reviewerName = json['reviewerName'];
    _reviewStars = json['reviewStars'];
    _reviewTime = json['reviewTime'];
    _reviewerProfilePicture = json['reviewerProfilePicture'];
    _review = json['review'];
  }
  String? _reviewerName;
  String? _reviewStars;
  String? _reviewTime;
  String? _reviewerProfilePicture;
  String? _review;
ReviewModel copyWith({  String? reviewerName,
  String? reviewStars,
  String? reviewTime,
  String? reviewerProfilePicture,
  String? review,
}) => ReviewModel(  reviewerName: reviewerName ?? _reviewerName,
  reviewStars: reviewStars ?? _reviewStars,
  reviewTime: reviewTime ?? _reviewTime,
  reviewerProfilePicture: reviewerProfilePicture ?? _reviewerProfilePicture,
  review: review ?? _review,
);
  String? get reviewerName => _reviewerName;
  String? get reviewStars => _reviewStars;
  String? get reviewTime => _reviewTime;
  String? get reviewerProfilePicture => _reviewerProfilePicture;
  String? get review => _review;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['reviewerName'] = _reviewerName;
    map['reviewStars'] = _reviewStars;
    map['reviewTime'] = _reviewTime;
    map['reviewerProfilePicture'] = _reviewerProfilePicture;
    map['review'] = _review;
    return map;
  }

}