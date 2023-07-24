import 'package:cog_sci_app/info_pages/intervention.dart';
import 'package:flutter/material.dart';

class PsychoeducationPage extends StatefulWidget {
  const PsychoeducationPage({super.key, required this.title});
  final String title;

  @override
  State<PsychoeducationPage> createState() => _PsychoeducationPageState();
}

String description = """
Psychoeducation is a key component of many treatment plans in the mental health field. It involves providing clients, and sometimes their families or support systems, with information and resources to better understand and manage their mental health conditions or challenges.

In essence, psychoeducation acts as a bridge between the therapist's knowledge of mental health and the client's experience of their condition. It is an empowering process that can increase treatment compliance, improve outcomes, and enhance the client's quality of life.

Psychoeducation can be delivered in a variety of formats, including individual or group sessions, workshops, online resources, or written materials. The method and content of psychoeducation can be tailored to meet the needs of the individual client, taking into account their age, cultural background, level of understanding, and preferences.
""";

class _PsychoeducationPageState extends State<PsychoeducationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Psychoeducation"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Psychoeducation',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Psychoeducation Components',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Understanding Mental Health Conditions: One of the primary purposes of psychoeducation is to help clients understand the nature of their mental health conditions. This can include information about the symptoms, causes, course, and prognosis of the condition. For example, if a client is diagnosed with bipolar disorder, a mental health professional might provide education about the typical features of this disorder, such as mood swings, manic and depressive episodes, and how it may affect their daily life."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Treatment Information: Psychoeducation also involves explaining the different treatment options available, including their benefits and potential side effects. This can help clients make informed decisions about their treatment and increase their commitment to it. This might involve discussing medication, therapy options, lifestyle changes, or a combination of these."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Coping Strategies: Psychoeducation helps clients learn effective strategies for managing symptoms and coping with their condition. This can include teaching stress management techniques, problem-solving strategies, communication skills, and other self-care practices."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Enhancing Self-Efficacy: By increasing clients' understanding of their condition and providing them with tools to manage it, psychoeducation can enhance their sense of self-efficacy. Self-efficacy refers to a person's belief in their ability to influence events that affect their lives. This can empower clients to take an active role in their recovery and improve their overall wellbeing."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Family and Support System Involvement: Psychoeducation can also involve the client's family or support system. Educating family members about the client's condition can help them provide more effective support, reduce stigma, and improve the overall family dynamics."),
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
