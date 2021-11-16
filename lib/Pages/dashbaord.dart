import 'package:flutter/material.dart';
import 'package:travel_app_tutorial/Widgets/options.dart';
import 'package:travel_app_tutorial/widgets/places.dart';
import 'package:travel_app_tutorial/widgets/recommended.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var safeArea = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xffECECEC),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: safeArea,
                ),
                SizedBox(
                  height: 60,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.menu,
                        size: 30,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://rounak.com.np/Images/Rounak.jpeg'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Hi, Rounak!',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Where Do \nyou want to go?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.search),
                        Icon(Icons.mic_none)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Options(
                        icon: Icons.flight, title: 'Flight', selected: true),
                    Options(icon: Icons.train, title: 'Train', selected: false),
                    Options(
                        icon: Icons.hotel, title: 'Hotels', selected: false),
                    Options(
                        icon: Icons.restaurant,
                        title: 'Restaurants',
                        selected: false),
                    Options(icon: Icons.spa, title: 'Spa', selected: false),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text('Recommended'),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      Recommended(
                          url:
                              'https://assets.vogue.in/photos/5ce431b346cf5953f8b18c74/master/pass/featured.2.jpg',
                          place: 'Kathmandu'),
                      Recommended(
                          url:
                              'https://www.outdoorhimalayan.com/wp-content/uploads/2018/03/Illam-730x410.jpg',
                          place: 'Ilam')
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text('Popular Places'),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: const [
                    Places(
                        url:
                            'https://ak-d.tripcdn.com/images/100d1a0000019o98r82BD_Z_640_10000_R5.jpg',
                        place: 'Pokhara',
                        description:
                            'Pokhara is a city on Phewa Lake, in central Nepal. It’s known as a gateway to the Annapurna Circuit, a popular trail in the Himalayas. Tal Barahi Temple, a 2-story pagoda, sits on an island in the lake. On the eastern shore, the Lakeside district has yoga centers and restaurants.',
                        rating: '4.8'),
                    Places(
                        url:
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Vedetar_2019_web_small.jpg/500px-Vedetar_2019_web_small.jpg',
                        place: 'Dharan',
                        description:
                            'Dharan is a sub-metropolitan city in the Sunsari District of Province No. 1, Nepal, which was established as a fourth municipality in the Kingdom.',
                        rating: '4.6')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
