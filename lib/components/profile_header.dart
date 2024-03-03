import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
 final String CoverPicture;
 final String profileture;
 

  const  ProfileHeader({super.key,required this.CoverPicture,required this.profileture});


  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          height: 200,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Image.network(
                CoverPicture,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
               Positioned(
                bottom: -75,
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage(
                      profileture),
                ),
              ),
            ],
          ),
        );
  }
}