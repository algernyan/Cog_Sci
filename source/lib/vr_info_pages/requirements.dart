import 'package:cog_sci_app/vr_info_pages/client.dart';
import 'package:cog_sci_app/vr_info_pages/commerce.dart';
import 'package:cog_sci_app/vr_info_pages/vr_developers.dart';
import 'package:cog_sci_app/vr_info_pages/vr_development_challenges.dart';
import 'package:flutter/material.dart';

class RequirementsPage extends StatefulWidget {
  const RequirementsPage({super.key, required this.title});
  final String title;

  @override
  State<RequirementsPage> createState() => _RequirementsPageState();
}

String description = """
In the context of VR/AR development, requirements refer to the set of specific functionalities, features, or conditions that a VR/AR application must fulfill to meet the goals of the project and satisfy the needs of the users or clients. Requirements are a crucial part of the development process, acting as a blueprint to guide design, development, and testing. They can be derived from a variety of sources, including market research, client specifications, or user feedback.

Requirements in VR/AR development are often documented in a requirements specification document, which serves as a reference for the development team, the client, and any other stakeholders. The requirements should be clear, precise, measurable, and testable, and they may be revised or updated as the project evolves. They play a key role in ensuring that the final product meets its intended purpose and provides value to its users.
""";

class _RequirementsPageState extends State<RequirementsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Requirements"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Requirements',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Types of Requirements',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Functional Requirements: These are the features or functions that the VR/AR application must perform. For example, a VR game might require a specific type of gameplay mechanic, or an AR training application might need to incorporate a certain learning module. Functional requirements define what the application will do and outline the specific tasks or activities that users will be able to perform."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Non-Functional Requirements: These define how the system should behave or the quality attributes it should possess. This can include aspects like performance requirements (like frame rate or load times), usability requirements (like user-friendliness or accessibility), hardware requirements (like compatibility with certain VR headsets), and security requirements (like data privacy or user authentication)."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "User Requirements: These are requirements based on the needs, expectations, and behaviors of the intended users. User requirements can be identified through user research methods like interviews, surveys, or usability testing. They might include aspects like ease of use, immersion, or specific features that users desire. User requirements are crucial for ensuring that the VR/AR application is user-centered and provides a satisfying user experience."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Client Requirements: If the VR/AR project is being developed for a specific client, there may be requirements specified by the client. These could be related to the client's business goals, brand guidelines, or specific use cases. For example, a VR application developed for a real estate company might need to incorporate the company's branding and allow virtual tours of properties."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Technical Requirements: These outline the technical constraints and specifications of the project. It includes the platforms the application will support (like specific VR/AR devices), the development tools to be used (like Unity or Unreal Engine), and any technical standards or protocols the application needs to adhere to."),
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
                            const DevelopmentChallengesPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Development Challenges'),
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
                  child: const Text('VR Developers'),
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
                        builder: (context) => const CommercePage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Commerce'),
                ),
              ],
            )));
  }
}
