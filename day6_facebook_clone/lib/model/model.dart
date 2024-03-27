class FacebookUser {
  String name;
  String image;
  String status;
  String profileImage;
  bool isOnline;
  String like;
  String comment;
  String storyImage;
  String time;

  FacebookUser({
    required this.name,
    required this.comment,
    required this.image,
    required this.isOnline,
    required this.like,
    required this.profileImage,
    required this.status,
    required this.storyImage,
    required this.time,
  });
}

List<FacebookUser> userInfo = [
  FacebookUser(
      name: "Johna Smith",
      image: "images/image1.jpg",
      status:
          "Only programmers know the pain :( \n#programmer #software engineer #fullstack developer",
      comment: "111",
      isOnline: true,
      like: "11K",
      time: "12 min ago",
      profileImage: "images/profile2.jpg",
      storyImage: "images/story1.jpg"),
  FacebookUser(
      name: "Maria Garcia",
      image: "images/image2.jpg",
      time: "2 h ago",
      status: "0!=days()",
      comment: "200",
      isOnline: true,
      like: "20.5K",
      profileImage: "images/profile3.png",
      storyImage: "images/story2.jpg"),
  FacebookUser(
      name: "Anish Hazra",
      image: "images/image4.jpg",
      time: "1 day ago",
      status: "Main gira hua banda jama nich baliye. #Dogesh #Cheems",
      comment: "2",
      isOnline: false,
      like: "200",
      profileImage: "images/profile1.jpg",
      storyImage: "images/image3.jpg"),
  FacebookUser(
      name: "Anna Johnson",
      time: "22 hr ago",
      image: "images/image5.jpg",
      status: "World War III ???",
      comment: "20",
      isOnline: true,
      like: "2K",
      profileImage: "images/profile4.png",
      storyImage: "images/story3.jpg"),
  FacebookUser(
      name: "Chen Wei",
      time: "2 week ago",
      image: "images/story5.jpg",
      status:
          "In quiet moments, find serenity. Stillness speaks, wisdom whispers. Peace within, tranquility embraced. #InnerPeace #Mindfulness",
      comment: "1k",
      isOnline: false,
      like: "100K",
      profileImage: "images/profile3.png",
      storyImage: "images/image7.jpg"),
];
