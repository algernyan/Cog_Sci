import 'package:cog_sci_app/info_page.dart';
import 'package:cog_sci_app/info_pages/Evaluation.dart';
import 'package:cog_sci_app/info_pages/cbt.dart';
import 'package:cog_sci_app/info_pages/client.dart';
import 'package:cog_sci_app/vr_info_pages/client.dart' as vr;
import 'package:cog_sci_app/info_pages/conceptualization.dart';
import 'package:cog_sci_app/info_pages/culture.dart';
import 'package:cog_sci_app/info_pages/diagnosis.dart';
import 'package:cog_sci_app/info_pages/environment.dart';
import 'package:cog_sci_app/info_pages/experiences.dart';
import 'package:cog_sci_app/info_pages/goals.dart';
import 'package:cog_sci_app/info_pages/interpersonal_work.dart';
import 'package:cog_sci_app/info_pages/intervention.dart';
import 'package:cog_sci_app/info_pages/meditation.dart';
import 'package:cog_sci_app/info_pages/presenting_issues.dart';
import 'package:cog_sci_app/info_pages/psychoeducation.dart';
import 'package:cog_sci_app/info_pages/psychologist.dart';
import 'package:cog_sci_app/info_pages/relationship.dart';
import 'package:cog_sci_app/info_pages/treatment.dart';
import 'package:cog_sci_app/vr_info_pages/commerce.dart';
import 'package:cog_sci_app/vr_info_pages/feedback.dart';
import 'package:cog_sci_app/vr_info_pages/physical_environment.dart';
import 'package:cog_sci_app/vr_info_pages/prototype.dart';
import 'package:cog_sci_app/vr_info_pages/requirements.dart';
import 'package:cog_sci_app/vr_info_pages/user_interface.dart';
import 'package:cog_sci_app/vr_info_pages/vr_developers.dart';
import 'package:cog_sci_app/vr_info_pages/vr_development_challenges.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class KnowledgePreview extends StatelessWidget {
  const KnowledgePreview({
    required this.id,
    required this.email,
    required this.subject,
    required this.time,
    required this.message,
  });

  final int id;
  final String email;
  final String subject;
  final String time;
  final String message;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {
        // html.window.open(time, "_blank");
        if (email.toLowerCase() == "psychologist") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const PsychologistPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "evaluation") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const EvaluationPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "diagnosis") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const DiagnosisPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "conceptualization") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ConceptualizationPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "cbt") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CBTPage(title: "test"),
            ),
          );
        } else if (email == "client") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ClientPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "culture") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CulturePage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "diagnosis") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const DiagnosisPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "environment") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const EnviornmentPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "evaluation") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const EvaluationPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "experiences") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ExperiencesPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "goals") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const GoalsPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "interpersonal work") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const InterpersonalWorkPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "intervention") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const InterventionPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "meditation") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const MeditationPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "presenting issues") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const PresentingIssuesPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "psychoeducation") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const PsychoeducationPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "relationship") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const RelationshipsPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "treatment") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const TreatmentPage(title: "test"),
            ),
          );
        } else if (email == "Client") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const vr.ClientPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "commerce") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CommercePage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "feedback") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const FeedbackPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "physical environment") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  const PhysicalEnvironmentPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "prototype") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const PrototypePage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "requirements") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const RequirementsPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "user interface") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const UserInterfacePage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "vr/ar developer") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const VrDevelopersPage(title: "test"),
            ),
          );
        } else if (email.toLowerCase() == "vr development challenges") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  const DevelopmentChallengesPage(title: "test"),
            ),
          );
        }
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(maxHeight: constraints.maxHeight),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '',
                              style: textTheme.bodySmall,
                            ),
                            const SizedBox(height: 4),
                            Text(subject, style: textTheme.headlineSmall),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: 20,
                    ),
                    child: Text(
                      message,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
