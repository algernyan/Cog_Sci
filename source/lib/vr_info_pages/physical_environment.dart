import 'package:cog_sci_app/vr_info_pages/feedback.dart';
import 'package:cog_sci_app/vr_info_pages/requirements.dart';
import 'package:cog_sci_app/vr_info_pages/user_interface.dart';
import 'package:flutter/material.dart';

class PhysicalEnvironmentPage extends StatefulWidget {
  const PhysicalEnvironmentPage({super.key, required this.title});
  final String title;

  @override
  State<PhysicalEnvironmentPage> createState() =>
      _PhysicalEnvironmentPageState();
}

String description = """
In the VR/AR development field, the term "Physical Environment" refers to the actual, tangible space in which a user interacts with the virtual or augmented reality application. This environment includes the physical parameters and conditions within which the VR/AR experience unfolds. It's not just the room or space the user is in, but also includes aspects like furniture, walls, temperature, lighting, and any potential obstructions or hazards.
""";

class _PhysicalEnvironmentPageState extends State<PhysicalEnvironmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Physical Environment"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Physical Environment',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Impact of Physical Environment',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Realism and Immersion: The physical environment plays a significant role in creating a sense of realism and immersion in VR/AR experiences. For instance, aligning virtual objects with real-world counterparts (like a virtual table overlaying a real one in AR) can enhance the sense of presence. Similarly, in VR, if a user can physically walk around in a space, it can add to the feeling of 'being there' in the virtual world."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Interaction and Safety: The physical environment directly impacts how users interact with the VR/AR experience. Developers need to consider the size and layout of the physical space when designing interactions. For instance, a room-scale VR game would require a certain amount of unobstructed space for safe movement. Developers often implement systems to alert users if they're nearing physical boundaries (like the 'Guardian' system in Oculus devices)."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Sensory Feedback: Physical environments can also be used to provide additional sensory feedback, amplifying immersion. For example, heat lamps could be used in a desert VR scene, or a physical object could be mapped to a virtual one, so when users 'touch' something in VR, they feel a real object."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Hardware Considerations: The physical environment can also affect hardware requirements and performance. For instance, AR applications may require robust light detection and ranging (LIDAR) capabilities to accurately map the environment, and VR applications may require a certain amount of open space for full motion tracking."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Mixed Reality (MR) Applications: In mixed reality applications, which combine elements of both VR and AR, the physical environment becomes even more crucial. MR applications often involve real-time blending of real and virtual elements, meaning the physical space must be carefully considered and accurately mapped."),
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
