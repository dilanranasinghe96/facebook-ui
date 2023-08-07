import 'package:flutter/material.dart';

class NewsPostBar extends StatelessWidget {
  const NewsPostBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.kinja-img.com/gawker-media/image/upload/c_fit,f_auto,g_center,q_60,w_645/ijsi5fzb1nbkbhxa2gc1.jpg'),
          ),
          Container(
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade500)),
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "What's on your mind?",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          const Icon(
            Icons.photo_album,
            color: Colors.green,
            size: 35,
          )
        ],
      ),
    );
  }
}
