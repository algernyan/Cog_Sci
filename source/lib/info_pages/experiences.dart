import 'package:cog_sci_app/info_pages/client.dart';
import 'package:cog_sci_app/info_pages/psychologist.dart';
import 'package:flutter/material.dart';

class ExperiencesPage extends StatefulWidget {
  const ExperiencesPage({super.key, required this.title});
  final String title;

  @override
  State<ExperiencesPage> createState() => _ExperiencesPageState();
}

String description = """
In the context of mental health and psychology, the term "experiences" broadly refers to the range of events, interactions, perceptions, and situations that an individual has gone through in their lifetime. These experiences can have a profound impact on an individual's mental and emotional wellbeing and are a crucial aspect that psychologists consider during the process of case conceptualization.

When it comes to a client, their experiences could include a wide array of factors. It could be their personal experiences, including their childhood upbringing, education, relationships, significant life events, traumatic incidents, cultural and societal influences, among others. It also involves the individual's internal experiences such as their thoughts, emotions, perceptions, beliefs, and interpretations of these experiences. Understanding these experiences helps psychologists gain a comprehensive view of the client's life and how these factors contribute to their current mental health issues.

Psychologists are trained to reflect on their own experiences and biases and to manage these effectively to provide the best care to their clients. This process, known as self-reflection or reflexivity, is a critical component of professional practice in psychology.

Overall, experiences, whether of the client or the psychologist, play a crucial role in understanding and addressing mental health issues. They contribute to the rich tapestry of individual context and understanding that is central to effective psychological practice.
""";

class _ExperiencesPageState extends State<ExperiencesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Experiences"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Experiences',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Types of Experiences',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Personal experiences can influence a psychologist's values, beliefs, attitudes, and interpersonal style. For example, a psychologist who has personally experienced a particular challenge may bring greater empathy and understanding to clients facing similar issues. Alternatively, they might have biases or blind spots related to their own experiences, which they need to be aware of to ensure they don't hinder the therapy process."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Professional experiences, including their training, the types of clients they've worked with, the settings they've worked in, the therapeutic approaches they've used, and the outcomes they've seen, can also shape how they conceptualize cases. A psychologist with extensive experience in trauma, for example, might be particularly attuned to signs of post-traumatic stress disorder in their clients."),
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
