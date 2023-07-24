import 'package:cog_sci_app/forum_preview_card.dart';
import 'package:flutter/material.dart';

final List<ForumPreview> entries = <ForumPreview>[
  const ForumPreview(
      id: 1,
      email: "Psychologist@gmail.com",
      subject: "Update on Patient Treatment",
      time: "5:15pm",
      message:
          "I'm just reaching out in regards to our previous conversation about the unique features of our private practice PTSD treatments.  We usually like to build up to direct exposure, so that our patients can slowly become acclimated to their trama response.  Would it be possible to turn off or adjust the volume for some of the audible triggers?  \n\nThanks!"),
  const ForumPreview(
      id: 2,
      email: "David@berkley.edu",
      subject: "Concerns about VR/AR",
      time: "11:00am",
      message:
          "Our practice is having some debate as to what kinds of treatments would be feasible in VR/AR applications"),
  const ForumPreview(
      id: 3,
      email: "Susan@gatech.edu",
      subject: "Feedback on latest update",
      time: "10:45am",
      message:
          "We had a chance to demo the most recent update you pushed, and we wanted to see if it would be possible to adjust the distance during exposure therapy")
];

Widget buildForumList(BuildContext context) {
  return ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        child: entries[index],
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}
