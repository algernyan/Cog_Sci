import 'package:cog_sci_app/vr_info_pages/feedback.dart';
import 'package:cog_sci_app/vr_info_pages/physical_environment.dart';
import 'package:cog_sci_app/vr_info_pages/requirements.dart';
import 'package:flutter/material.dart';

class UserInterfacePage extends StatefulWidget {
  const UserInterfacePage({super.key, required this.title});
  final String title;

  @override
  State<UserInterfacePage> createState() => _UserInterfacePageState();
}

String description = """
In the context of VR/AR development, the User Interface (UI) refers to the set of visual elements, controls, and interactions through which users communicate with the virtual or augmented reality application. Given the immersive and interactive nature of VR/AR, designing an effective user interface can be a unique challenge, requiring consideration of three-dimensional space, user comfort, and intuitive interaction. 

""";

class _UserInterfacePageState extends State<UserInterfacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("User Interface"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'User Interface',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Components of User Interface',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Visual Elements: The UI includes all the visual components that users see within the VR/AR environment. This could include menus, icons, buttons, labels, indicators (like health bars or progress meters in a game), and virtual objects that users can interact with. The design of these elements needs to be clear and readable, aesthetically pleasing, and consistent with the overall design and theme of the application."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Interaction Elements: In VR/AR, the user interface also encompasses the ways in which users interact with these visual elements. This could involve a range of interaction methods, such as gaze-based selection (where users look at an object to select it), gesture controls (using hand or body movements), voice commands, or physical controls (like buttons or triggers on a VR controller)."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Spatial UI: Unlike traditional 2D interfaces, VR/AR interfaces exist in a three-dimensional space. This means that UI elements can be placed anywhere in the environment, whether fixed in the user's field of view or integrated into the virtual world. Spatial UI design requires careful consideration of factors like depth perception, spatial audio, and user comfort."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Contextual UI: In VR/AR, user interfaces often need to be contextual, changing based on the user's location, gaze direction, or current task. For example, a menu might only appear when the user looks at a certain object, or the available interactions might change depending on what the user is holding."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Non-Verbal Feedback: The UI can also provide non-verbal feedback to the user, enhancing immersion and interaction. This can include visual effects (like highlighting an object when the user looks at it), haptic feedback (like vibration in a controller), or spatial audio cues."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Accessibility: VR/AR UIs need to be designed with accessibility in mind, considering users with different abilities and preferences. This can involve options for adjusting text size, contrast, or control methods, or features like subtitles or descriptive audio for users with visual or hearing impairments."),
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
                            const PhysicalEnvironmentPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Physical Environment'),
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
                        builder: (context) => const FeedbackPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Feedback'),
                ),
              ],
            )));
  }
}
