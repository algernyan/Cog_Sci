import 'package:cog_sci_app/info_pages/client.dart';
import 'package:cog_sci_app/info_pages/psychologist.dart';
import 'package:flutter/material.dart';

class EnviornmentPage extends StatefulWidget {
  const EnviornmentPage({super.key, required this.title});
  final String title;

  @override
  State<EnviornmentPage> createState() => _EnviornmentPageState();
}

String description = """
In the mental health field, the term "environment" is used in a broad sense to refer to the surrounding conditions or influences in which a person lives and operates. This includes both the physical and social aspects of their surroundings.

Understanding the environment is a crucial part of a mental health evaluation because it can help identify external factors that may be contributing to a client's mental health challenges. Additionally, it can highlight areas where changes could support a client's recovery or ongoing mental well-being. A mental health professional might work with a client to develop coping strategies for managing environmental stressors, or they might advocate for changes in the client's environment (like linking them to social services, suggesting modifications at school or work, or promoting community mental health resources).
""";

class _EnviornmentPageState extends State<EnviornmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Enviornment"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enviornment',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Types of Enviornments',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Physical Environment: The physical aspects of a client's environment include their immediate surroundings—where and how they live. This could be their home, neighborhood, town, or city. The quality of housing, the presence of green spaces, access to amenities, noise levels, pollution, and general safety can all impact a person's mental health. For instance, overcrowded or unsafe living conditions can contribute to stress, anxiety, or depression."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Social Environment: This aspect of environment refers to the people and social contexts in which a person interacts. It includes family, friends, colleagues, and broader community ties. It also includes the culture one lives in and societal norms one interacts with. The quality of these relationships, the level of social support, experiences of belonging or isolation, exposure to conflict or violence, and cultural attitudes towards mental health can significantly affect a person's well-being."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Work or School Environment: This refers to the conditions in a person's workplace or school, including the physical conditions, work or academic pressures, relationships with colleagues or classmates, and the organizational culture. High stress, poor work-life balance, bullying, or lack of support can impact mental health."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Socioeconomic Environment: This includes factors like income, education, and employment status, which can have direct and indirect impacts on mental health. Financial stress, job insecurity, or limited access to resources can contribute to mental health issues."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Digital Environment: In today's increasingly connected world, the digital environment—such as social media use and online communities—can also affect mental health, both positively (through increased access to support and information) and negatively (through cyberbullying or the pressure of unrealistic comparisons)."),
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
