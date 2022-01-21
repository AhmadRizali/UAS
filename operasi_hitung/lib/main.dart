// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      home: new Home(),
      title: 'PEMROGRAMAN MOBILE',
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new Home(),
        '/HitungPersegi': (BuildContext context) => new HitungPersegi(),
        '/HitungLingkaran': (BuildContext context) => new HitungLingkaran(),
        '/ProfileDeveloper': (BuildContext context) => new ProfileDeveloper(),
      }));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('PEMROGRAMAN MOBILE'),
      ),
      body: new Center(
        child: Column(
          children: [
            // ignore: deprecated_member_use
            RaisedButton(
              child: ListTile(
                title: Text('HITUNG LUAS PERSEGI'),
                subtitle: Text('Pilih Untuk Mulai Menghitung Luas Persegi'),
              ),
              padding: EdgeInsets.symmetric(vertical: 4.0),
              onPressed: () {
                Navigator.pushNamed(context, '/HitungPersegi');
              },
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: ListTile(
                title: Text('HITUNG LUAS LINGKARAN'),
                subtitle: Text('Pilih Untuk Mulai Menghitung Luas Lingkaran'),
              ),
              padding: EdgeInsets.symmetric(vertical: 4.0),
              onPressed: () {
                Navigator.pushNamed(context, '/HitungLingkaran');
              },
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: ListTile(
                title: Text('PROFILE DEVELOPER'),
                subtitle: Text('Pilih Untuk Melihat Developer'),
              ),
              padding: EdgeInsets.symmetric(vertical: 4.0),
              onPressed: () {
                Navigator.pushNamed(context, '/ProfileDeveloper');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HitungPersegi extends StatelessWidget {
  const HitungPersegi({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('HITUNG LUAS PERSEGI'),
      ),
      body: new Center(
        // ignore: deprecated_member_use
        child: new RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/Home');
          },
          child: Text('Kembali'),
        ),
      ),
    );
  }
}

class HitungLingkaran extends StatelessWidget {
  const HitungLingkaran({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('HITUNG LUAS LINGKARAN'),
      ),
      body: new Center(
        // ignore: deprecated_member_use
        child: new RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/Home');
          },
          child: Text('Kembali'),
        ),
      ),
    );
  }
}

class ProfileDeveloper extends StatelessWidget {
  const ProfileDeveloper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('PROFILE DEVELOPER'),
      ),
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/img/ahmadrizali.jpg'),
            ),
            Text(
              'Ahmad Rizali',
              style: TextStyle(
                  fontFamily: 'SourceSansPro-Italic',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '19710064',
              style: TextStyle(
                  fontFamily: 'SourceSansPro-Italic',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+62 821 5734 2818',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'SourceSansPro-Black',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.teal.shade100,
                ),
                title: Text(
                  '19710064ahmadrizali@gmail.com',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'SourceSansPro-Black',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
            Navigator.pushNamed(context, '/Home');
          },
          child: Text('Kembali'),
        ),
          ],
        ),
      ),
    );
  }
}
