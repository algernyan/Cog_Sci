import 'package:flutter/material.dart';

import 'knowledge_preview_card.dart';

final List<KnowledgePreview> entries = <KnowledgePreview>[
  const KnowledgePreview(
      id: 1,
      email: "VR/AR Developer",
      subject: "VR/AR Developer",
      time: "https://www.psychiatry.org/patients-families/ptsd",
      message:
          "A VR/AR developer is a professional who designs, creates, and implements virtual reality (VR) and augmented reality (AR) experiences using programming and 3D modeling skills."),
  const KnowledgePreview(
      id: 2,
      email: "Prototype",
      subject: "Prototype",
      time: "https://www.psychiatry.org/patients-families/adhd/what-is-adhd",
      message:
          "A prototype in VR/AR development is a preliminary model of the virtual or augmented reality experience, used to test and refine the concept before creating the final product."),
  const KnowledgePreview(
      id: 4,
      email: "User Interface",
      subject: "User Interface",
      time: "",
      message:
          "The user interface in VR/AR is the means by which users interact with the virtual or augmented environment, including elements like menus, buttons, and gesture controls."),
  const KnowledgePreview(
      id: 4,
      email: "Physical Environment",
      subject: "Physical Environment",
      time: "",
      message:
          "The physical environment refers to the actual, real-world surroundings in which a user experiences a VR/AR application, which can impact how the virtual or augmented content is perceived and interacted with."),
  const KnowledgePreview(
      id: 4,
      email: "Client",
      subject: "Client",
      time: "",
      message:
          "In the context of VR/AR development, a client is typically the individual or organization commissioning the VR/AR project, or the end user who will use the final product."),
  const KnowledgePreview(
      id: 4,
      email: "Feedback",
      subject: "Feedback",
      time: "",
      message:
          "Feedback in VR/AR development refers to the information, comments, and suggestions provided by testers, clients, and users that help to refine and improve the VR/AR application."),
  const KnowledgePreview(
      id: 4,
      email: "Requirements",
      subject: "Requirements",
      time: "",
      message:
          "Requirements in VR/AR development are the specific needs, objectives, and constraints defined by the client or project plan that the VR/AR application must meet."),
  const KnowledgePreview(
      id: 4,
      email: "VR Development Challenges",
      subject: "VR Development Challenges ",
      time: "",
      message:
          "VR development challenges refer to the difficulties faced when creating VR/AR applications, which can include technical issues, design constraints, user comfort considerations, and hardware limitations."),
  const KnowledgePreview(
      id: 4,
      email: "Commerce",
      subject: "Commerce ",
      time: "",
      message:
          "In the context of VR/AR, commerce refers to the use of these technologies in the buying and selling of goods and services, such as virtual stores, AR product previews, or VR shopping experiences."),
];

Widget buildVRDatabaseList(BuildContext context) {
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
