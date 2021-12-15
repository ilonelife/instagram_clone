import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
   // getPosition();

  }

  Future<void> getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print('test');
    print(position.longitude);

  }

  // Future<void> getPosition() async {
  //   var currentPosition = await Geolocator()
  //       .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  //   var lastPosition = await Geolocator()
  //       .getLastKnownPosition(desiredAccuracy: LocationAccuracy.low);
  //   print(currentPosition);
  //   print(lastPosition);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20)),
          child: const Text('get my location'),
        ),
      ),
    );
  }
}
