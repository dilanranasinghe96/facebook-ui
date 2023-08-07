import 'package:flutter/material.dart';

import '../models/story_model.dart';

class StorySlider extends StatelessWidget {
  const StorySlider({
    super.key,
    required this.stories,
  });

  final List<StoryModel> stories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 186,
      child: ListView.builder(
        itemCount: stories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 110,
                  height: 170,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(15)),
                  child: index == 0
                      ? Stack(
                          children: [
                            Container(
                              height: 115,
                              width: 110,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        'https://i.kinja-img.com/gawker-media/image/upload/c_fit,f_auto,g_center,q_60,w_645/ijsi5fzb1nbkbhxa2gc1.jpg',
                                      )),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15))),
                            ),
                            Positioned(
                              left: 1,
                              right: 1,
                              bottom: 40,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    color: Colors.blue, shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Create story',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        )
                      : Stack(
                          children: [
                            Container(
                              height: 170,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.5),
                                          BlendMode.darken),
                                      image:
                                          NetworkImage(stories[index].story))),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue, width: 2),
                                      shape: BoxShape.circle),
                                  child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          stories[index].userImage)),
                                ),
                              ),
                            ),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  stories[index].userName,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ))
                          ],
                        )));
        },
      ),
    );
  }
}
