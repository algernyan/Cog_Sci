import 'package:cog_sci_app/info_pages/psychologist.dart';
import 'package:flutter/material.dart';

class ConceptualizationPage extends StatefulWidget {
  const ConceptualizationPage({super.key, required this.title});
  final String title;

  @override
  State<ConceptualizationPage> createState() => _ConceptualizationPageState();
}

class _ConceptualizationPageState extends State<ConceptualizationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Conceptualization"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Conceptualization',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  "Conceptualization, in the context of psychology and mental health, refers to the process of developing a comprehensive understanding or model of a client's presenting problems, their origins, and how they are maintained in the client's life. It serves as the foundation for developing an effective treatment plan.\n\nConceptualization is part of the broader evaluation process. While evaluation involves gathering information about the client through interviews, tests, observations, and other methods, conceptualization involves making sense of this information and forming a coherent understanding of the client's situation.\n\nIn other words, if we consider evaluation as the data collection phase, conceptualization can be thought of as the data interpretation and model construction phase. Both are critical steps in providing effective mental health care, with evaluation providing the raw information needed for conceptualization, and conceptualization in turn guiding the treatment process.",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Conceptualization Components',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Identifying Key Components: The first step in conceptualization is to identify the key components of the client's background and environment. This includes their personal history (such as childhood experiences and significant life events), current life circumstances (such as work, school, and relationships), and cultural context. It also includes the client's mental and physical health, personality traits, coping mechanisms, beliefs, and behaviors."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Connecting Components to Issues: The next step in conceptualization is to link these components to the client's presenting issues. The goal is to understand not just the symptoms the client is experiencing, but why they are experiencing these symptoms. For example, a client's anxiety might be connected to a stressful work environment, a history of childhood trauma, and maladaptive coping strategies. This phase involves generating hypotheses about the causes or contributing factors of the client's issues."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Developing a Model: Based on this understanding, the psychologist develops a conceptual model of the client. This model represents the client's psychological functioning and the interplay between various factors. It helps to identify patterns, potential triggers, and perpetuating factors. The model can be based on various theoretical approaches, such as cognitive-behavioral, psychodynamic, or humanistic perspectives, depending on the professional's training and the client's needs."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Guiding Treatment: The conceptualization then guides the treatment plan. It helps the professional identify the most relevant therapeutic interventions, set treatment goals, and monitor progress. The conceptualization is not fixed but is continually revised and refined as new information comes to light during treatment."),
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
              ],
            )));
  }
}
