import 'package:flutter/material.dart';

class Tweet {
  String id;
  String userFirstName;
  String userUserName;
  String userProfilePic;
  String tweet;
  List<String> imageLinks;
  String tweetedAt;
  int likesCount;
  int commentsCount;
  int retweetsCount;

  Tweet(
      {required this.id,
      required this.userFirstName,
      required this.userUserName,
      required this.userProfilePic,
      required this.tweet,
      required this.imageLinks,
      required this.tweetedAt,
      required this.likesCount,
      required this.commentsCount,
      required this.retweetsCount});
}

List tweets = [
  Tweet(
      id: '1',
      userFirstName: 'Lute',
      userUserName: 'Lute100',
      userProfilePic: 'assets/images/KevinHart2.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '2',
      userFirstName: 'Lute',
      userUserName: 'Lute100',
      userProfilePic: 'assets/images/KevinHart2.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/CaptainJackSparrow.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '3',
      userFirstName: 'Lute',
      userUserName: 'Lute100',
      userProfilePic: 'assets/images/KevinHart2.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: [],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '4',
      userFirstName: 'Lute',
      userUserName: 'Lute100',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '5',
      userFirstName: 'Lute',
      userUserName: 'Lute100',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '6',
      userFirstName: 'Lute',
      userUserName: 'Lute100',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '7',
      userFirstName: 'Lute',
      userUserName: 'Lute100',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '8',
      userFirstName: 'Lute',
      userUserName: 'Lute100',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '9',
      userFirstName: 'Lute',
      userUserName: 'Lute100',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '10',
      userFirstName: 'Lute',
      userUserName: 'Lute100',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
];
