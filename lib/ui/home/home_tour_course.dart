import 'package:flutter/material.dart';
import 'package:instaclone/model/tour_weather_card.dart';

class HomeTourCourse extends StatelessWidget {
  final TourWeatherCard tourWeatherCard;

  const HomeTourCourse({Key key, this.tourWeatherCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              tourWeatherCard.imgUrl,
            ),
            Text(tourWeatherCard.title),
            Text(tourWeatherCard.weatherInfo),
            Divider(),
            Text(tourWeatherCard.recommend),
          ],
        ),
      ),
    );
  }
}
