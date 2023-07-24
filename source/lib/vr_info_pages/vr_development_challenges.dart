import 'package:cog_sci_app/vr_info_pages/commerce.dart';
import 'package:cog_sci_app/vr_info_pages/physical_environment.dart';
import 'package:cog_sci_app/vr_info_pages/requirements.dart';
import 'package:cog_sci_app/vr_info_pages/user_interface.dart';
import 'package:flutter/material.dart';

class DevelopmentChallengesPage extends StatefulWidget {
  const DevelopmentChallengesPage({super.key, required this.title});
  final String title;

  @override
  State<DevelopmentChallengesPage> createState() =>
      _DevelopmentChallengesPageState();
}

String description = """
In the VR/AR development field, Development Challenges refer to the various obstacles, limitations, or difficulties that can hinder the progress of a project, prevent it from reaching its objectives, or affect its quality or feasibility. These challenges can span various aspects, including financial, conceptual, technical, and logistical issues.

""";

class _DevelopmentChallengesPageState extends State<DevelopmentChallengesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Development Challenges"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Development Challenges',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Types of Development Challenges',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Monetary/Financial Challenges: VR/AR development can be expensive, involving costs for hardware, software, labor, and other resources. Financial limitations can constrain the scale of the project, the quality of the assets, or the timeline for development. They can also affect the ability to carry out thorough testing, marketing, or post-launch support. Securing adequate funding and managing the budget effectively are critical challenges in VR/AR development."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Idealistic/Conceptual Challenges: Transforming ambitious ideas into a functional VR/AR application can be a significant challenge. Developers may face difficulties in designing experiences that are immersive, intuitive, and engaging, particularly for new or complex concepts. User experience (UX) design can be especially challenging in VR/AR due to the need to consider 3D spaces, user comfort, and motion interactions."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Technological/Technical Challenges: VR/AR technology is still evolving, and developers often have to navigate limitations in hardware performance, software capabilities, or development tools. This can include issues like ensuring high frame rates for a smooth experience, implementing accurate motion tracking, or overcoming hardware constraints like limited battery life or field of view. Developers also need to address technical challenges related to cross-platform compatibility, scalability, and security."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Logistical/Operational Challenges: Managing the development process can present various challenges. Coordinating a multidisciplinary team, meeting project deadlines, and managing scope creep (the project becoming larger than originally planned) are common issues. There may also be logistical challenges related to distributing the application, providing user support, or handling updates."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "User-Related Challenges: Understanding user needs and behaviors in VR/AR can be challenging due to the relatively new and diverse user base. Developers need to consider factors like user comfort (to avoid issues like motion sickness), accessibility for users with different abilities, and designing for different levels of user familiarity with VR/AR."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Legal/Regulatory Challenges: Developers need to navigate any legal or regulatory requirements related to their application. This could include complying with data privacy laws if the application collects user data, addressing intellectual property issues, or meeting content regulations for different regions."),
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
                            const RequirementsPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Requirements'),
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
                  child: const Text('User Interface'),
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
