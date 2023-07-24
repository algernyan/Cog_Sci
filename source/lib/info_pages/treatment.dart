import 'package:cog_sci_app/info_pages/psychologist.dart';
import 'package:flutter/material.dart';

class TreatmentPage extends StatefulWidget {
  const TreatmentPage({super.key, required this.title});
  final String title;

  @override
  State<TreatmentPage> createState() => _TreatmentPageState();
}

String description = """
In the mental health field, "treatment" refers to the comprehensive approach designed to alleviate symptoms, reduce distress, improve quality of life, and promote adaptive functioning for individuals diagnosed with a mental health disorder or experiencing psychological difficulties. Treatment involves a variety of components that can be broadly categorized into psychological interventions and biological treatments.

While interventions often focus on cognitive and behavioral strategies for managing mental health issues, the term "treatment" encompasses a broader range of strategies, including biological approaches. A treatment plan can include one or both of these components, depending on the client's needs.

For example, a client with severe depression might receive a combined treatment involving both medication (a biological treatment) to manage their mood and cognitive-behavioral therapy (an intervention) to help them develop healthier thought patterns and coping skills. The two components work together to treat the client's symptoms from multiple angles.

In summary, an intervention can be seen as a subset of treatment, focusing specifically on the cognitive and behavioral strategies employed to help a client. Treatment is a broader term that also encompasses biological treatments, and it represents the comprehensive plan to address a client's mental health issues. Both are integral parts of the mental health care process, and the terms are sometimes used interchangeably, even though they have distinct meanings.
""";

class _TreatmentPageState extends State<TreatmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Treatment"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Treatment',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Treatment Components',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Psychological Interventions: These are the methods that mental health professionals use to help clients modify their thoughts, feelings, and behaviors. They are based on theories of human behavior and are often referred to as 'interventions.' Examples include psychotherapy (talk therapy), cognitive-behavioral therapy (CBT), psychodynamic therapy, mindfulness-based interventions, and other therapeutic techniques. The type of intervention chosen typically depends on the nature of the client's issues, the professional's theoretical orientation, and the empirical evidence supporting different approaches."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Biological Treatments: These are treatments that address the biological factors contributing to mental health issues. They often involve the use of medications, such as antidepressants, antianxiety medications, mood stabilizers, or antipsychotics. These treatments are usually prescribed by psychiatrists, who are medical doctors specialized in mental health. Biological treatments can also include other medical procedures, such as electroconvulsive therapy (ECT) for severe depression."),
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
