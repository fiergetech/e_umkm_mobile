import 'package:flutter/material.dart';

class ProfileFragmentScreen extends StatelessWidget {

  Widget userIfoItemProfile(IconData iconData, String userData){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8, 
      ),
      child: Row(children: [
        Icon(
          iconData,
          size: 30,
          color: Colors.black,
        ),
        const SizedBox(width: 16,),
        Text(
          userData,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
      ]),
    );

  } 

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(32),
      children: [
                SizedBox(height: 20,),

        Center(
          
          child: Image.asset(
            "images/man.png",
            width: 100,
            ),
        ),
        SizedBox(height: 20,),
      
        userIfoItemProfile(Icons.person, "user name"),

        SizedBox(height: 20,),


        userIfoItemProfile(Icons.email, "user@gmail.com"),

        SizedBox(height: 20,),

        Center(
          child: Material(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: (){

              },
              borderRadius: BorderRadius.circular(32),
              child: const Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 12,
                ),
                child: const Text(
                  "Sign Out",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,

                  ),
                ),
              ),
            ),
          ),
        ),


      ],
    );
  }
}
