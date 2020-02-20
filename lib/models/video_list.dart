import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:tedx_niit/constants/Constants.dart';
/// Creates list of video players
///
///
///
final List<String> _urls19 = [
  'https://youtu.be/ZljJEjJ7n_g?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
  'https://youtu.be/PjrM3G8PCb8?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
  'https://youtu.be/ysYik6Ptfy4?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
  'https://youtu.be/taQbsxI-IfU?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
  'https://youtu.be/umH9yka1siY?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
  'https://youtu.be/0qsQpUJv-Ck?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
  'https://youtu.be/4wa3XDh72lE?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
  'https://youtu.be/VaegXWjUhN0?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
];

final List<String> _url_ids = _urls19.map((url){return YoutubePlayer.convertUrlToId(url);}).toList();

class VideoList extends StatefulWidget {
  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  final List<YoutubePlayerController> _controllers = _url_ids.map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  )
      .toList();

/*
  final  List<String> _urls19 = [
    'https://youtu.be/ZljJEjJ7n_g?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
    'https://youtu.be/PjrM3G8PCb8?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
    'https://youtu.be/ysYik6Ptfy4?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
    'https://youtu.be/taQbsxI-IfU?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
    'https://youtu.be/umH9yka1siY?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
    'https://youtu.be/0qsQpUJv-Ck?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
    'https://youtu.be/4wa3XDh72lE?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
    'https://youtu.be/VaegXWjUhN0?list=PLsRNoUx8w3rO01rum8RfjQn5LVl5Vq7Ka',
  ];

  static final List<String> _url_ids = _urls19.map((url){return YoutubePlayer.convertUrlToId(url);}).toList();
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video List Demo'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return YoutubePlayer(
            key: ObjectKey(_controllers[index]),
            controller: _controllers[index],
            actionsPadding: EdgeInsets.only(left: 16.0),
            bottomActions: [
              CurrentPosition(),
              SizedBox(width: 10.0),
              ProgressBar(isExpanded: true),
              SizedBox(width: 10.0),
              RemainingDuration(),
              FullScreenButton(),
            ],
          );
        },
        itemCount: _controllers.length,
        separatorBuilder: (context, _) => SizedBox(height: 10.0),
      ),
    );
  }
}