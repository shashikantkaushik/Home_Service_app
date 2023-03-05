import 'package:flutter/material.dart';
import 'package:homzy1/auth.dart';
import 'package:homzy1/screens/WelcomeScreen.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:homzy1/screens/profile_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    final t=(ap.userModel.name);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF189AB4),
        centerTitle: false,

        title:Text("Hello, $t",),
        actions: [
          GestureDetector(
            onTap: (){
              print("dlo");
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profile(),
                ),
              );
            },
 child: CircleAvatar(

              backgroundImage: NetworkImage(ap.userModel.profilePic),
             backgroundColor: Color(0xFF189AB4),
              radius: 50,
            ),
          )

        ],
      ),body:  SafeArea(
      child: Container(
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height:  200,
                width: double.infinity,
                child:  Carousel(
                  dotColor: Colors.lightBlue,
                  dotBgColor: Colors.transparent,
                  dotSize: 9.0,
                  dotSpacing: 20.0,
                  dotPosition: DotPosition.bottomCenter,
                  images: [
                    InkWell(
                      onTap: () {
                        print("Click on the first image ");},
                      child: Image.asset('assets/IMG_20230304_174306.jpg' , fit: BoxFit.cover),
                    ),
                    InkWell(
                      onTap: (){
                        print("Click on the second image");
                      },
                      child: Image.asset('assets/IMG_20230304_174324.jpg' , fit: BoxFit.cover),
                    ),
                    InkWell(
                      onTap: (){
                        print("Click on the third image");
                      },
                      child: Image.asset('assets/WhatsApp Image 2023-03-04 at 5.00.11 PM.jpeg' , fit: BoxFit.cover),
                    ),
                    InkWell(
                      onTap: (){
                        print("Click on the fourth image");
                      },
                      child: Image.asset('assets/IMG_20230304_174306.jpg' , fit: BoxFit.cover),
                    ),
                    InkWell(
                      onTap: (){
                        print("Click on the fiveth image");
                      },
                      child: Image.asset('assets/WhatsApp Image 2023-03-04 at 5.00.11 PM.jpeg' , fit: BoxFit.cover),
                    ),

                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),


              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.only(left: 8),
                      child: Column(
                        children: [
                          AspectRatio(
                              aspectRatio: 1.0,
                              child: Image.asset('assets/small_service/2.jpeg')),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text('Pet Grooming'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Card
                      (
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.only(left: 8),
                      child: Column(
                        children: [
                          AspectRatio(
                              aspectRatio: 1.0,
                              child: Image.asset('assets/small_service/3.jpeg')),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text('Medicines'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.only(left: 8, right: 8),
                      child: Column(
                        children: [
                          AspectRatio(
                              aspectRatio: 1.0,
                              child: Image.asset('assets/small_service/4.jpeg')),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text('Pet Sitter'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          AspectRatio(
                              aspectRatio: 1.0,
                              child: Image.asset('assets/small_service/1.jpeg')),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text('Aquatic Cleaner'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Card
                      (
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Text(''),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Card(
                      margin: EdgeInsets.only(left: 20 ,right: 20),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Text(''),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                child: Text(
                  '  All Services ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),



              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      color: Colors.blueGrey[100],
                      child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image.asset('assets/service/1.jpeg')),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image.asset('assets/service/2.jpeg')),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}