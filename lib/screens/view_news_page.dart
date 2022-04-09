import 'package:flutter/material.dart';
import 'package:mini_newspaper_project/services/news.dart';

class ViewPage extends StatefulWidget {
  ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    //print('This is the file $data');
    return Scaffold(
      appBar: AppBar(
        title: Text(data['title']),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints.expand(
                height: 200,
              ),
              child: Image.asset(
                'assets/${data['url']}',
                fit: BoxFit.cover,
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  data['title'],
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  data['body'],
                  style: TextStyle(
                    fontFamily: 'IndieFlower',
                    fontSize: 15,
                  ),
                ),
              ),
            )
            //Image.asset();
          ],
        ),
      ),
    );
  }
}
