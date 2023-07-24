import 'package:cog_sci_app/info_pages/client.dart';
import 'package:cog_sci_app/info_pages/psychologist.dart';
import 'package:flutter/material.dart';

class CulturePage extends StatefulWidget {
  const CulturePage({super.key, required this.title});
  final String title;

  @override
  State<CulturePage> createState() => _CulturePageState();
}

String description = """
In the context of mental health and psychology, culture refers to the shared beliefs, values, norms, and practices that define a group of people. This can include aspects related to ethnicity, nationality, religion, language, gender, socioeconomic status, sexual orientation, and other factors that influence a person's identity and worldview.

When psychologists conceptualize a case, they must consider the client's cultural background as a key component of their understanding. This can involve asking questions about the client's cultural identity and Culture, being aware of cultural norms and values, and considering how these cultural factors might be interacting with the client's mental health.

On the other side, the psychologist's own cultural background can also influence their conceptualization. Psychologists bring their own cultural assumptions and biases, which can affect how they interpret a client's Culture and symptoms. For example, a psychologist might be more familiar with the norms and values of their own culture, which could influence their understanding of a client from a different culture.

To counter this, psychologists are encouraged to practice cultural humility, which involves acknowledging their own cultural biases, continually learning about other cultures, and respecting the cultural perspectives of their clients. Many mental health professionals also receive training in culturally competent care, which includes strategies to effectively work with diverse populations and to incorporate cultural considerations into Culture and treatment.
""";

class _CulturePageState extends State<CulturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Culture"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Culture',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Impact of Culture',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Influence on Perception and Expression of Symptoms: Culture can influence how people perceive and express psychological distress. For example, in some cultures, psychological distress might be expressed more somatically (through physical symptoms) rather than emotionally. Understanding these cultural nuances can help mental health professionals to more accurately identify and diagnose mental health issues."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Influence on Coping Mechanisms and Help-Seeking Behavior: Cultural norms and values can shape how individuals cope with stress and how they seek help. Some cultures might encourage seeking support from family and community, while others might prioritize self-reliance. Similarly, there may be cultural stigma associated with seeking mental health treatment, which can influence whether and how individuals access services."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Influence on Treatment Preferences and Effectiveness: Culture can also impact what types of treatment individuals are comfortable with and find effective. Therapies that align with the individual's cultural values and norms are likely to be more engaging and beneficial."),
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
                        builder: (context) => const ClientPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Client'),
                ),
              ],
            )));
  }
}
