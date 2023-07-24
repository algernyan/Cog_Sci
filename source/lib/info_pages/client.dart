import 'package:cog_sci_app/info_pages/culture.dart';
import 'package:cog_sci_app/info_pages/environment.dart';
import 'package:cog_sci_app/info_pages/experiences.dart';
import 'package:cog_sci_app/info_pages/presenting_issues.dart';
import 'package:cog_sci_app/info_pages/relationship.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({super.key, required this.title});
  final String title;

  @override
  State<ClientPage> createState() => _ClientPageState();
}

String description = """
In the context of the mental health field, the term "client" is often used to refer to the individuals who are seeking or receiving mental health services. This could include psychotherapy, counseling, assessment, consultation, or other psychological services.

It's important to note that the choice between "client" and "patient" can depend on various factors, including the professional's training and theoretical orientation, the setting in which the services are provided, and the preferences of the individuals receiving services. Some individuals might prefer to be referred to as "patients," while others might prefer "clients," and respecting these preferences is an important part of providing person-centered care.

Regardless of the terminology used, the central idea is that the individual is at the center of the mental health services. They are the focus of the evaluation, conceptualization, and treatment processes, and their needs and goals guide the professional's work.
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
                  'Context of Client',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Client as a Collaborator: The term 'client' emphasizes the collaborative and active role of the individual in the therapeutic process. It suggests that the individual is not just passively receiving treatment, but is actively working with the professional to understand and address their mental health needs. This reflects many therapeutic approaches, such as cognitive-behavioral therapy and humanistic therapy, that see the individual as an active agent in their own healing process."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Client in Various Contexts: The term 'client' can be used in a variety of contexts. For example, in a counseling or psychotherapy context, a client is someone who participates in therapy sessions to address personal, social, or psychological issues. In a consultation context, a client could be an individual, a group, or even an organization seeking expert advice or services. In an assessment context, a client is someone who undergoes psychological testing or evaluation."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "The terms 'client' and 'patient' are sometimes used interchangeably in the mental health field, but they can also have different connotations. The term 'patient' is often used by professionals who have a more medical approach to mental health, such as psychiatrists. This term tends to emphasize the illness or disorder and the professional's role in diagnosing and treating it. On the other hand, the term 'client' is often used by professionals who have a more holistic, person-centered approach to mental health, such as psychologists and counselors. This term tends to emphasize the individual's strengths, resources, and capacity for self-determination."),
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
                            const PresentingIssuesPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Presenting Issues'),
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
                            const RelationshipsPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Relationships'),
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
                            const EnviornmentPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Environment'),
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
                            const ExperiencesPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Experiences'),
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
                        builder: (context) => const CulturePage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Culture'),
                ),
              ],
            )));
  }
}
