import 'package:cog_sci_app/info_pages/client.dart';
import 'package:flutter/material.dart';

class PresentingIssuesPage extends StatefulWidget {
  const PresentingIssuesPage({super.key, required this.title});
  final String title;

  @override
  State<PresentingIssuesPage> createState() => _PresentingIssuesPageState();
}

String description = """
In the field of mental health, the term "presenting issues" or "presenting problems" refers to the specific concerns, difficulties, or symptoms that lead a person to seek help from a mental health professional. They are the issues the client initially presents during the first few sessions or during the intake process.

Here's a more detailed breakdown:

Manifestation of Problems: Presenting issues can take many forms, depending on the individual's unique situation. They can include feelings (such as sadness, fear, or anger), thoughts (such as excessive worry or suicidal ideation), behaviors (such as substance misuse or self-harm), or physiological symptoms (such as insomnia or lack of appetite). Presenting issues can also involve difficulties in specific areas of life, such as problems in relationships, struggles at work or school, or difficulties managing daily tasks.

Variation Across Individuals: The same mental health disorder can manifest differently in different individuals. For example, one person with depression might present with sadness and tearfulness, while another might present with irritability and loss of interest in previously enjoyed activities. Therefore, understanding the client's specific presenting issues is crucial for diagnosis and treatment.

Guide to Diagnosis and Treatment: The presenting issues can provide important clues for diagnosis. They can help the mental health professional identify possible mental health disorders and distinguish between different conditions. For example, if a client presents with excessive worry and restlessness, they might be diagnosed with generalized anxiety disorder. The presenting issues also guide the treatment process, helping the professional determine the most appropriate interventions and set relevant treatment goals.

Ongoing Assessment: While the presenting issues are typically identified at the start of therapy, they are not fixed and can change over time. The professional will continue to assess the client's issues throughout therapy, adjusting the treatment plan as needed.

It's worth noting the difference between "presenting issues" and "symptoms." While these terms are often used interchangeably, "symptoms" tends to be used more by professionals trained in biological, medical models, and implies a pathological, disease-oriented perspective. "Presenting issues," on the other hand, is a more neutral term that simply denotes the problems the client is experiencing, without necessarily implying a specific underlying disorder. This term can be more congruent with certain therapeutic approaches, such as humanistic or client-centered therapies, which focus on the individual's subjective experience rather than categorizing them into diagnostic labels.
""";

class _PresentingIssuesPageState extends State<PresentingIssuesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Presenting Issues"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Presenting Issues',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Types of Presenting Issues',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Anxiety can be a presenting issue of a client’s condition, sometimes can be a symptom of general anxiety disorder."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Traumas can be the source of a client’s mental distress."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Depression can be a presenting issue of a client’s condition or it can be a diagnosis."),
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
