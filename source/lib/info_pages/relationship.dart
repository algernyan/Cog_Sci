import 'package:cog_sci_app/info_pages/client.dart';
import 'package:cog_sci_app/info_pages/psychologist.dart';
import 'package:flutter/material.dart';

class RelationshipsPage extends StatefulWidget {
  const RelationshipsPage({super.key, required this.title});
  final String title;

  @override
  State<RelationshipsPage> createState() => _RelationshipsPageState();
}

String description = """
In the context of mental health and psychology, the term "relationships" refers to the interconnectedness and interactions between individuals, particularly how these interactions affect mental and emotional well-being. They can be a source of support and enrichment, but when they are dysfunctional or strained, they can also contribute to stress and mental health issues.
""";

class _RelationshipsPageState extends State<RelationshipsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Relationships"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Relationships',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Types of Relationships',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Interpersonal Relationships: These include relationships with family, friends, colleagues, romantic partners, and others. Psychologists often investigate these relationships to understand how they might be contributing to a client's presenting issues. For instance, a client might be experiencing depression due to a recent breakup, anxiety due to conflicts at work, or stress due to caregiving responsibilities. Understanding these relationships can help the psychologist identify stressors, triggers, patterns of interaction, and potential sources of support in the client's life."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Family Dynamics: Psychologists may also explore the client's family history and dynamics, including the client's relationships with parents, siblings, and other family members. Early family relationships can significantly impact a person's psychological development, attachment style, and patterns of relating to others. For instance, a client who grew up in a neglectful environment might struggle with trust issues and low self-esteem in their adult relationships."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Therapeutic Relationship: The relationship between the client and psychologist, often called the therapeutic alliance, is a critical factor in successful mental health treatment. This relationship should be based on trust, empathy, respect, and collaboration. The psychologist must create a safe, nonjudgmental, and supportive space where the client feels comfortable sharing their thoughts and feelings. Research has consistently shown that a strong therapeutic relationship can enhance treatment outcomes, regardless of the specific type of therapy used."),
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
