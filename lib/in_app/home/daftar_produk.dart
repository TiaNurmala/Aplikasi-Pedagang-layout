import 'package:flutter/material.dart';
import 'package:pedagang/in_app/detail.dart';

class DaftarProduk extends StatefulWidget {
  @override
  _DaftarProdukState createState() => _DaftarProdukState();
}

class _DaftarProdukState extends State<DaftarProduk> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 4,
          title: Text("Daftar Produk",
              style: TextStyle(
                  fontFamily: "Poppins SemiBold",
                  fontSize: 16,
                  color: Colors.black)),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
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
            ListDagang(
              img: 'assets/images/makeup.jpg',
              nama: "Lipstik Bunda Viral",
              harga: '65000',
              desc: "Lorem ipsum dolor sit amet, con...",
            ),
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
          ],
        ),
      ),
    );
  }
}

class ListDagang extends StatelessWidget {
  ListDagang({this.img, this.nama, this.harga, this.desc});
  final String img;
  final String nama;
  final String harga;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Details()));
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 110,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          color: Colors.white,
          elevation: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: double.infinity,
                width: MediaQuery.of(context).size.width / 3.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      nama,
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Poppins Bold",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      harga + " Poin",
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: "Poppins Regular",
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      desc,
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: "Poppins Regular",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
