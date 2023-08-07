import 'package:flutter/material.dart';

import '../models/story_model.dart';
import '../widgets/icon_bar.dart';
import '../widgets/new_post_bar.dart';
import '../widgets/new_posts.dart';
import '../widgets/story_slider.dart';
import '../widgets/tool_bar.dart';

class FacebookUI extends StatefulWidget {
  const FacebookUI({super.key});

  @override
  State<FacebookUI> createState() => _FacebookUIState();
}

class _FacebookUIState extends State<FacebookUI> {
  List<StoryModel> stories = [
    StoryModel(
        userName: 'Risitha Nadimal',
        userImage:
            'https://i.kinja-img.com/gawker-media/image/upload/c_fit,f_auto,g_center,q_60,w_645/ijsi5fzb1nbkbhxa2gc1.jpg',
        story:
            'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg',
        uid: '101'),
    StoryModel(
        userName: 'Lehan Rathnayaka',
        userImage:
            'https://static.toiimg.com/thumb/resizemode-4,msid-76729536,width-1200,height-900/76729536.jpg',
        story:
            'https://e1.pxfuel.com/desktop-wallpaper/164/219/desktop-wallpaper-high-quality-nature-group-low-quality.jpg',
        uid: '102'),
    StoryModel(
        userName: 'Nidarshana Uthpala',
        userImage:
            'https://www.nj.com/resizer/zovGSasCaR41h_yUGYHXbVTQW2A=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/SJGKVE5UNVESVCW7BBOHKQCZVE.jpg',
        story:
            'https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg',
        uid: '103'),
    StoryModel(
        userName: 'Madhawa Lakshan',
        userImage:
            'https://www.enewsletterhome.com/_eNewsletter/2020/2007_J_avatar.jpg?',
        story:
            'https://e1.pxfuel.com/desktop-wallpaper/292/165/desktop-wallpaper-low-quality-mobile.jpg',
        uid: '104'),
    StoryModel(
        userName: 'Shanaka Wijewardhana',
        userImage: 'https://pbs.twimg.com/media/EYVxlOSXsAExOpX.jpg',
        story:
            'https://img.freepik.com/free-photo/beautiful-shot-crystal-clear-lake-snowy-mountain-base-during-sunny-day_181624-5459.jpg',
        uid: '105'),
    StoryModel(
        userName: 'Dilshan Karunarathna',
        userImage: 'https://pbs.twimg.com/media/EYTh4IoWkAAKhXV.jpg',
        story:
            'https://storage.googleapis.com/pai-images/1542ed7f310a4309a2691ca37a58160b.jpeg',
        uid: '106'),
    StoryModel(
        userName: 'Anuradha Jayasanke',
        userImage: 'https://pbs.twimg.com/media/EYTh4IwXkAAJ9eW.jpg',
        story:
            'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg',
        uid: '107'),
    StoryModel(
        userName: 'Yasitha Sanjula',
        userImage: 'https://pbs.twimg.com/media/EYTh4IoWkAAKhXV.jpg',
        story:
            'https://c0.wallpaperflare.com/preview/777/313/188/star-cliff-building-edge.jpg',
        uid: '108'),
    StoryModel(
        userName: 'Dimithra Lakshan',
        userImage:
            'https://www.enewsletterhome.com/_eNewsletter/2020/2007_J_avatar.jpg?',
        story:
            'https://piratediffusion1.s3.amazonaws.com/renders2/E2ykVx/00003-r-pro-iy8b36a.jpg',
        uid: '109'),
    StoryModel(
        userName: 'Damsara Ekanayake',
        userImage:
            'https://1.bp.blogspot.com/-F-Vr6wmiQzs/XwIfgeaJKtI/AAAAAAAAEno/_Z4McIjR59s0sphxP8482Z6ivGILSuVzQCLcBGAsYHQ/w1200-h630-p-k-no-nu/facebookavatar5.jpeg',
        story:
            'https://www.hdwallpapers.in/download/landscape_view_yellow_green_leaves_trees_autumn_forest_mountain_slope_clouds_sky_reflection_lake_water_4k_5k_hd_nature-360x640.jpg',
        uid: '110')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const ToolBar(),
            const SizedBox(
              height: 20,
            ),
            const IconBar(),
            const Divider(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const NewsPostBar(),
                    Divider(
                      color: Colors.black.withOpacity(0.5),
                      thickness: 10,
                    ),
                    StorySlider(stories: stories),
                    const SizedBox(
                      height: 8,
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.5),
                      thickness: 10,
                    ),
                    const NewPosts(),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
