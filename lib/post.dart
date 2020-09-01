import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final urlImage;
  final urlProfile =
      'https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png';

  Post(this.urlImage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Posts',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        urlProfile,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Fatih Seida',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
            Container(
              child: Hero(
                  tag: urlImage,
                  child: Image.network(
                    urlImage,
                    fit: BoxFit.cover,
                  )),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'View Insights',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Promote'),
                    color: Colors.blue,
                    textColor: Colors.white,
                  )
                ],
              ),
            ),
            Divider(),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8),
                  child: Icon(Icons.favorite_border),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Icon(Icons.comment),
                ),
                Icon(Icons.send),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Icon(Icons.filter_frames),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                "Desember, 24, 2018",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
