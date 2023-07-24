import 'package:cog_sci_app/info_pages/psychologist.dart';
import 'package:flutter/material.dart';

class DiagnosisPage extends StatefulWidget {
  const DiagnosisPage({super.key, required this.title});
  final String title;

  @override
  State<DiagnosisPage> createState() => _DiagnosisPageState();
}

String description = """
In the mental health field, a diagnosis refers to the process of identifying a specific mental health disorder based on a client's symptoms and behaviors, and the classification of that disorder according to a recognized system, such as the Diagnostic and Statistical Manual of Mental Disorders (DSM) or the International Classification of Diseases (ICD).

Diagnosing a mental health disorder is a complex process that requires substantial expertise. It should be conducted by a qualified professional, such as a psychologist or psychiatrist, who is trained in the medical model and familiar with the DSM or ICD. The diagnosis plays a crucial role in guiding the treatment plan and can help the client understand their experiences and access appropriate support.

However, it's also important to note that a diagnosis is just one part of understanding a client's mental health. Comprehensive care also involves considering the client's strengths, resources, relationships, cultural background, and personal history, which may not be fully captured by a diagnostic label.
""";

class _DiagnosisPageState extends State<DiagnosisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Diagnosis"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Diagnosis',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Diagnosis Components',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Symptom Assessment: The first step in the diagnostic process involves a comprehensive assessment of the client's symptoms. This is usually done through a clinical interview and may be supplemented by structured diagnostic interviews or psychological testing. The mental health professional will gather information about the nature, severity, duration, and impact of the client's symptoms."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Comparison with Diagnostic Criteria: Once the professional has a clear understanding of the client's symptoms, these are then compared with the diagnostic criteria outlined in the DSM or ICD. These manuals provide specific criteria for each mental health disorder, including key symptoms, the required duration of symptoms, and the level of distress or impairment the symptoms must cause."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Ruling Out Other Factors: The professional also needs to rule out other factors that could be causing the symptoms. This could include medical conditions, medication side effects, or substance use. In some cases, the professional might need to consult with other healthcare providers or review medical records to rule out these factors."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Formulating the Diagnosis: Based on this information, the professional can then formulate the diagnosis. This involves identifying the specific mental health disorder (or disorders) that best explains the client's symptoms and situation. In some cases, the diagnosis might be 'provisional' if the professional is not yet certain but believes a particular disorder is the most likely explanation."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Communicating the Diagnosis: Finally, the professional communicates the diagnosis to the client. This involves explaining the nature of the disorder, the basis for the diagnosis, and the implications for treatment. The professional should provide this information in a clear and sensitive way, addressing any questions or concerns the client may have."),
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
