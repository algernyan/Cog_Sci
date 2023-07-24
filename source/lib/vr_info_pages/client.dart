import 'package:cog_sci_app/vr_info_pages/requirements.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({super.key, required this.title});
  final String title;

  @override
  State<ClientPage> createState() => _ClientPageState();
}

String description = """

In the VR/AR development field, the term "Client" denotes the individual, group, organization, or entity that initiates, funds, and oversees the creation of a VR/AR application or experience. The role of the client goes beyond merely commissioning the project; they are integral to defining its purpose, guiding its direction, and facilitating its execution.

""";

class _ClientPageState extends State<ClientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Client"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Client',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Aspects of Client',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Project Initiator: The client often serves as the initiator of a VR/AR project. They may have a concept or idea for an application that they wish to bring to fruition, or they may identify a need or opportunity that can be addressed through VR/AR technology. This could range from a company seeking a VR training tool for its employees, to a museum wanting an AR exhibit, to a game studio planning a new VR game."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Funding Source: The client is typically responsible for financing the project. This includes covering costs related to hardware, software, labor, testing, marketing, and other related expenses. The budget provided by the client will often shape the scope of the project and the resources that can be utilized during development."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Feedback Provider: Throughout the development process, the client often provides feedback and approves various stages of the project. They may review prototypes, test early versions, and suggest changes or improvements. This ongoing input helps ensure that the final product aligns with their vision and requirements."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Project Owner: Once the VR/AR application is completed, the client is typically the owner of the final product. They may use it within their organization, sell it to customers, or otherwise distribute and manage it as they see fit."),
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
                  onPressed: () {},
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
                            const RequirementsPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Requirements'),
                ),
              ],
            )));
  }
}
