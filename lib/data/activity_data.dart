import 'package:instaclone/model/category_icon.dart';
import 'package:instaclone/model/tour_weather_card.dart';

final List<CategoryIcon> categoryIcon = [
  CategoryIcon(
      categoryName: '바다',
      categoryImage: 'https://cdn.pixabay.com/photo/2017/08/09/17/38/kayaking-2615279_960_720.jpg',
      categoryPage: 'page1'),
  CategoryIcon(
      categoryName: '호수/강',
      categoryImage: 'https://cdn.pixabay.com/photo/2019/01/23/17/34/rock-3950774_960_720.jpg',
      categoryPage: 'page2'),
  CategoryIcon(
      categoryName: '서핑',
      categoryImage: 'https://cdn.pixabay.com/photo/2017/09/04/18/14/surfing-2714904_960_720.jpg',
      categoryPage: 'page3'),
  CategoryIcon(
      categoryName: '급류',
      categoryImage: 'https://cdn.pixabay.com/photo/2019/05/15/14/45/kayak-4205119_960_720.jpg',
      categoryPage: 'page4'),
  CategoryIcon(
      categoryName: '다운윈드',
      categoryImage: 'https://cdn.pixabay.com/photo/2019/05/28/00/13/surfer-4234061_960_720.jpg',
      categoryPage: 'page5'),
];

final List<TourWeatherCard> tourWeatherCard = [
  TourWeatherCard(
      imgUrl: "https://cafeptthumb-phinf.pstatic.net/MjAyMDA2MTRfMTIz/MDAxNTkyMTA0NzAxNTkx.yWBlVCqOQxUMTVdx3OrLAsDMSJHCNuOpcMJ8_eeOUEkg.JTKUlb0rNwlECEhF9tmfDuQQEk5kBsFwSdea1QJdB5cg.JPEG/IMG-1427.JPG?type=w800",
      title: '입파도 무인도 힐링 투어',
      weatherInfo : "파도 / 바람 / 조류 / 기상",
      recommend : '초급자도 참여할 수 있는 카약 투어가 가능합니다',
  ),
  TourWeatherCard(
    imgUrl: "https://cafeptthumb-phinf.pstatic.net/MjAyMTExMDFfNjYg/MDAxNjM1NzMzMzI4NTAy.wbODNoPSDU2Sjr9aRvUjaUfazgETvoyZz6RL1U-S3yUg.k80abFxFPMu6TAeL0pnjzzOBbRjOXxR0jXvFCZofpBUg.JPEG/KakaoTalk_20211101_080221345_04.jpg?type=w1600",
    title: '물 위의 단풍 투어 - 춘천호',
    weatherInfo : "파도 / 바람 / 기상",
    recommend : '바람이 강해서 중급자 이상 참여 가능합니다',
  ),
  TourWeatherCard(
    imgUrl: "https://cafeptthumb-phinf.pstatic.net/MjAxOTA2MjRfMTYw/MDAxNTYxMzEwMzg5ODg5.HQiSE-bwgcOZB1s1a0STN7KhJcC49EwDsastReeOI9Ig.Cwwvjvsny_9Ug94mKdxSiEAX0qOXbhv0iyNXGWxj_n0g.GIF/IMG_0202_Lively.GIF?type=w800",
    title: '삼척 카약 서핑',
    weatherInfo : "파도 / 바람 / 기상",
    recommend : '상급자에게 최적의 파도가 예보되어 있습니다',
  ),
];