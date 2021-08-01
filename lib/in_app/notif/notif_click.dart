import 'package:flutter/material.dart';

class DaftarPesanan extends StatefulWidget {
  @override
  _DaftarPesananState createState() => _DaftarPesananState();
}

class _DaftarPesananState extends State<DaftarPesanan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 4,
          title: Text("Pesanan",
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
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              title: Text(
                "Pembeli : Taye",
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: "Poppins Medium",
                ),
              ),
              subtitle: Text(
                "Alamat : Jalan Swadaya 2 no.36, rt 002/ rw 011, Cijantung, Pasar Rebo, Jakarta Timur",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Poppins Regular",
                ),
              ),
            ),
            PesananList(
                img: 'assets/images/celana-jogger.jpg',
                nama: "Celana Jogger",
                warna: "Hitam",
                ukuran: "xl",
                jumlah: '1'),
            PesananList(
                img: 'assets/images/sepatu.jpg',
                nama: "Sepatu Oucgi",
                warna: "Putih",
                ukuran: "40",
                jumlah: '1'),
          ],
        ),
      ),
    );
  }
}

class PesananList extends StatelessWidget {
  PesananList({this.img, this.nama, this.warna, this.jumlah, this.ukuran});

  final String img;
  final String nama;
  final String warna;
  final String ukuran;
  final String jumlah;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {},
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
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          nama,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Poppins SemiBold",
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Warna : " + warna,
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: "Poppins Regular",
                          ),
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Text(
                          "Ukuran : " + ukuran,
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: "Poppins Regular",
                          ),
                        ),
                        // SizedBox(
                        //   height: 8,
                        // ),
                        Text(
                          "Jumlah : " + jumlah,
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
        ),
      ],
    );
  }
}
