import 'package:flutter/material.dart';

class PostBottomBar2 extends StatelessWidget {
  const PostBottomBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Color(0xFFEDF2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          Padding(padding: EdgeInsets.only(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Republic Act: 9262", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Text("Declaration of Policy.- It is hereby declared that the State values the dignity of women and children and guarantees full respect for human rights. The State also recognizes the need to protect the family and its members particularly women and children, from violence and threats to their personal safety and security.",
                  style: TextStyle(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.w500
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 15),
                Container(
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              )
                            ]
                        ),
                        child: Icon(Icons.bookmark_outlined, size: 40),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
