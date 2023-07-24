import 'package:cog_sci_app/info_pages/client.dart';
import 'package:flutter/material.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({super.key, required this.title});
  final String title;

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

String description = """
Goals in the context of the mental health field refer to the desired outcomes that a client wants to achieve through therapy or treatment. They are specific, measurable, achievable, relevant, and time-bound (SMART) objectives that provide direction and purpose for the therapeutic process.

Client goals are agreed-upon targets that aim to address the issues identified during the evaluation and conceptualization phases. They could relate to a wide variety of areas, such as reducing symptoms of a mental health disorder, improving social skills, enhancing work or academic performance, or achieving better emotional regulation.

Goals are crucial because they inform the type of interventions that may be most effective. For example, if a client's goal is to reduce panic attacks, the psychologist might incorporate interventions like cognitive-behavioral therapy and mindfulness techniques. On the other hand, if the goal is to improve a romantic relationship, couple's therapy or communication skill-building might be more appropriate.

Goals also provide a clear definition of what a successful outcome would look like. If a client's goal is to reduce depressive symptoms, success might be defined as a significant decrease in the client's score on a depression scale, or an increase in the client's ability to engage in activities they previously enjoyed.
""";

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Goals"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Goals',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
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
