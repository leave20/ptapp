import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptappmobile/controller/favorite_controller.dart';
import 'package:ptappmobile/model/favorite.dart';
import 'package:flutter/services.dart' as rootBundle;


class FavoritePage extends GetView<FavoriteController> {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola'),
      ),
      body: FutureBuilder(
          future: readJsonDatabase(),
          builder: (context, snapshot) {
            if (snapshot.hasError)
              return Center(
                child: Text('${snapshot.error}'),
              );
            else if (snapshot.hasData) {
              var items = snapshot.data as List<Favorite>;
              return ListView.builder(
                itemCount: items ==null ? 0 : items.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 8,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              child: Image(
                                image: NetworkImage(items[index].imageUrl),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: Text(
                                      items[index].name,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              ),
                            ), flex: 6,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
            else
              return Center(child: CircularProgressIndicator(),);
          }),
    );
  }

  Future<List<Favorite>> readJsonDatabase() async {
    final rawData = await rootBundle.rootBundle.loadString(
        'assets/data/favorite.json');
    final list = json.decode(rawData) as List<dynamic>;
    return list.map((m) => Favorite.fromJson(m)).toList();
  }

}
