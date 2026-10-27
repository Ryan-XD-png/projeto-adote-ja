import 'package:flutter/material.dart';
import 'package:projeto/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 249, 194, 46),
      body: Stack(
        
        children: [
          SizedBox.expand(
            child: Stack(
              
              children: [
               //ColorFiltered(colorFilter: ColorFilter.mode(Color.fromARGB(255, 104, 234, 249), BlendMode.darken),
              //  child: Image.asset('assets/img/mamadeiras.png'),),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 500),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(12),
                      child: Image.asset('assets/img/logo.png', width: 200,height: 200,fit: BoxFit.fitWidth,),
                    ),
                  ),
                )
              ],
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(100)),
                color: Color.fromARGB(255, 224, 26, 79)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Center(
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: TextField(
                    
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          
                        ),
                      ),
                    ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Center(
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: TextField(
                    
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          
                        ),
                      ),
                    ),),
                    SizedBox(
                      height: 50,
                    ),

                    TextButton(onPressed:(){
                       Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> Home()));}, child: Container(
                          width: 70,
                          height: 30,
                          color: Color.fromARGB(255, 104, 234, 249),
                          child: Text(
                            'Entrar',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ))
                ],
              )
                
                
              
              
            ),
          )
        ],
      ),
    );
  }
}