import 'package:cog_sci_app/info_pages/cbt.dart';
import 'package:cog_sci_app/info_pages/interpersonal_work.dart';
import 'package:cog_sci_app/info_pages/meditation.dart';
import 'package:cog_sci_app/info_pages/psychoeducation.dart';
import 'package:cog_sci_app/info_pages/psychologist.dart';
import 'package:flutter/material.dart';

class InterventionPage extends StatefulWidget {
  const InterventionPage({super.key, required this.title});
  final String title;

  @override
  State<InterventionPage> createState() => _InterventionPageState();
}

String description = """
In the mental health field, an intervention refers to a specific strategy or set of strategies designed to assist a client in managing, reducing, or eliminating their psychological symptoms or distress. It involves specific techniques or activities implemented by a mental health professional, such as a psychologist or counselor, to bring about change in the client's thoughts, feelings, or behaviors.

While interventions and treatments can sometimes be used interchangeably, the term "intervention" in mental health is often used to refer more specifically to the non-pharmacological techniques and strategies used within a broader treatment plan. A treatment plan, on the other hand, is a comprehensive approach to addressing a client's mental health needs, which might include interventions, medication, lifestyle changes, and other elements depending on the individual's needs and the mental health professional's scope of practice.

For example, a treatment plan for depression might involve a combination of interventions (like cognitive-behavioral therapy or interpersonal therapy), medication (prescribed by a psychiatrist or other medical professional), and lifestyle changes (such as increasing physical activity or improving sleep hygiene). In this context, interventions are one component of the broader treatment plan.

Note that while psychologists and other non-medical mental health professionals can provide interventions, they do not typically prescribe medication (except in a few U.S. states where they can get additional training to do so). This distinguishes them from psychiatrists, who are medical doctors specializing in mental health and can prescribe medication. However, psychologists and psychiatrists often work together in a team to provide comprehensive mental health care.
""";

class _InterventionPageState extends State<InterventionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Intervention"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Intervention',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Intervention Components',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Cognitive and Behavioral Techniques: Interventions often involve cognitive and behavioral techniques. Cognitive techniques aim to help clients identify and change unhelpful thought patterns, while behavioral techniques involve learning and practicing more adaptive behaviors. Examples include cognitive restructuring in cognitive-behavioral therapy, exposure exercises for anxiety disorders, or behavioral activation for depression."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Psychoeducation: Many interventions involve educating clients about their mental health conditions, including their symptoms, causes, and treatment options. This knowledge can empower clients to better understand their experiences and to take an active role in their treatment."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Skills Training: Interventions may also involve teaching clients specific skills to manage their symptoms or to improve their functioning. This could include social skills training, stress management techniques, mindfulness exercises, or problem-solving skills."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Process Interventions: Some interventions focus on the therapeutic process itself. This might involve exploring the client's emotions, reflecting on their experiences, providing empathetic responses, or facilitating insights. These interventions aim to create a supportive and understanding space for the client to explore their feelings and experiences."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Prevention and Promotion Interventions: In addition to addressing existing mental health issues, interventions can also be preventive or promotive. Preventive interventions aim to reduce the risk of mental health issues developing or worsening, while promotive interventions aim to enhance wellbeing and resilience."),
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
                            const PsychologistPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Psychologist'),
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
                            const PsychoeducationPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Psychoeducation'),
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
                        builder: (context) => const CBTPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Cognitive Behavioral Therapy'),
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
                            const InterpersonalWorkPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Interpersonal Work'),
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
                            const MeditationPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Meditation'),
                ),
              ],
            )));
  }
}
