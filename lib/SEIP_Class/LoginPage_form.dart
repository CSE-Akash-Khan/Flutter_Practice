import 'package:flutter/material.dart';

import 'first_ui.dart';
class LoginPageSecond extends StatefulWidget {
  const LoginPageSecond({Key? key}) : super(key: key);

  @override
  State<LoginPageSecond> createState() => _LoginPageSecondState();
}

class _LoginPageSecondState extends State<LoginPageSecond> {
  bool boolValue = false;
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        height: double.maxFinite,
        width: double.maxFinite,
        color: Color5,
        child: Column(
          children: [
            Container(

              height: size.height*0.32,
              width: double.maxFinite,
              // color: Colors.orange,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: size.height*0.25,
                      decoration: BoxDecoration(
                          color: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage("https://www.protocol.com/media-library/netflix-queried-people-in-a-survey-about-a-wide-range-of-features-and-content-including-podcasts-user-generated-playlists-how.jpg?id=24541797&width=1200&height=600&coordinates=0%2C501%2C0%2C502"),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 100,
                      left: 20,
                      child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 4,
                            ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                'images/akash2.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ))),
                  Positioned(top: 150,left:110,child: RichText(text: TextSpan(
                      children: [
                        TextSpan(text: "Welcome Back",style: TextStyle(color: Colors.black)),
                        TextSpan(text: " Akash",style: TextStyle())
                      ]
                  ),),),
                ],
              ),
            ),
            SizedBox(height: 11,),
            Container(
              height: size.height * 0.40,
              width: size.width * 0.85,
              // color: Colors.orange,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email",style: TextStyle(color: Color(0xff2F3D4C),fontWeight: FontWeight.w600),),
                    SizedBox(height: 5,),
                    Container(
                      height: 35,
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty){
                            return "Please Enter Email";
                          }
                          if(!value.contains("@")){
                            return "Invalid Email";
                          }
                        },
                        controller: emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email,size: 20,color: Color(0xff1F2832),),
                          // labelText: "Email",
                          hintText: "Enter Your Email",
                          hintStyle: TextStyle(color: Color(0xff1F2832),fontFamily: "Times New Roman",fontWeight: FontWeight.normal,fontSize: 14),
                          filled: true,
                          fillColor: Color3,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: BorderSide(color: Colors.white,)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.white,)
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 18,),
                    Text("Password",style: TextStyle(color: Color(0xff2F3D4C),fontWeight: FontWeight.w600),),
                    SizedBox(height: 5,),
                    Container(
                      height: 35,
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty){
                            return "Please Enter Password";
                          }
                          if(value.length<3){
                            return "Use Strong Password";
                          }
                          if(!value.contains("#") && !value.contains("\$")){
                            return "Use special Character";
                          }
                        },
                        controller: passwordController,
                        obscureText: boolValue,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock,size: 20,color: Color(0xff1F2832),),
                            suffixIcon: IconButton(icon: Icon(boolValue?Icons.visibility_off:Icons.visibility,size: 18,color: Color(0xff1F2832),),
                              onPressed: () {
                                setState(() {
                                  boolValue = !boolValue;
                                });
                              },),
                            hintText: "Enter Your Password",
                            hintStyle: TextStyle(color: Color(0xff1F2832),fontFamily: "Times New Roman",fontWeight: FontWeight.normal,fontSize: 14),
                            filled: true,
                            fillColor: Color3,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2),
                                borderSide: BorderSide(color: Colors.white,)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.white,)
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Transform.scale(
                              scale:0.60,
                              child: Checkbox(
                                checkColor: Colors.white,
                                activeColor: Color(0xffD90327),
                                value: isChecked,
                                onChanged: (bool? value) {
                                  isChecked = value!;
                                },
                              ),
                            ),
                            Text("Remember me",style: TextStyle(color: Color(0xff1F2832))),
                          ],
                        ),
                        TextButton(onPressed: () {

                        }, child: Text("Forgot Password?",style: TextStyle(color: Color(0xff1F2832),fontWeight: FontWeight.normal,decoration: TextDecoration.underline),))
                      ],
                    ),
                    Spacer(),
                    MaterialButton(
                      minWidth: double.maxFinite,
                      height: 40,
                      color: Color2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                      onPressed: () {
                      if(_formKey.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return FirstUI();
                        },));
                      }
                    },
                    child: Text("Login"),),

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: size.width * 0.85,
              child: Column(
                children: [
                  Text("Im not Akash",style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xff1F2832),),),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: () {

                      }, child: Text("Login as new user",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.normal),),
                      style: ElevatedButton.styleFrom(backgroundColor: Color1),),
                      SizedBox(
                        width: size.width*0.35,
                        child: OutlinedButton(
                          onPressed: () {

                        },
                          child: Text("Sign Up",
                            style: TextStyle(color: Color2,fontSize: 14,fontWeight: FontWeight.normal),),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Color2)
                          ),
                        ),
                      )

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

const Color1 = Color(0xFF2F3D4C);
const Color2 = Color(0xFFD90327);
const Color3 = Color(0xFFFFFFFF);
const Color4 = Color(0xFF1F2832);
const Color5 = Color(0xFFC6D1DC);
const Color6 = Color(0xFF8EA2B9);