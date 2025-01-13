import 'package:aplikacija2/models/place.dart';

class Places{

  static final List<Place> initialPlaces = [
    Place(
      name: 'Beach Resort Hotel',
      grade: 4.5,
      description: 'Beautiful beach resort with amazing views',
      facilities: ['Pool', 'Spa', 'Restaurant', 'Hotel' ],
      price: 200,
      imageurl: 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/152527660.jpg?k=6a861f3db25e53d8b6941254516b3e5f1ecef2560e2e52def7e3b7d835349e8b&o=',
      reviews: 3112,
    ),
    Place(
      name: 'Beach Resort',
      grade: 4.5,
      description: 'Beautiful beach resort with amazing views',
      facilities: ['Pool', 'Spa', 'Restaurant', 'Food'],
      price: 200,
      imageurl: 'https://hips.hearstapps.com/hmg-prod/images/champagne-beach-espiritu-santo-island-vanuatu-royalty-free-image-1655672510.jpg',
      reviews: 3112,
    ),
    Place(
      name: 'Planinarski Dom',
      grade: 4.8,
      description: 'Cozy mountain retreat',
      facilities: ['Hiking', 'Restaurant', 'Wifi'],
      price: 150,
      imageurl: 'https://fruskac.net/sites/default/files/styles/compress_large/public/gallery/tourism/planinarski-dom-strazilovo-1.jpg?itok=giMYNKnd',
      reviews: 333,
    ),
    Place(
      name: 'Mountain Lodge',
      grade: 4.8,
      description: 'Cozy mountain retreat',
      facilities: ['Hiking', 'Restaurant', 'Wifi'],
      price: 150,
      imageurl: 'https://upload.wikimedia.org/wikipedia/commons/e/e7/Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg',
      reviews: 2432,
    ),
    Place(
      name: 'Dolina',
      grade: 4.8,
      description: 'Ерозија је разарање постојећих структурних веза стенске масе услед дејства егзогених сила и мењање њеног облика. Под појмом ерозија у елементарном смислу треба подразумевати промене на површинском слоју земљишног рељефа, које настају као последица деловања кише, снега, мраза, температурних разлика, ветра и текућих вода, или услед рада антропогених чинилаца. Уклањање стена или тла као кластичног седимента се назива физичка или механичка ерозија; ово је у супротности са хемијском ерозијом, где се земљиште или стенски материјал уклања из области растварањем.[1] Еродирани седимент или растворене материје могу се транспортовати само неколико милиметара или хиљадама километара.',
      facilities: ['Hiking', 'Restaurant', 'Wifi'],
      price: 150,
      imageurl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Teesta_River_Valley%2C_Sikkim.jpg/1280px-Teesta_River_Valley%2C_Sikkim.jpg',
      reviews: 2432,
    ),

  ];

  Future<List<Place>> getPlaces( )async{
    await Future.delayed(Duration(seconds: 2));
    return initialPlaces;
  }
}