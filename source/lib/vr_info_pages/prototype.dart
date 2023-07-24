import 'package:cog_sci_app/vr_info_pages/feedback.dart';
import 'package:cog_sci_app/vr_info_pages/user_interface.dart';
import 'package:cog_sci_app/vr_info_pages/vr_developers.dart';
import 'package:flutter/material.dart';

class PrototypePage extends StatefulWidget {
  const PrototypePage({super.key, required this.title});
  final String title;

  @override
  State<PrototypePage> createState() => _PrototypePageState();
}

String description = """
In the VR/AR development field, a prototype refers to an early model or version of the final application that is built to test and validate individual features, concepts, or designs. Prototyping is a crucial part of the development process, allowing developers to explore ideas, identify potential issues, and gather feedback before committing to the full-scale development. 

""";

class _PrototypePageState extends State<PrototypePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Prototype"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Prototype',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Types of Prototyping',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Concept Prototypes: At the early stages of the project, developers might create concept prototypes to explore and communicate ideas or to test feasibility. These prototypes might not contain functional features but can help to visualize the concept, define the scope of the project, or secure buy-in from stakeholders. For example, a concept prototype might be a simple 3D model or a storyboard of a VR environment."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Functional Prototypes: As the project progresses, developers create functional prototypes that incorporate the key features of the VR/AR application. These prototypes are used for unit testing, which involves checking individual features or components to ensure they work correctly and as expected. For example, a functional prototype for a VR game might allow testing of a specific gameplay mechanic or interaction."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Prototypes can also be used to test and refine the user experience (UX). UX prototypes might focus on aspects like navigation, user interface, or motion interactions, helping to ensure that the application is intuitive and enjoyable to use. User testing with these prototypes can provide valuable feedback and insights into user behavior and preferences."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Technical Prototypes: Developers might create technical prototypes to test the performance, compatibility, or stability of the VR/AR application. These prototypes can help to identify and address technical issues like frame rate drops, hardware compatibility issues, or bugs."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Iterative Prototyping: Prototyping in VR/AR development is typically an iterative process, meaning that developers create multiple versions of the prototype, each time improving, refining, and expanding based on the results of testing and feedback. This process helps to gradually shape the final product, reducing risks and ensuring that the application meets its requirements and provides a satisfying user experience."),
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
                            const UserInterfacePage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('User Interfance'),
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
                        builder: (context) => const FeedbackPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Feedback'),
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
                            const VrDevelopersPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('VR/AR Developer'),
                ),
              ],
            )));
  }
}
