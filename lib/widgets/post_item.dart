import 'package:flutter/material.dart';
import 'package:fullcourse/core/const/app_text.dart';

class PostItem extends StatelessWidget {
  final String userName;
  const PostItem({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/test.jpg',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16),
              Text(userName, style: AppText.subtitle3),
            ],
          ),
          SizedBox(height: 10.0),
          Image.asset('assets/temp/post.jpg'),
          SizedBox(height: 10.0),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor ',
            style: AppText.body1,
          ),
        ],
      ),
    );
  }
}
