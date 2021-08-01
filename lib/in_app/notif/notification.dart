import 'package:flutter/material.dart';
import 'package:pedagang/in_app/notif/notif_click.dart';

class Notif extends StatefulWidget {
  @override
  _NotifState createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 4,
          title: Text("Notifikasi",
              style: TextStyle(
                  fontFamily: "Poppins SemiBold",
                  fontSize: 16,
                  color: Colors.black)),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          children: <Widget>[
            NotifList(
              nama_pembeli: "Taye",
              jumlah: '2',
              alamat:
                  "Jalan Swadaya 2 no.36, rt 002/ rw 011, Cijantung, Pasar Rebo, Jakarta Timur",
            ),
            NotifList(
              nama_pembeli: "Nurmala",
              jumlah: '4',
              alamat:
                  "Jalan Kalisari no.50, rt 002/ rw 011, Kalisari, Pasar Rebo, Jakarta Timur",
            ),
            NotifList(
              nama_pembeli: "Taehyung",
              jumlah: '1',
              alamat:
                  "Jalan Pesona no.275, rt 006/ rw 07, Kalisari, Pasar Rebo, Jakarta Timur",
            ),
            NotifList(
              nama_pembeli: "Jungkook",
              jumlah: '2',
              alamat:
                  "Jalan Tebet Raya no.50, rt 002/ rw 002, Tebet, Jakarta Selatan",
            ),
          ],
        ),
      ),
    );
  }
}

class NotifList extends StatelessWidget {
  NotifList({this.nama_pembeli, this.jumlah, this.alamat});
  final String nama_pembeli;
  final String jumlah;
  final String alamat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DaftarPesanan()));
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 130,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            color: Colors.white,
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
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
                          "Pembeli : " + nama_pembeli,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Poppins Medium",
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Banyak Pesanan : " + jumlah,
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: "Poppins Regular",
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Alamat : " + alamat,
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
      ),
    );
  }
}
