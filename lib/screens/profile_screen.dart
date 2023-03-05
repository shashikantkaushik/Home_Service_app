import 'package:flutter/material.dart';
import 'package:homzy1/auth.dart';
import 'package:homzy1/screens/WelcomeScreen.dart';
import 'package:homzy1/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:homzy1/widget/button.dart';
import 'package:homzy1/const.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';
/*
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override

  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    final name=(ap.userModel.name);
    final email=(ap.userModel.email);
    final bio=(ap.userModel.bio);
    final phone=(ap.userModel.phoneNumber);
    final pic=(ap.userModel.profilePic);
    final uid=(ap.userModel.uid);
    final date=(ap.userModel.createdAt);
    return SafeArea(
      child: Scaffold(
        body:Column(
mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              margin:EdgeInsets.all(50) ,
                child:
            CircleAvatar( backgroundImage: NetworkImage('$pic'),
              radius: 70,
            )
            ),

            Container(
              // padding: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              child: Text('Name:   $name',

                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              width: double.infinity,
              child: Text('Email:   $email',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              width: double.infinity,
              child: Text('Phone Number:   $phone',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              width: double.infinity,
              child: Text('Bio:   $bio',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
ElevatedButton(onPressed: (){
  ap.userSignOut().then(
        (value) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const WelcomeScreen(),
      ),
    ),
  );
},
        child:
Text("Log Out")),
            ElevatedButton(onPressed: (){
              ap.userSignOut().then(
                    (value) => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ),
                ),
              );
            },
                child:
                Text("Help"))
          ],
        ),
      ),
    );
  }
}

*/




class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override

  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    final name=(ap.userModel.name);
    final email=(ap.userModel.email);
    final bio=(ap.userModel.bio);
    final phone=(ap.userModel.phoneNumber);
    final pic=(ap.userModel.profilePic);
    final uid=(ap.userModel.uid);
    final date=(ap.userModel.createdAt);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
appBar: AppBar(
elevation: 0,
  shadowColor: Colors.white,




  centerTitle: false,
backgroundColor: Colors.transparent,

  leading:
    ElevatedButton(
      onPressed: (){

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
      style: ButtonStyle(

        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        shadowColor:MaterialStateProperty.all<Color>(Colors.transparent),

      ),
      child:Icon(Icons.arrow_back_ios),

    )


)
,
            body:SafeArea(
                child:Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children :<Widget>[

                      Container(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: CircleAvatar(
                          radius:80,
                          backgroundImage:NetworkImage('$pic'),
                        ),
                      ),
                      Text('$name',
                          style:TextStyle(
                            fontWeight:FontWeight.bold,
                            fontSize: 40.0,
                            fontFamily:'Pacifico',
                          )
                      ),

                      SizedBox(height:20,
                        width:150,
                        child: Divider(
                          color:Colors.grey,
                          thickness:2.0,

                        ),
                      ),


                      Card(
                        shadowColor: Colors.white, shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(width: 0,style: BorderStyle.solid)
                          ),
                          margin:EdgeInsets.symmetric(vertical:10,
                              horizontal:25),
                          color:Colors.white,
                          child:
                          ListTile(
                            leading:
                            Icon(Icons.phone,
                                color:Color(0xFFC5C6d0)),
                            title: Text('$phone',
                                style:TextStyle(

                                  fontFamily:'SourceSansPro-Regular',
                                  fontSize: 13,
                                  fontWeight:FontWeight.bold,
                                )),
                        )
                      ),

                      Card(shadowColor: Colors.white, shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                          side: BorderSide(width: 0,style: BorderStyle.solid)
                      ),
                          margin:EdgeInsets.symmetric(vertical:10,
                          horizontal:25),
                          child: ListTile(
                              leading: Icon(Icons.email,
                                  color:Color(0xFFC5C6d0)),
                              title:Text('$email',
                                  style:TextStyle(

                                    fontFamily:'SourceSansPro-Regular',
                                    fontSize: 13,
                                    fontWeight:FontWeight.bold,
                                  ))
                          )
                      ),

                      Card(elevation: 10,
                        margin:EdgeInsets.symmetric(vertical:10,
                            horizontal:25),
                        color:Colors.white,
                          child: ListTile(
                              leading: Icon(Icons.help,
                                  color:Colors.black),
                              title:GestureDetector(
                                onTap: (){    dynamic conversationObject = {
                          'appId': '$kchatbot',// The [APP_ID](https://dashboard.kommunicate.io/settings/install) obtained from kommunicate dashboard.
                          };

                          KommunicateFlutterPlugin.buildConversation(conversationObject)
                              .then((clientConversationId) {

                          print("Conversation builder success : " + clientConversationId.toString());
                          }).catchError((error) {
                          print("Conversation builder error : " + error.toString());
                          });
                          },
                                child: Text('Help',
                                    style:TextStyle(
                                      color:Colors.black,

                                      fontFamily:'SourceSansPro-Regular',
                                      fontSize: 13,
                                      fontWeight:FontWeight.bold,
                                    )),
                              )
                          )
                      ),
                     SizedBox(
                       height: 50,
                     ),
                     SizedBox(
                       height: 50,
                       width: 200,
                       child: CustomButton(
                         text:'Log Out',
                         onPressed:(){
                           ap.userSignOut().then(
                                 (value) => Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => const WelcomeScreen(),
                               ),
                             ),
                           );
                         },
                       ),
                     ),
                      SizedBox(
                        height: 60,
                      ),
                    ]
                )
            )
        )
    );
  }
}


/* Card(
                        margin:EdgeInsets.symmetric(vertical:10,
                            horizontal:25),
                        color:Colors.white,
                        child:
                        ElevatedButton(onPressed: (){
                          ap.userSignOut().then(
                                (value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WelcomeScreen(),
                              ),
                            ),
                          );
                        },
                            child:
                            Text("Help")
                        ),
                      ),

 */