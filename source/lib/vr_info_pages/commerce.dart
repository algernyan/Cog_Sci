import 'package:cog_sci_app/vr_info_pages/requirements.dart';
import 'package:cog_sci_app/vr_info_pages/vr_development_challenges.dart';
import 'package:flutter/material.dart';

class CommercePage extends StatefulWidget {
  const CommercePage({super.key, required this.title});
  final String title;

  @override
  State<CommercePage> createState() => _CommercePageState();
}

String description = """
In the context of VR/AR development, commerce refers to the business and financial aspects of creating, marketing, and selling VR/AR applications. It involves factors like funding, budgeting, monetization strategies, market research, and sales. These aspects can significantly influence the development process, shaping the resources available for development, the features and quality of the final product, and its success in the market.

""";

class _CommercePageState extends State<CommercePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Commerce"),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Commerce',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Aspects of Commerce',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Funding and Budgeting: The commercial side of development begins with securing funding for the project and setting a budget. Funding can come from various sources, such as investors, company funds, grants, or crowdfunding. The budget will determine the resources available for development, including the size of the team, the quality of assets, the development timeline, and the marketing efforts."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Market Research: Understanding the target audience and market trends is crucial for successful VR/AR development. Developers need to consider who their users will be, what kind of experiences they are seeking, what devices they are using, and what they are willing to pay. Market research can guide decisions about features, platforms, pricing, and marketing strategies."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Monetization Strategies: Developers must determine how they will generate revenue from their VR/AR application. This could involve a one-time purchase price, a subscription model, in-app purchases, advertising, or a combination of these. The chosen strategy can affect the design and features of the application. For example, a free-to-play game with in-app purchases might include optional premium content or power-ups."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Sales and Distribution: Commerce also involves selling and distributing the VR/AR application. Developers must consider where their application will be available (like the Oculus Store, Steam, or the App Store), the pricing strategy, and any potential partnerships with platform providers or retailers. They also need to plan for potential updates or expansions, which can provide additional revenue but also require ongoing resources."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "Marketing and Promotion: To ensure the success of the VR/AR application, developers need to plan and implement marketing and promotion strategies. This could involve creating promotional materials, reaching out to media outlets, attending industry events, or leveraging social media and influencers. The marketing strategy should align with the target audience and the unique selling points of the application."),
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text(
                      "User Feedback and Support: Post-launch, developers need to provide user support, handle transactions, and manage user feedback. This can involve setting up support channels, processing refunds or purchases, updating the application to fix bugs, and responding to reviews or feedback. User satisfaction can directly affect sales and reputation in the market."),
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
                            const DevelopmentChallengesPage(title: "test"),
                      ),
                    );
                  },
                  child: const Text('Development Challenges'),
                ),
              ],
            )));
  }
}
