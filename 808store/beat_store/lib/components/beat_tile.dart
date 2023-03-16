import 'package:flutter/material.dart';

class BeatTile extends StatelessWidget {
  const BeatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(15),
      color: Colors.grey.shade800,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 100,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/4pf.jpg"),
                radius: 50,
              ),


              Column(
                children: [
                  Text(
                    "\"TITLE\" - TITLE Type Beat",
                    style: Theme.of(context).textTheme.headline5,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [

                      Column(
                        children: [

                          Row(
                            children: [
                              const SizedBox(width: 10),
                              Text(
                                "140 BPM",
                                style: Theme.of(context).textTheme.headline4,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          
                          const SizedBox(height: 10),

                          Row(
                            children: [
                              const SizedBox(width: 10),
                              Text("D# minor",
                                  style: Theme.of(context).textTheme.headline4),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(width: 50),
                      
                     
                          Row(
                            children: const [
                              Icon(Icons.play_circle_fill_rounded, size: 40),
                              SizedBox(width: 20),
                              Icon(Icons.favorite_outline_rounded, size: 40),
                            ],
                          )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
