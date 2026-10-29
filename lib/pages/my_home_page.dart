import 'package:flutter/material.dart';
import 'package:ui/components/brand.dart';
import 'package:ui/components/product_box.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(204, 243, 237, 237),
      drawer: Container(
        color: Colors.black,
        child: Drawer(
          backgroundColor: Colors.white,
          // DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          child: Column(
            children: [
              ListTile(
                title: const Text("Products"),
                leading: const Icon(Icons.production_quantity_limits),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: const Text("Favorites"),
                leading: const Icon(Icons.favorite),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
        title: Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.deepPurple,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Choose Brand",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Brand(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDC0cIn8HxGmiphrvmhOMpG4PsbNIXdL-n-59Mcb_MWy-lxmcjYBhTx8KXIPshLBL5L1k&usqp=CAU",
                  ),
                  Brand(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAM4ixyuCQbtLXDCo8eRnr7R9wLO-_m3ttsiQvxt2BF3dm1uwn3jWNnxijIvbCC3TYF0w&usqp=CAU",
                  ),
                  Brand(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIpQQ5O6RMYovlSjdAkEtrbovW8usQY307XLinNQVIYK8Y1gRX8aHlsUwD0_NskiQQZis&usqp=CAU",
                  ),
                  Brand(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe52P21QN7qbb_o7EBSvwgd-qhJoj0S8HtpoYxikUFlR1ZxnA7Q2FgYEnJ36_tv6_YxbM&usqp=CAU",
                  ),
                  Brand(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKp7MB1ePsJ5IY3smDBQ1UnQ5G4qbeWYwQvwxD-jdeda_aMop-lvXTjLuJwlV3nRzgIFU&usqp=CAU",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Best Products",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductBox(
                    name: "product 1",
                    evalute: 1,
                    price: 100,
                    image:
                        "data:image/jpeg;base64,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",
                    isFavorite: true,
                  ),
                  ProductBox(
                    name: "product 2",
                    evalute: 2,
                    price: 100,
                    image:
                        "data:image/jpeg;base64,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",
                    isFavorite: false,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductBox(
                    name: "product 3",
                    evalute: 3,
                    price: 100,
                    image:
                        "data:image/jpeg;base64,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",
                    isFavorite: false,
                  ),
                  ProductBox(
                    name: "product 4",
                    evalute: 1,
                    price: 100,
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpiDjiiQEIdRBSnN_NSvT6DITQJoJ91K28kzurIr2CmykbvJweCQDV74HDkBtX-rFoDfE&usqp=CAU",
                    isFavorite: true,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              // Container(
              //   height: 50,
              //   color: Colors.white,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Icon(Icons.home),
              //       Icon(Icons.favorite),
              //       Icon(Icons.shop),
              //       Icon(Icons.list),
              //       Icon(Icons.person),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'favorite',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'shop',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'list',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'person',
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.black,
        onTap: (int) {},
      ),
    );
  }
}
