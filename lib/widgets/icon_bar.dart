import 'package:flutter/material.dart';

import 'icon_widget.dart';

class IconBar extends StatelessWidget {
  const IconBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconWidget(
            icon: Icons.home,
          ),
          IconWidget(
            icon: Icons.people,
          ),
          IconWidget(
            icon: Icons.ondemand_video_outlined,
          ),
          IconWidget(
            icon: Icons.notifications,
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2)),
            child: Stack(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.kinja-img.com/gawker-media/image/upload/c_fit,f_auto,g_center,q_60,w_645/ijsi5fzb1nbkbhxa2gc1.jpg'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade700,
                    radius: 8,
                    child: const Icon(
                      Icons.menu,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
