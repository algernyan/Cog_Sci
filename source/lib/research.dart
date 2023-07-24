import 'package:cog_sci_app/research_preview_card.dart';
import 'package:flutter/material.dart';

final List<ResearchPreview> entries = <ResearchPreview>[
  const ResearchPreview(
      id: 1,
      email:
          "https://www.thelancet.com/pdfs/journals/lanpsy/PIIS2215-0366(17)30513-8.pdf",
      subject:
          "The Lancet Psychiatry Commission on psychological treatments research in tomorrow's science",
      time: "2018",
      message:
          "Psychological treatments occupy an important place in evidence-based mental health treatments. Now is an exciting time to fuel treatment research: a pressing demand for improvements is poised alongside new opportunities from closer links with sister scientific and clinical disciplines. "),
  const ResearchPreview(
      id: 2,
      email: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5421394/",
      subject:
          "The use of virtual reality technology in the treatment of anxiety and other psychiatric disorders",
      time: "2017",
      message:
          "Virtual reality, or VR, allows users to experience a sense of presence in a computer-generated three-dimensional environment. Sensory information is delivered through a head mounted display and specialized interface devices. "),
  const ResearchPreview(
      id: 3,
      email: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7500920/",
      subject: "Virtual Reality Therapy in Clinical Psychology",
      time: "2019",
      message:
          "Virtual reality therapy came into existence in the mainstream of psychology in the last two decades. Virtual reality is a technology, a communication interface, and an artificial experience.")
];

Widget buildResearchList(BuildContext context) {
  return ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        child: entries[index],
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}
