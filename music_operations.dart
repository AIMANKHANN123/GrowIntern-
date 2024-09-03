







import 'package:spotify_app/models/music.dart';

class MusicOperations{
  MusicOperations._(){}
  static List<Music> getMusic(){
    return <Music>[
        Music(
          'Ya Mustafa.',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS19Fc6x2ZQJa09I2U28wZ_lrVZvEgtfssNUw&s',
          'heartfelt tribute',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/1b/a9/53/1ba953e9-2503-7645-5eff-31ee942d974d/mzaf_2024779829090920595.plus.aac.p.m4a'

          ),
      Music(
          'Kun Anta.',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhQET7UpbZdXCytNbn0do-jqdq36TES9uzyQ&s',
          'Spiritual beauty',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/b5/f0/cf/b5f0cfb0-f48a-3e55-bd6f-1e3d31d3434d/mzaf_15252634693029984126.plus.aac.p.m4a'

          ),
      Music(
          'Ya NabiSalam ',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNf1s9PXGJ-FXWvOPt2Oi1nSwqYsRRAWzyUg&s',
          'Declaration love ',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/27/81/75/27817575-57bc-6889-4d88-d3cdbf5f84cd/mzaf_1897626761425666704.plus.aac.p.m4a'
          ),
      Music(
          'BarakAllah',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxjSnyUJltmPVD8v_bD6h3Dfuzg5wvFa91rQ&s',
          'Guiding light.',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/27/81/75/27817575-57bc-6889-4d88-d3cdbf5f84cd/mzaf_1897626761425666704.plus.aac.p.m4a'
          )
    ];
  }
}
