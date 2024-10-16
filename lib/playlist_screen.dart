import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.favorite_border),
          SizedBox(width: 16),
          Icon(Icons.more_vert),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/track_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            'Dreamy planet',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Sleep melody',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          Column(
            children: [
              Slider(
                value: 120,
                max: 186,
                activeColor: Colors.blueAccent,
                inactiveColor: Colors.grey,
                onChanged: (value) {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2:07',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '3:06',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.skip_previous, size: 40, color: Colors.white),
              Icon(Icons.play_circle_fill, size: 60, color: Colors.blueAccent),
              Icon(Icons.skip_next, size: 40, color: Colors.white),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
