library profile_card;

import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, required this.profileImgUrl, required this.name})
      : super(key: key);

  final String profileImgUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage(profileImgUrl),
              radius: 40,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}
