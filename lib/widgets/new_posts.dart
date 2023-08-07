import 'package:flutter/material.dart';

import 'action_button.dart';

// ignore: must_be_immutable
class NewPosts extends StatefulWidget {
  const NewPosts({
    super.key,
  });

  @override
  State<NewPosts> createState() => _NewPostsState();
}

class _NewPostsState extends State<NewPosts> {
  List<Map<String, dynamic>> newpost = [
    {
      'name': 'Dilan Ranasinghe',
      'proPic':
          'https://i.kinja-img.com/gawker-media/image/upload/c_fit,f_auto,g_center,q_60,w_645/ijsi5fzb1nbkbhxa2gc1.jpg',
      'time': '5h',
      'typeOfPic': 'updated his cover photo',
      'uploadPic': 'https://wallpapercave.com/wp/wp6369882.jpg',
    },
    {
      'name': 'Risitha Nadimal',
      'proPic': 'https://pbs.twimg.com/media/EYTh4IoWkAAKhXV.jpg',
      'time': '2h',
      'typeOfPic': 'updated his cover photo',
      'uploadPic':
          'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg',
    },
    {
      'name': 'Lehan Rathnayaka',
      'proPic':
          'https://static.toiimg.com/thumb/resizemode-4,msid-76729536,width-1200,height-900/76729536.jpg',
      'time': '20m',
      'typeOfPic': 'updated his cover photo',
      'uploadPic':
          'https://e1.pxfuel.com/desktop-wallpaper/164/219/desktop-wallpaper-high-quality-nature-group-low-quality.jpg',
    },
    {
      'name': 'Nidarshana Uthpala',
      'proPic':
          'https://www.nj.com/resizer/zovGSasCaR41h_yUGYHXbVTQW2A=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/SJGKVE5UNVESVCW7BBOHKQCZVE.jpg',
      'time': '8h',
      'typeOfPic': 'updated his cover photo',
      'uploadPic':
          'https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg',
    },
    {
      'name': 'Madhawa Lakshan',
      'proPic':
          'https://www.enewsletterhome.com/_eNewsletter/2020/2007_J_avatar.jpg?',
      'time': '1d',
      'typeOfPic': 'updated his cover photo',
      'uploadPic':
          'https://e1.pxfuel.com/desktop-wallpaper/292/165/desktop-wallpaper-low-quality-mobile.jpg',
    },
    {
      'name': 'Shanaka Wijewardhana',
      'proPic': 'https://pbs.twimg.com/media/EYVxlOSXsAExOpX.jpg',
      'time': '2d',
      'typeOfPic': 'updated his cover photo',
      'uploadPic':
          'https://img.freepik.com/free-photo/beautiful-shot-crystal-clear-lake-snowy-mountain-base-during-sunny-day_181624-5459.jpg',
    },
    {
      'name': 'Dilshan Karunarathna',
      'proPic': 'https://pbs.twimg.com/media/EYTh4IoWkAAKhXV.jpg',
      'time': '3h',
      'typeOfPic': 'updated his cover photo',
      'uploadPic':
          'https://storage.googleapis.com/pai-images/1542ed7f310a4309a2691ca37a58160b.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newpost.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(newpost[index]['proPic'])),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newpost[index]['name'],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  Text(
                    newpost[index]['typeOfPic'],
                    style: const TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Row(
                    children: [
                      Text(newpost[index]['time'],
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 15)),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.public,
                        size: 20,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              const Icon(
                Icons.more_horiz_outlined,
                color: Colors.grey,
                weight: 20,
              ),
            ]),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child:
                      Image(image: NetworkImage(newpost[index]['uploadPic'])),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ActionButton(
                          icon: Icons.thumb_up_alt_outlined, text: 'Like'),
                      ActionButton(icon: Icons.comment, text: 'Comment'),
                      ActionButton(icon: Icons.reply, text: 'Share')
                    ],
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.black.withOpacity(0.5),
              thickness: 12,
            )
          ],
        );
      },
    );
  }
}
