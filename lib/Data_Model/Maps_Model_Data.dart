import 'package:google_maps_flutter/google_maps_flutter.dart';

class Coffee {
  String? id;
  String? shopName;
  String? address;
  String? description;
  String? thumbNail;
  LatLng? locationCoords;

  Coffee(
      {
      this.id,
      this.shopName,
      this.address,
      this.description,
      this.thumbNail,
      this.locationCoords});
}

final List<Coffee> coffeeShops = [
  Coffee(
    id: "dsafds2",
      shopName: 'Manhatta Restaurant',
      address: '28 Liberty St 60th floor, New York',
      description:
          'Set on the 60th floor, this ritzy, high-end restaurant features New American cuisine & city views.',
      locationCoords: LatLng(40.7078523, -74.008981),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipOP3A_aa72sd5Idu57fOskuTDfXAJZgO8QTpDiX=w408-h272-k-no'
      ),
  Coffee(
    id: "vcxvxvde2",
      shopName: 'Blue Smoke Restaurant',
      address: '255 Vesey St, New York',
      description:
          'Danny Meyer spacious barbecue joint matches its signature ribs with deep beer & bourbon lists.',
      locationCoords: LatLng(40.7146227, -74.0153539),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipPHJ8OS3NanBuvxNA46guMERW5KGkhm9mySfsN6=w408-h272-k-no'
      ),
  Coffee(
    id: "cxvxfe2",
      shopName: 'Atera Restaurant',
      address: '77 Worth St, New York',
      description:
          'Luxe, intimate spot for inventive, multicourse New American tasting menus & cocktails.',
      locationCoords: LatLng(40.7168996, -74.0055585),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipMouWpZt9ph49uKhIZrn7wfSIS68BU8JDZtoEFk=w408-h306-k-no'
      ),
  Coffee(
    id: "dsakdfs24",
      shopName: 'Katz Delicatessen Restaurant',
      address: '205 E Houston St, New York',
      description:
          'No-frills deli with theatrically cranky service serving mile-high sandwiches since 1888.',
      locationCoords: LatLng(40.7222339, -73.9874268),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipOcYz0IvXy3iKeiyoTqVYL6doj3xPj8OsN9IoWS=w427-h240-k-no'
      ),
  Coffee(
    id: "vcxe24",
      shopName: 'Estela Restaurant',
      address: '47 E Houston St 1st floor',
      description:
          'Small plates made with market ingredients & Mediterranean twists served in an unfussy cafe space.',
      locationCoords: LatLng(40.7246407, -73.9947438),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipPIDMNHBYYtQ7aYVB7-kFVvTKbbUHC4dsFpth2U=w408-h612-k-no'
      ),
  Coffee(
    id: "vdsg42a",
      shopName: 'Eleven Madison Restaurant',
      address: '11 Madison Ave',
      description:
          'Upscale American tasting menus from chef Daniel Humm served in a high-ceilinged art deco space.',
      locationCoords: LatLng(40.7416158, -73.9872336),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipORpCE38GEBjvmFeP2fO3yrHfKLjVb_wswX-Y_N=w408-h271-k-no'
      ), 
  Coffee(
    id: "dsgsd42z",
      shopName: 'Eataly NYC Flatiron',
      address: '200 5th Ave, New York',
      description:
          'Branch of the famed Italian market, offering counters, restaurants & cooking demos',
      locationCoords: LatLng(40.7420304, -73.9899802),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipM6YJb5R5BUEvT-Om_sxDo-bKILLJeW6hz9gHlp=w408-h306-k-no'
      ),
  Coffee(
    id: "vcxqrw1",
      shopName: 'The NoMad Restaurant',
      address: '1170 Broadway, New York',
      description:
          'Sophisticated, multi-room venue for refined, French-inspired modern cuisine, cocktails & wine.',
      locationCoords: LatLng(40.7448916, -73.9886177),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipO_JQlaiJSBBLJclOtZ1NiE0LWb7PoSq7sXp23w=w408-h272-k-no'
      ),
  Coffee(
    id: "bfdgds3",
      shopName: 'Zuma Restaurant',
      address: '261 Madison Ave, New York',
      description:
          'Trendy, high-end Japanese place with an izakaya-inspired menu including sushi & robata grilled fare.',
      locationCoords: LatLng(40.7503943, -73.9808929),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipOYWl5LbWtWkTIyYu5J28gW8zkrDKbh-Gi-0vbd=w408-h325-k-no'
      ),
  Coffee(
    id: "gdsknk24",
      shopName: 'Hard Rock Cafe Restaurant',
      address: '1501 Broadway, New York',
      description:
          'Rock ’n’ roll-themed chain with a high-energy vibe serving burgers & American classics.',
      locationCoords: LatLng(40.7570344, -73.9866114),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipNiMORD6qn0SxerZbLhWD7uMuHkAhZIxcMVYbXl=w426-h240-k-no'
      ),
  Coffee(
    id: "vsdgfea1",
      shopName: 'THE GRILL Restaurant',
      address: '99 E 52nd St, New York',
      description:
          'Steakhouse in an iconic Seagram Building setting with midcentury style, classic dishes & cocktails.',
      locationCoords: LatLng(40.7583184, -73.9718699),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipNGnlu1u_-DJY2JIhZMeWxEkkXO08Pull4-BMx3=w408-h271-k-no'
      ),
  Coffee(
    id: "vdsvdsg24",
      shopName: 'Daniel Restaurant',
      address: '60 E 65th St, New York',
      description:
          'Daniel Boulud elegant French flagship where jackets are required & expense accounts come in handy.',
      locationCoords: LatLng(40.7667697, -73.9675891),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipPTZe5UwMTffez0otVtnSJfWW0kKA3Up4pG242s=w408-h306-k-no'
      ),
  Coffee(
    id: "vcxsqr32",
      shopName: 'Per Se Restaurant',
      address: '10 Columbus Cir, New York',
      description:
          'Chef Thomas Keller New American restaurant offers luxe fixed-price menus, with Central Park views.',
      locationCoords: LatLng(40.7682405, -73.9828992),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipMXTgJv8vGWJqjUHrCwGCJOorbg8HTfFboIn7hA=w408-h271-k-no'
      ),
];