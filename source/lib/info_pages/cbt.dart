import 'package:cog_sci_app/info_pages/intervention.dart';
import 'package:flutter/material.dart';

class CBTPage extends StatefulWidget {
  const CBTPage({super.key, required this.title});
  final String title;

  @override
  State<CBTPage> createState() => _CBTPageState();
}

String description = """
Cognitive Behavioral Therapy (CBT) is a form of psychological treatment that is extensively used in the mental health field due to its demonstrated effectiveness for a range of conditions. It is both a type of intervention and a theoretical orientation that is centered around the premise that our thoughts (cognition), behaviors, and emotions interact and contribute to mental health and mental illness.
""";

class _CBTPageState extends State<CBTPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CBT"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CBT',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'CBT Components',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Theoretical Framework: The theoretical underpinning of CBT is that our thoughts and perceptions about ourselves, others, and the world around us heavily influence our emotions and behaviors. For example, if a person tends to perceive situations negatively or believes they are incapable or unworthy (negative cognition), these thoughts can trigger negative feelings (such as sadness or anxiety) and unhelpful behaviors (such as withdrawal or substance misuse)."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Goal of CBT: The primary goal of CBT is to help clients identify and change these maladaptive thought patterns and behaviors. By developing more accurate and constructive ways of thinking and behaving, clients can experience improved emotional states and outcomes."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "CBT Techniques: CBT employs a variety of techniques to achieve these goals. This can include cognitive restructuring (identifying and challenging negative thoughts), behavioral activation (engaging in activities that are mood enhancing), exposure therapy (gradually facing feared situations to reduce fear or avoidance), and problem-solving (developing effective strategies to manage stressors)."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Skills and Coping Mechanisms: A significant part of CBT involves teaching clients new skills and coping mechanisms. This can include relaxation techniques, stress management skills, assertiveness training, and social skills training. These skills help clients manage their symptoms, cope with stress, and improve their functioning in various areas of life."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Structure of Therapy: CBT is typically a structured, goal-oriented therapy. Sessions are often focused on specific problems or goals that the client is facing. Therapy often includes homework assignments where clients practice new skills or behaviors between sessions."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Evidence-Based Approach: CBT is an evidence-based approach, meaning it has been researched extensively and shown to be effective for a variety of mental health conditions, including depression, anxiety disorders, PTSD, eating disorders, and substance use disorders. It is often the first-line treatment for these conditions."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "CBT and Other Approaches: While CBT can be effective on its own, it can also be combined with other therapeutic approaches, such as medication, mindfulness-based therapies, or interpersonal therapy."),
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
