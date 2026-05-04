import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_examen/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Home",style: TextStyle(fontSize: 30),)
                  ],
                ),
              ),
              Image.network("https//:imagenProyecto"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  Icon(Icons.verified_user,size: 60,),
                  Container(
                    color: Colors.grey,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(15),
                    child: Column(
                      
                      children: [
                        Text("Texto 1"),
                        Text("Texto 2")
                      ],
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: (){
                  context.push(Routes.list);
                }, 
                child: Text("Listado de tareas"))// contenido
            ],
          ),
        ),
      ),
    );
  }
}