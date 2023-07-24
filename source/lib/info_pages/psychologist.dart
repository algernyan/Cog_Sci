import 'package:cog_sci_app/info_pages/Evaluation.dart';
import 'package:cog_sci_app/info_pages/conceptualization.dart';
import 'package:cog_sci_app/info_pages/diagnosis.dart';
import 'package:cog_sci_app/info_pages/goals.dart';
import 'package:cog_sci_app/info_pages/intervention.dart';
import 'package:cog_sci_app/info_pages/treatment.dart';
import 'package:flutter/material.dart';

class PsychologistPage extends StatefulWidget {
  const PsychologistPage({super.key, required this.title});
  final String title;

  @override
  State<PsychologistPage> createState() => _PsychologistPageState();
}

class _PsychologistPageState extends State<PsychologistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Psychologist"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Psychologist',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  "A psychologist is a professional who specializes in understanding, diagnosing, and treating the human mind and behavior. They work in a variety of environments, such as schools, hospitals, businesses, government agencies, and private practices, and can have different specialties.\n\nThe title of 'psychologist' is protected in most jurisdictions, meaning that individuals need specific training and licensing to use this title. In general, becoming a psychologist requires earning a doctoral degree in psychology (a Ph.D. or Psy.D.), completing an internship, and passing a licensing exam.\n\nIt's also worth noting that psychologists are not typically medical doctors and do not prescribe medication (except in a few U.S. states where they can get additional training to do so). This distinguishes them from psychiatrists, who are medical doctors specializing in mental health and can prescribe medication. Psychologists and psychiatrists often work together in a team to provide comprehensive mental health care.",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Responsibilities of a Psychologist',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      'Understanding Human Behavior and Mind: The primary role of a psychologist is to study and understand human behavior and the processes of the mind. This includes cognition, emotion, perception, personality, and social behavior.'),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      'Assessment and Diagnosis: Psychologists use various assessment tools, such as psychological tests, interviews, observation, and case histories, to identify and diagnose mental health disorders or behavioral problems.'),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      'Treatment and Intervention: Once a diagnosis has been made, psychologists use a variety of treatment techniques to help their clients. These can include psychotherapy (talk therapy), cognitive-behavioral therapy, psychodynamic therapy, and other evidence-based interventions. They may also develop behavior modification programs or provide crisis management.'),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      'Research: Many psychologists conduct research to understand more about the mind and behavior. They may design and conduct experiments, collect and analyze data, and interpret their findings to contribute to the scientific understanding of human behavior and mental processes.'),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      'Consultation: Psychologists often provide consultation services to individuals, organizations, or communities. This can include offering strategies to improve workplace productivity, suggesting interventions to improve student learning, or developing programs to promote mental health in a community.'),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      'Education and Training: Psychologists may also be involved in teaching and training. This can include teaching psychology courses at a university, providing supervision to psychology trainees, or giving public lectures or workshops on mental health topics.'),
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
                            const EvaluationPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Evaluation'),
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const ConceptualizationPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Conceptualization'),
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const DiagnosisPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Diagnosis'),
                ),
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
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const TreatmentPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Treatment'),
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const GoalsPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Goals'),
                ),
              ],
            )));
  }
}
