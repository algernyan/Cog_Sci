import 'package:cog_sci_app/vr_info_pages/client.dart';
import 'package:cog_sci_app/vr_info_pages/physical_environment.dart';
import 'package:cog_sci_app/vr_info_pages/user_interface.dart';
import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key, required this.title});
  final String title;

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

String description = """

In the VR/AR development field, feedback is a vital process that involves the systematic evaluation and critique of the VR/AR application's functionality, performance, and user experience. The aim of this process is to ensure that the application not only works as intended, but also meets all the defined requirements, and delivers an optimal user experience.

""";

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Feedback"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Feedback',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Types of Feedback',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Functionality Feedback: One of the primary components of feedback in VR/AR development is assessing the application's functionality. This refers to whether the application does what it's supposed to do, if all its features and components work correctly, and if it fulfills all the requirements defined in the project brief. It involves testing all aspects of the application, from navigation controls to interaction mechanisms, from visual output to spatial audio, and reporting any issues or malfunctions that are discovered."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Performance Feedback: This pertains to how well the VR/AR application performs. Performance factors could include the application's speed, response time, stability, and resource consumption. It could also involve testing how the application performs under different conditions or on different hardware configurations, ensuring it meets or exceeds certain benchmarks or standards, and identifying any performance issues or bottlenecks."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "User Experience (UX) Feedback: Feedback on the user experience involves assessing how the user interacts with the VR/AR application and how satisfying and engaging that interaction is. UX feedback can include elements like ease of use, intuitiveness, immersion, comfort, enjoyment, and overall user satisfaction. This can involve user testing sessions, where real users interact with the application and provide feedback on their experience."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Defect Identification and Reporting: A key aspect of feedback in VR/AR development involves identifying and reporting any defects, bugs, or issues with the application. This can include anything from minor glitches or errors to major issues that prevent the application from working correctly or as intended. Once identified, these defects are typically reported to the development team for rectification."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Requirements Validation: Feedback also involves verifying that the VR/AR application meets all the defined requirements. This can include functional requirements (what the application should do), performance requirements (how well it should do it), and user requirements (how it should interact with the user). This validation process helps ensure that the application fulfills its intended purpose and meets the needs and expectations of the client and users."),
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
                        builder: (context) =>
                            const PhysicalEnvironmentPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Physical Environment'),
                ),
              ],
            )));
  }
}
