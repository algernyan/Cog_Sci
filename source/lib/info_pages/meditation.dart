import 'package:cog_sci_app/info_pages/intervention.dart';
import 'package:flutter/material.dart';

class MeditationPage extends StatefulWidget {
  const MeditationPage({super.key, required this.title});
  final String title;

  @override
  State<MeditationPage> createState() => _MeditationPageState();
}

String description = """
Meditation, in the context of mental health, is a mind-body practice that has been found to have various therapeutic benefits. Although it has roots in various religious and spiritual traditions, it has been secularized and adapted for use in many modern therapeutic approaches.

The primary aim of meditation is to foster a state of relaxation and mental clarity. It's often used as an intervention to help clients manage a variety of mental health conditions, particularly stress and anxiety-related disorders, although it can also be beneficial for issues such as depression, pain management, and insomnia.

Meditation can be used as a standalone intervention, but it is often integrated with other therapeutic approaches, particularly cognitive-behavioral therapy (CBT) and mindfulness-based cognitive therapy (MBCT). For example, a therapist might guide a client through a meditation exercise during a session, or assign meditation as homework to help the client manage anxiety between sessions.

Meditation has been found to have various psychological benefits. It can reduce symptoms of anxiety and depression, improve attention and concentration, enhance self-awareness, and promote a general sense of well-being. Physically, it can also lower blood pressure, improve sleep, and reduce chronic pain.

Meditation is a skill that requires practice. Mental health professionals can guide clients through meditation exercises, teach them techniques, and provide feedback. There are also many resources available to support meditation practice, such as guided meditation apps, videos, and courses.
""";

class _MeditationPageState extends State<MeditationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Meditation"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Meditation',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Types of Meditation',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Mindfulness Meditation: This form involves the individual focusing on the present moment, acknowledging and accepting it without judgment. This practice helps individuals disengage from stress-inducing thoughts and allows them to cope better with anxiety."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Transcendental Meditation: This type involves repeating a mantra (a word or phrase) to help quiet the mind and induce a state of deep relaxation and stress relief."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Loving-Kindness Meditation: In this practice, individuals focus on developing feelings of compassion and love for themselves and others, which can be particularly helpful for individuals struggling with self-esteem, anger, or resentment issues."),
                ),
                const SizedBox(height: 16),
                Text(
                  'Related Concepts:',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const InterventionPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Intervention'),
                ),
              ],
            )));
  }
}
