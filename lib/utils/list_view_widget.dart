import 'package:flutter/material.dart';
import 'package:mini_newspaper_project/services/news.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    Key? key,
    required this.newsData,
  }) : super(key: key);

  final List<News> newsData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsData.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/view', arguments: {
                  'title': newsData[index].title,
                  'url': newsData[index].urlPage,
                  'body': newsData[index].body
                });
              },
              title: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        constraints:
                            BoxConstraints.expand(width: 400, height: 200),
                        child: Image.asset(
                          'assets/${newsData[index].url}',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          newsData[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                        color: Colors.green,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, '/view', arguments: {
                            'title': newsData[index].title,
                            'url': newsData[index].urlPage,
                            'body': newsData[index].body
                          });
                        },
                        child: Text('VIEW'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
