import 'package:cog_sci_app/vr_info_pages/prototype.dart';
import 'package:cog_sci_app/vr_info_pages/requirements.dart';
import 'package:cog_sci_app/vr_info_pages/user_interface.dart';
import 'package:cog_sci_app/vr_info_pages/vr_development_challenges.dart';
import 'package:flutter/material.dart';

class VrDevelopersPage extends StatefulWidget {
  const VrDevelopersPage({super.key, required this.title});
  final String title;

  @override
  State<VrDevelopersPage> createState() => _VrDevelopersPageState();
}

String description = """
In the field of virtual reality (VR) and augmented reality (AR), VR/AR developers are professionals who design, build, and implement software solutions for VR and AR applications. They play a crucial role in turning conceptual ideas into interactive, immersive experiences. VR/AR development is a multidisciplinary field and involves a variety of roles and expertise.

""";

class _VrDevelopersPageState extends State<VrDevelopersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("VR/AR Developers"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'VR/AR Developers',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Roles of VR/AR Developers',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Programmers/Coders: These are the individuals who write the actual code that makes the VR/AR software function. They work with various programming languages and development platforms, such as Unity or Unreal Engine, to create the foundational structures of the VR/AR application. Their tasks can range from implementing game mechanics to integrating hardware capabilities (like motion tracking or gesture recognition) to optimizing performance."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Designers: VR/AR designers focus on the look and feel of the VR/AR application. This can include user interface (UI) designers, who create the visual elements that users interact with (like buttons or menus), and user experience (UX) designers, who ensure that the application is intuitive and enjoyable to use. VR/AR designers also include 3D modelers and artists who create the virtual environments and assets."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Project Managers: Project managers oversee the development process, coordinating between different team members, setting timelines, and ensuring that the project stays on track and within budget. They might also liaise with clients, stakeholders, or other teams."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Technical Artists: A technical artist acts as a bridge between the programmers and artists, ensuring that the visual assets can run smoothly on the development platform. They might be responsible for tasks like shader programming, rigging, or implementing visual effects."),
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
                            const PrototypePage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Prototype'),
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
                            const DevelopmentChallengesPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('VR Development Challenges'),
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
              ],
            )));
  }
}
