class NewsfeedContents {
  String image;
  String name;
  String profileImage;
  String caption;

  NewsfeedContents(
      {required this.name,
      required this.image,
      required this.profileImage,
      required this.caption});
}

List<NewsfeedContents> newsfeedContents = [
  NewsfeedContents(
      profileImage: 'profile.png',
      name: 'Niraj Chaudhary',
      image: 'profile.png',
      caption: 'Hello i am caption'),
  NewsfeedContents(
    profileImage: 'profile.png',
    name: 'Ram Chapagain',
    image: 'image1.jpg',
    caption: '',
  ),
  NewsfeedContents(
    name: 'Sagar Karki',
    image: 'image.png',
    caption: 'Hello i am caption',
    profileImage: 'profile.png',
  ),
  NewsfeedContents(
    name: 'Rupesh Shrestha',
    image: 'image1.jpg',
    caption: 'Hello i am caption',
    profileImage: 'profile.png',
  ),
  NewsfeedContents(
    name: 'Kushal Rajbhandari',
    image: 'image.png',
    caption: 'Hello i am caption',
    profileImage: 'profile.png',
  ),
];
