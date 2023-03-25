import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(Icons.share),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
      body: Container(
        color: Colors.white10,
        //If not set actual size it will be a small line at left side and will be like 1:5 of real size
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/sajad-nori-s1puI2BWQzQ-unsplash.jpg'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                textScaleFactor: 2,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                ), 'Nickname'
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                textScaleFactor: 1,
                style: TextStyle(
                    color: Colors.white30,
                    fontWeight: FontWeight.bold,
                ), '@idname'
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                    textScaleFactor: 1,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ), 'followers 0'
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 3
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                    textScaleFactor: 1,
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.bold
                    ), 'following 0'
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                    textScaleFactor: 1.1,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold,
                    ), 'Created'
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                    textScaleFactor: 1.1,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.underline
                    ), 'Saved'
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 7,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 40,
                        color: Colors.white10,
                        child: Row(
                          children: const [
                            SizedBox(width: 10,),
                            Icon(Icons.search, color: Colors.white30),
                            SizedBox(width: 10,),
                            Text(
                                textScaleFactor: 1.1,
                                style: TextStyle(
                                  color: Colors.white30, fontWeight: FontWeight.normal, fontStyle: FontStyle.italic
                                ), 'Search for pins'
                            ),
                          ],
                        ),
                      ),
                    )
                ),
                const Expanded(
                  flex: 1,
                    child: Icon(
                        FontAwesomeIcons.sliders,
                      color: Colors.white,
                    )
                ),
                const Expanded(
                    flex: 1,
                    child: Icon(
                        Icons.add,
                      color: Colors.white,
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 10),
                        Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                          "assets/images/humberto-arellano-N_G2Sqdy9QY-unsplash.jpg"),
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: const [
                                        SizedBox(width: 5,),
                                        Text(
                                            textScaleFactor: 1.2,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight:
                                                FontWeight.bold),
                                            'All pins'),

                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 5,),
                                        Text(
                                            textScaleFactor: 0.9,
                                            style: TextStyle(
                                                color: Colors.white,),
                                            '10 pins'
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                            textScaleFactor: 0.9,
                                            style: TextStyle(
                                              color: Colors.white38,),
                                            '3 month.'
                                        ),

                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                          "assets/images/catsExmpl.png"),
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: const [
                                        SizedBox(width: 5,),
                                        Text(
                                            textScaleFactor: 1.2,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight:
                                                FontWeight.bold),
                                            'Cats'),

                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 5,),
                                        Text(
                                            textScaleFactor: 0.9,
                                            style: TextStyle(
                                              color: Colors.white,),
                                            '11 pins'
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                            textScaleFactor: 0.9,
                                            style: TextStyle(
                                              color: Colors.white38,),
                                            '2 month.'
                                        ),

                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                          "assets/images/dogExmpl.png"),
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: const [
                                        SizedBox(width: 5,),
                                        Text(
                                            textScaleFactor: 1.2,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight:
                                                FontWeight.bold),
                                            'Dogs'),

                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 5,),
                                        Text(
                                            textScaleFactor: 0.9,
                                            style: TextStyle(
                                              color: Colors.white,),
                                            '8 pins'
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                            textScaleFactor: 0.9,
                                            style: TextStyle(
                                              color: Colors.white38,),
                                            '4 month.'
                                        ),

                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                          "assets/images/backgroundExmpl.png"),
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: const [
                                        SizedBox(width: 5,),
                                        Text(
                                            textScaleFactor: 1.2,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight:
                                                FontWeight.bold),
                                            'Background'),

                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 5,),
                                        Text(
                                            textScaleFactor: 0.9,
                                            style: TextStyle(
                                              color: Colors.white,),
                                            '15 pins'
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                            textScaleFactor: 0.9,
                                            style: TextStyle(
                                              color: Colors.white38,),
                                            '1 month.'
                                        ),

                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                          "assets/images/aesteticExmpl.png"),
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: const [
                                        SizedBox(width: 5,),
                                        Text(
                                            textScaleFactor: 1.2,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight:
                                                FontWeight.bold),
                                            'Aesthetic'),

                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 5,),
                                        Text(
                                            textScaleFactor: 0.9,
                                            style: TextStyle(
                                              color: Colors.white,),
                                            '22 pins'
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                            textScaleFactor: 0.9,
                                            style: TextStyle(
                                              color: Colors.white38,),
                                            '2 weeks'
                                        ),

                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                          "assets/images/tattoosExmpl.png"),
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: const [
                                        SizedBox(width: 5,),
                                        Text(
                                            textScaleFactor: 1.2,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight:
                                                FontWeight.bold),
                                            'Tattoos'),

                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(width: 5,),
                                        Text(
                                            textScaleFactor: 0.9,
                                            style: TextStyle(
                                              color: Colors.white,),
                                            '5 pins'
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                            textScaleFactor: 0.9,
                                            style: TextStyle(
                                              color: Colors.white38,),
                                            '1 day.'
                                        ),

                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )
                        ),
                        const SizedBox(width: 10),
                      ],
                    )
                  ],
                )
            ),
          ],
        )
      ),
    );
  }
}