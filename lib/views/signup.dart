import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SafeArea(
            child: Scaffold(
              body: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontFamily: "myfont",
                                  color: Colors.grey[800]),
                            ),
                            const SizedBox(
                              height: 21,
                            ),
                            SvgPicture.asset(
                              "assets/icons/signup.svg",
                              height: 222,
                            ),
                            const SizedBox(
                              height: 27,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.purple[100],
                                borderRadius: BorderRadius.circular(66),
                              ),
                              width: 266,
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(
                                decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.person,
                                      color: Colors.purple[800],
                                    ),
                                    hintText: "Your Email :",
                                    border: InputBorder.none),
                              ),
                            ),
                            const SizedBox(
                              height: 23,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.purple[100],
                                borderRadius: BorderRadius.circular(66),
                              ),
                              width: 266,
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    suffix: Icon(
                                      Icons.visibility,
                                      color: Colors.purple[900],
                                    ),
                                    icon: Icon(
                                      Icons.lock,
                                      color: Colors.purple[800],
                                      size: 19,
                                    ),
                                    hintText: "Password :",
                                    border: InputBorder.none),
                              ),
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            ElevatedButton(
                              onPressed: () {},

                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.purple),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(
                                        horizontal: 89, vertical: 10)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(27))),
                              ),
                              child: const Text(
                                "Sign up",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            const SizedBox(
                              height: 33,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Already have an accout? "),
                                GestureDetector(
                                  onTap: (){ Navigator.pushNamed(context, "/login");},
                                  child: const Text(
                                    " Log in",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            SizedBox(
                              width: 299,
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Divider(
                                        thickness: 0.6,
                                        color: Colors.purple[900],
                                      )),
                                  Text(
                                    "OR",
                                    style: TextStyle(
                                      color: Colors.purple[900],
                                    ),
                                  ),
                                  Expanded(
                                      child: Divider(
                                        thickness: 0.6,
                                        color: Colors.purple[900],
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: (){      },
                                    child: Container(
                                      padding: const EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border:
                                          Border.all(color: Colors.purple, width: 1)),
                                      child: SvgPicture.asset(
                                        "assets/icons/facebook.svg",
                                        color: Colors.purple[400],
                                        height: 27,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 22,
                                  ),
                                  GestureDetector(
                                    onTap: (){      },
                                    child: Container(
                                      padding: const EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border:
                                          Border.all(color: Colors.purple, width: 1)),
                                      child: SvgPicture.asset(
                                        "assets/icons/google-plus.svg",
                                        color: Colors.purple[400],
                                        height: 27,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 22,
                                  ),
                                  GestureDetector(
                                    onTap: (){      },
                                    child: Container(
                                      padding: const EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border:
                                          Border.all(color: Colors.purple, width: 1)),
                                      child: SvgPicture.asset(
                                        "assets/icons/twitter.svg",
                                        color: Colors.purple[400],
                                        height: 27,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: Image.asset(
                        "assets/images/main_top.png",
                        width: 111,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/images/login_bottom.png",
                        width: 111,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}