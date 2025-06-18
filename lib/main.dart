import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providermodel_firebase/main_model.dart' show MainModel;
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("App"),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(
                        model.Tetsupe1Text,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    ElevatedButton(
                      child: Text("ボタン"),
                      onPressed: (){
                        model.ChangeTetsupe1Text();
                        //ここでボタン押したらどうなるか書く場所
                      },
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
