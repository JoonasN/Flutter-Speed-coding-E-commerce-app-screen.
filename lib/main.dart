import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shopping',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

var image = 'https://cdn.trendhunterstatic.com/thumbs/shoe-model.jpeg';
var backpack =
    'https://dfr4rssi07fv7.cloudfront.net/htx/images/category/bags_packs/raccoon_bags_packs.png';
var sunglasses =
    'https://images.sunglasshut.com/resource/blob/3442/39faeda2e9310bd6bd7444d86bce44ec/sgh-rbsummer-ddm-round-data.png';
var shoes =
    'http://cdn.shopify.com/s/files/1/1104/4168/products/Allbirds_M_Wool_Runner_Kotare_GREY_ANGLE_d5ff3b96-7251-4c1e-9ba8-c711434cc10d_600x600.png?v=1542061546';
var watches =
    'https://cdn.shopify.com/s/files/1/0814/0539/products/17_Barrel_Steel_Sapele_Black_01_grande.png?v=1537990093';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.rss_feed),
            title: Text('FEED')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            title: Text('BARANDS')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text('BAG')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('WISHLIST')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('PROFILE')
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 400.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(image, fit: BoxFit.cover, colorBlendMode: BlendMode.darken, color: Colors.black.withOpacity(0.4),),
              title: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('New', style: TextStyle(color: Colors.white, fontSize: 28.0),),
                        Text('Collections', style: TextStyle(color: Colors.white, fontSize: 28.0),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Search'),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                          border:
                              Border(top: BorderSide(), right: BorderSide())),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            child: Image.network(sunglasses),
                          ),
                          Text(
                            'Sunglasses',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                          border:
                              Border(top: BorderSide(), right: BorderSide())),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            child: Image.network(backpack),
                          ),
                          Text(
                            'Backpack',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                          border:
                              Border(top: BorderSide(), right: BorderSide())),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            child: Image.network(shoes),
                          ),
                          Text(
                            'Shoes',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                          border:
                              Border(top: BorderSide(), right: BorderSide())),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            child: Image.network(watches),
                          ),
                          Text(
                            'Watches',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
