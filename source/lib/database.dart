import 'package:flutter/material.dart';

import 'knowledge_preview_card.dart';

final List<KnowledgePreview> entries = <KnowledgePreview>[
  const KnowledgePreview(
      id: 1,
      email: "Psychologist",
      subject: "Psychologist",
      time: "https://www.psychiatry.org/patients-families/ptsd",
      message:
          "A psychologist is a trained professional who studies, understands, diagnoses, and treats mental, emotional, and behavioral issues."),
  const KnowledgePreview(
      id: 2,
      email: "Evaluation",
      subject: "Evaluation",
      time: "https://www.psychiatry.org/patients-families/adhd/what-is-adhd",
      message:
          "Evaluation refers to the systematic process of gathering and analyzing information about a client's mental, emotional, and behavioral health to determine their needs and the most suitable course of treatment."),
  const KnowledgePreview(
      id: 3,
      email: "Diagnosis",
      subject: "Diagnosis ",
      time:
          "https://www.psychiatry.org/patients-families/schizophrenia/what-is-schizophrenia",
      message:
          "Diagnosis is the process of identifying and categorizing a client's mental health condition based on standardized criteria, such as those listed in the Diagnostic and Statistical Manual of Mental Disorders (DSM)."),
  const KnowledgePreview(
      id: 4,
      email: "Conceptualization",
      subject: "Conceptualization ",
      time: "",
      message:
          "Conceptualization is the process of developing a comprehensive understanding of a client's presenting problems, their origins, and how they are maintained, forming the basis for a treatment plan."),
  const KnowledgePreview(
      id: 4,
      email: "client",
      subject: "Client ",
      time: "",
      message:
          "A client is an individual who seeks help from a mental health professional due to experiencing psychological distress or wanting to make changes in their life."),
  const KnowledgePreview(
      id: 4,
      email: "CBT",
      subject: "CBT ",
      time: "",
      message:
          "CBT is a form of psychological treatment that focuses on changing unhelpful thinking patterns and behaviors to improve emotional regulation and develop personal coping strategies."),
  const KnowledgePreview(
      id: 4,
      email: "Culture",
      subject: "Culture ",
      time: "",
      message:
          "Culture refers to the shared values, norms, beliefs, and practices of a group of people, which can significantly impact an individual's mental health and how they understand and cope with mental illness."),
  const KnowledgePreview(
      id: 4,
      email: "Environment",
      subject: "Environment ",
      time: "",
      message:
          "Environment refers to the physical, social, and cultural surroundings in which a person lives and interacts, which can significantly influence their mental and emotional well-being."),
  const KnowledgePreview(
      id: 4,
      email: "Experiences",
      subject: "Experiences ",
      time: "",
      message:
          "Experiences are the events, interactions, and perceptions a person has gone through in their life, which can shape their mental and emotional health."),
  const KnowledgePreview(
      id: 4,
      email: "Goals",
      subject: "Goals ",
      time: "",
      message:
          "Goals in a mental health context often refer to the desired outcomes a client hopes to achieve through therapy, such as reducing symptoms, improving relationships, or developing coping skills."),
  const KnowledgePreview(
      id: 4,
      email: "Interpersonal Work",
      subject: "Interpersonal Work ",
      time: "",
      message:
          "Interpersonal work refers to the focus on an individual's relationships and social interactions in a therapeutic context to help them understand and improve their relational dynamics."),
  const KnowledgePreview(
      id: 4,
      email: "Intervention",
      subject: "Intervention ",
      time: "",
      message:
          "An intervention is a specific therapeutic technique or set of techniques used by mental health professionals to help a client manage and overcome their psychological difficulties."),
  const KnowledgePreview(
      id: 4,
      email: "Meditation",
      subject: "Meditation ",
      time: "",
      message:
          "Meditation is a mind-body practice that involves focusing attention, often used in mental health treatment to help clients reduce stress, improve attention, and promote well-being."),
  const KnowledgePreview(
      id: 4,
      email: "Presenting Issues",
      subject: "Presenting Issues ",
      time: "",
      message:
          "Presenting issues are the specific problems, symptoms, or concerns that lead a person to seek help from a mental health professional."),
  const KnowledgePreview(
      id: 4,
      email: "Psychoeducation",
      subject: "Psychoeducation",
      time: "",
      message:
          "Psychoeducation involves educating a client about their mental health conditions and treatment options, helping them to understand their experiences and to engage more effectively in the treatment process."),
  const KnowledgePreview(
      id: 4,
      email: "Relationship",
      subject: "Relationship",
      time: "",
      message:
          "In a therapeutic context, the relationship between a client and a mental health professional, often called the therapeutic alliance, is a key element of effective treatment."),
  const KnowledgePreview(
      id: 4,
      email: "Treatment",
      subject: "Treatment",
      time: "",
      message:
          "Treatment refers to the strategies, interventions, and therapies used by mental health professionals to help a client manage and overcome their mental health challenges."),
];

Widget buildDatabaseList(BuildContext context) {
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
