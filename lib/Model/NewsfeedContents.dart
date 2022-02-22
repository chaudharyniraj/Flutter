class NewsfeedContents {
  String image;
  String name;
  String profileImage;
  String caption;
  String comments;
  String likes;
  // NewsfeedContents(
  //      this.name,
  //      this.image,
  //      this.profileImage,
  //      this.caption,
  //      this.comments,
  //      this.likes);

  NewsfeedContents(
      {required this.name,
      required this.image,
      required this.profileImage,
      required this.caption,
      required this.comments,
      required this.likes});
}

List<NewsfeedContents> newsfeedContents = [
  NewsfeedContents(
      profileImage: 'profile.png',
      name: 'Niraj Chaudhary',
      image: 'profile.png',
      caption: '',
      comments: '12k',
      likes: '200'),
  NewsfeedContents(
      profileImage: 'profile.png',
      name: 'Ram Chapagain',
      image: 'image1.jpg',
      caption: 'Smarat',
      comments: '14k',
      likes: '20'),
  NewsfeedContents(
      name: 'Sagar Karki',
      image: 'image.png',
      caption: 'Hello i am caption',
      profileImage: 'profile.png',
      comments: '23k',
      likes: '20k'),
  NewsfeedContents(
      name: 'Rupesh Shrestha',
      image: 'image1.jpg',
      caption: 'Hello i am caption',
      profileImage: 'profile.png',
      comments: '1M',
      likes: '20k'),
  NewsfeedContents(
      name: 'Kushal Rajbhandari',
      image: 'image.png',
      caption: 'Hello i am caption',
      profileImage: 'profile.png',
      comments: '28k',
      likes: '20M'),
];
