import 'package:cog_sci_app/info_pages/intervention.dart';
import 'package:flutter/material.dart';

class InterpersonalWorkPage extends StatefulWidget {
  const InterpersonalWorkPage({super.key, required this.title});
  final String title;

  @override
  State<InterpersonalWorkPage> createState() => _InterpersonalWorkPageState();
}

String description = """
In the context of mental health, interpersonal work refers to a form of intervention aimed at improving a client's communication and relational skills, and enhancing their relationships with others. The term "interpersonal" means "between persons" and pertains to the interactions and relationships individuals have with one another.
""";

class _InterpersonalWorkPageState extends State<InterpersonalWorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Interpersonal Work"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Interpersonal Work',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Interpersonal Work Components',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Identifying Interpersonal Issues: The first step in interpersonal work typically involves identifying the interpersonal issues that the client is facing. These could include conflicts with family members or colleagues, difficulties forming or maintaining relationships, or patterns of harmful or unsatisfactory relationships."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Understanding the Patterns: The next step is to help the client understand their interpersonal patterns. This involves exploring the client's past and present relationships, communication style, expectations, and behavioral patterns. The goal is to identify any maladaptive patterns, such as aggressive communication, avoidance of conflict, or tendencies to form relationships with emotionally unavailable people."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Developing New Skills: Based on this understanding, the mental health professional will help the client develop new interpersonal skills. This could involve teaching the client about healthy communication techniques, conflict resolution strategies, assertiveness, empathy, emotional regulation, and social skills. The professional might use role-play exercises, provide feedback, or assign homework to help the client practice these skills."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Applying Skills to Relationships: The final step involves helping the client apply these new skills to their real-life relationships. This can be done in session (for instance, in couples or family therapy) or between sessions, with the client applying what they have learned in their everyday life. The professional will continue to provide guidance, feedback, and support as the client works on improving their interpersonal functioning."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Guiding Treatment: Interpersonal work can form part of various therapeutic approaches, including interpersonal psychotherapy (IPT), cognitive-behavioral therapy (CBT), dialectical behavior therapy (DBT), and psychodynamic therapy. The focus on interpersonal work will vary depending on the therapeutic approach and the client's specific needs."),
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
