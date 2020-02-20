import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ControllerTab extends StatefulWidget implements YoutubePlayerController {
  @override
  _ControllerTabState createState() => _ControllerTabState();

  @override
  YoutubePlayerValue value;

  @override
  void addListener(listener) {
    // TODO: implement addListener
  }

  @override
  void cue(String videoId, {int startAt = 0}) {
    // TODO: implement cue
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void fitHeight(Size screenSize) {
    // TODO: implement fitHeight
  }

  @override
  void fitWidth(Size screenSize) {
    // TODO: implement fitWidth
  }

  @override
  // TODO: implement flags
  YoutubePlayerFlags get flags => null;

  @override
  // TODO: implement hasListeners
  bool get hasListeners => null;

  @override
  // TODO: implement initialVideoId
  String get initialVideoId => null;

  @override
  void load(String videoId, {int startAt = 0}) {
    // TODO: implement load
  }

  @override
  // TODO: implement metadata
  YoutubeMetaData get metadata => null;

  @override
  void mute() {
    // TODO: implement mute
  }

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
  }

  @override
  void pause() {
    // TODO: implement pause
  }

  @override
  void play() {
    // TODO: implement play
  }

  @override
  void reload() {
    // TODO: implement reload
  }

  @override
  void removeListener(listener) {
    // TODO: implement removeListener
  }

  @override
  void reset() {
    // TODO: implement reset
  }

  @override
  void seekTo(Duration position, {bool allowSeekAhead = true}) {
    // TODO: implement seekTo
  }

  @override
  void setPlaybackRate(double rate) {
    // TODO: implement setPlaybackRate
  }

  @override
  void setSize(Size size) {
    // TODO: implement setSize
  }

  @override
  void setVolume(int volume) {
    // TODO: implement setVolume
  }

  @override
  void toggleFullScreenMode() {
    // TODO: implement toggleFullScreenMode
  }

  @override
  void unMute() {
    // TODO: implement unMute
  }

  @override
  void updateValue(YoutubePlayerValue newValue) {
    // TODO: implement updateValue
  }
}

class _ControllerTabState extends State<ControllerTab> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
