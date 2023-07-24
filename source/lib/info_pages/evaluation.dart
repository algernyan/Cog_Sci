import 'package:cog_sci_app/info_pages/psychologist.dart';
import 'package:flutter/material.dart';

class EvaluationPage extends StatefulWidget {
  const EvaluationPage({super.key, required this.title});
  final String title;

  @override
  State<EvaluationPage> createState() => _EvaluationPageState();
}

class _EvaluationPageState extends State<EvaluationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Evaluation"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Evaluation',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  "In the context of psychology and mental health, an evaluation refers to a systematic process where a professional assesses a client's mental, emotional, and behavioral health to understand their needs and to determine the most appropriate course of treatment. This could be done by a psychologist, psychiatrist, or another mental health professional.\n\nAfter the evaluation, the professional will synthesize all the information to form a comprehensive understanding of the client's situation. This process, sometimes referred to as 'conceptualization,' involves identifying the key issues, formulating hypotheses about the underlying causes or contributing factors, and determining a diagnosis if applicable.\n\nBased on the evaluation and conceptualization, the professional will then determine the most appropriate next steps. This could involve developing a treatment plan, providing therapeutic interventions, or referring the client to another professional who is better suited to their needs.\n\nIt's important to note that the evaluation is an ongoing process. Professionals will continue to assess the client's progress and needs throughout their contact, adjusting the treatment approach as needed. Evaluation is therefore not just an initial step, but a continual process of understanding and responding to the client's mental health needs.",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Evaluation Process',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Initial Contact: An evaluation usually begins with the initial contact, which could be in person, over the phone, or through a digital medium. During this contact, the professional gathers basic information about the client, including the reasons they are seeking help. This initial contact can give the professional a preliminary understanding of the client's situation."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Clinical Interview: The next step is typically a clinical interview. During this in-depth conversation, the professional asks a range of questions to understand the client's symptoms, history, environment, and functioning. This could cover topics like the client's physical health, mental health history, family background, social relationships, work or school situation, and any substance use."),
                ),
                const ListTile(
                    leading: Icon(Icons.arrow_forward_ios),
                    title: Text(
                        "Psychological Testing: Depending on the information gathered during the interview, the professional may conduct psychological tests. These could include personality tests, cognitive assessments, or diagnostic screenings. The goal is to gain objective data about the client's psychological functioning, which can help in diagnosing any mental health disorders.")),
                const ListTile(
                    leading: Icon(Icons.arrow_forward_ios),
                    title: Text(
                        "Observation: Professionals might also use observational techniques during the evaluation. This could involve observing the client's behavior, interaction style, and non-verbal cues during the sessions. In some cases, the professional might observe the client in other environments, such as at home or at school.")),
                const ListTile(
                    leading: Icon(Icons.arrow_forward_ios),
                    title: Text(
                        "Collateral Information: In some cases, the professional may also gather information from other sources, such as speaking with family members, teachers, or other healthcare providers. This can provide additional perspectives and context.")),
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
              ],
            )));
  }
}
