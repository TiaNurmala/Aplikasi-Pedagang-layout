import 'package:flutter/material.dart';
import 'package:pedagang/in_app/profile/profil.dart';

void main() => runApp(EditProfile());

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black, fontFamily: "Poppins Medium"),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 0, bottom: 10, left: 15, right: 15),
          child: Form(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      'assets/images/profile.jpg',
                    ),
                  ),
                ),
                FlatButton(
                  child: Text(
                    'Change Profile Image',
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 16,
                        letterSpacing: 1,
                        fontFamily: "Poppins Regular"),
                  ),
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                    top: 10,
                  ),
                  child: TextFormField(
                    style:
                        TextStyle(fontSize: 15, fontFamily: "Poppins Regular"),
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      labelStyle: TextStyle(
                          color: Colors.black, fontFamily: "Poppins Regular"
                          // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                    top: 15,
                  ),
                  child: TextFormField(
                    style:
                        TextStyle(fontSize: 15, fontFamily: "Poppins Regular"),
                    decoration: InputDecoration(
                      labelText: 'Lokasi',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      labelStyle: TextStyle(
                          color: Colors.black, fontFamily: "Poppins Regular"
                          // fontWeight: ? FontWeight.bold : FontWeight.normal,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                    top: 15,
                  ),
                  child: TextFormField(
                    style:
                        TextStyle(fontSize: 15, fontFamily: "Poppins Regular"),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      labelStyle: TextStyle(
                          color: Colors.black, fontFamily: "Poppins Regular"
                          // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 15.0, top: 35, left: 15, right: 15),
                  child: Center(
                    // widthFactor: 400.0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text("Simpan",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontFamily: "Poppins Medium")),
                        color: new Color(0xFFe3724b),
                        splashColor: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
