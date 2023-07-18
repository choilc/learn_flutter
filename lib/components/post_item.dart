import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/user.png',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Image.asset('assets/temp/post1.jpg'),
          SizedBox(
            height: 12,
          ),
          Text(
            'The sun is a daily reminder that we too can rise from the darkness, that we too can shine our own light',
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
