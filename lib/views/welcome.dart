import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  child:Image.asset('assets/images/main_top.png',width: 100,),
                ),
                Positioned(
                  bottom: 0,
                  child:Image.asset('assets/images/main_bottom.png',width: 100),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(height: 30,),
                      const Text("Welcome",style: TextStyle(fontSize: 30),),
                      const SizedBox(height: 30,),
                      const SizedBox (height:30),
                      SvgPicture.asset('assets/icons/chat.svg',),
                      const SizedBox (height:30),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context,'/login');
                          },
                          style: ButtonStyle(

                          backgroundColor: MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 77,vertical: 12)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),

                        ),
                          child: Text(
                              "LogIn",
                            style:TextStyle(color: Colors.grey[300],fontSize: 20) ,
                          ),
                      ),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context,'/signup');
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 77,vertical: 13)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),

                        ),
                        child: const Text(
                          "SignUp",
                          style:TextStyle(color: Colors.black,fontSize: 20) ,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
