import 'package:audioplayers/audioplayers.dart';

class AudioService {
  final AudioPlayer _player = AudioPlayer();

  Future<void> play(String url) async {
    await _player.play(UrlSource(url));
  }

  Future<void> playLocal(String assetPath) async {
    await _player.play(AssetSource(assetPath));
  }

  Future<void> stop() async {
    await _player.stop();
  }

  Future<void> pause() async {
    await _player.pause();
  }

  void dispose() {
    _player.dispose();
  }
}
