import 'package:flutter/material.dart';
import 'package:pedagang/in_app/home/daftar_produk.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _current = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Material(
          child: ListView(
            primary: true,
            children: <Widget>[
              Container(
                // height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 15),
                  child: Column(
                    // padding: EdgeInsets.only(top: 40),
                    // primary: true,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: CircleAvatar(
                                  maxRadius: 25,
                                  backgroundImage:
                                      AssetImage('assets/images/profile.jpg'),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Toko Tia",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontFamily: "Poppins Medium",
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 8,
                                  // ),
                                  Text(
                                    "10000 Poin",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontFamily: "Poppins Regular",
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DaftarProduk()));
                        },
                        title: Text("Daftar Produk",
                            style: TextStyle(
                                fontFamily: "Poppins SemiBold", fontSize: 16)),
                        trailing: Icon(Icons.arrow_forward_ios,
                            color: Colors.black, size: 15),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: <Widget>[
                            ListDagang(
                              img: 'assets/images/kemeja-tie-die.jpg',
                              nama: "Kemeja Tie Die",
                              harga: '25000',
                              desc: "Lorem ipsum dolor sit amet, con...",
                            ),
                            ListDagang(
                              img: 'assets/images/celana-pendek.jpg',
                              nama: "Celana Pendek Pria",
                              harga: '20000',
                              desc: "Lorem ipsum dolor sit amet, con...",
                            ),
                            ListDagang(
                              img: 'assets/images/sepatu.jpg',
                              nama: "Sepatu Sneakers",
                              harga: '50000',
                              desc: "Lorem ipsum dolor sit amet, con...",
                            ),
                            ListDagang(
                              img: 'assets/images/kemeja-polos.jpg',
                              nama: "Kemeja Polos",
                              harga: '15000',
                              desc: "Lorem ipsum dolor sit amet, con...",
                            ),
                            ListDagang(
                              img: 'assets/images/kacamata.jpg',
                              nama: "Kacamata Kekinian",
                              harga: '17000',
                              desc: "Lorem ipsum dolor sit amet, con...",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
