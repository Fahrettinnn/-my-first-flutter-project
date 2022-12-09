
import 'package:flutter/material.dart';

void main(){


  runApp(MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget{
  String mesaj="merhaba tekrardan!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body:  Center(
          child: ElevatedButton(
              child: Text("sonucu gör"),
              onPressed: (){
                int puan = 70 ;
                String mesaj ="";
                if(puan>=50){
                  mesaj = "geçti";
                }else if(puan>=40){
                  mesaj="Bütünlemeye kaldı";
                }else{
                  mesaj = "kaldı";
                }
                var alert=AlertDialog(
                  title:  Text("sınav sonucu"),
                  content:  Text(mesaj),
                );

                showDialog(context: context, builder:(BuildContext context)=>alert);
              }
          )
      ),
    );
  }
  
}