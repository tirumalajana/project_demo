import 'package:flutter/material.dart';
import 'package:project_sample/components/app_button.dart';
import 'package:project_sample/components/textfrom_field.dart';
import 'package:project_sample/widgets/listview_widget.dart';

import '../models/answersoptions_model.dart';
import '../widgets/colum_widget.dart';

class Questionscreen extends StatefulWidget {
  const Questionscreen({super.key});

  @override
  State<Questionscreen> createState() => _QuestionscreenState();
}

class _QuestionscreenState extends State<Questionscreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Question screen"),
        backgroundColor: Colors.amber,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Columnwidget(),
              Listviewscreen(
                listData: [
                  AnswersOptions('Indian Ocean'),
                  AnswersOptions('Arctic Ocean'),
                  AnswersOptions('North Atlantic Ocean, '),
                  AnswersOptions('Pacific Ocean,'),
                  AnswersOptions('others'),
                ],
                questions:
                    "1.What is the name of the largest ocean in the world?",
              ),
              Listviewscreen(
                listData: [
                  AnswersOptions('Narendra Modi'),
                  AnswersOptions('Jawahar Lal Nehru'),
                  AnswersOptions('Gulzarilal Nanda'),
                  AnswersOptions('Lal Bahadur Shastri'),
                  AnswersOptions('others')
                ],
                questions: "2.Who is the current Prime Minister of India?",
              ),
              Listviewscreen(
                listData: [
                  AnswersOptions('15 August 1947'),
                  AnswersOptions('15 August 1957'),
                  AnswersOptions('15 August 1967'),
                  AnswersOptions('15 August 1937'),
                  AnswersOptions('others'),
                ],
                questions: "3.When was India’s independence day?",
              ),
              Listviewscreen(
                listData: [
                  AnswersOptions('10.4 trillion USD'),
                  AnswersOptions('10.3 trillion USD'),
                  AnswersOptions('11.4 trillion USD'),
                  AnswersOptions('11.3 trillion USD'),
                  AnswersOptions('others')
                ],
                questions: "4.What is the current GDP of India?",
              ),
              Listviewscreen(
                listData: [
                  AnswersOptions('New Delhi'),
                  AnswersOptions('Hyderabad'),
                  AnswersOptions('Bangalore'),
                  AnswersOptions('Kolkata'),
                  AnswersOptions('others'),
                ],
                questions: "5.What is the capital of India?",
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Flutter is Google’s Mobile SDK to build native iOS and Android apps from a single codebase. It was developed on December 4, 2018. When building applications with Flutter, everything is towards Widgets – the blocks with which the Flutter apps are built. The User Interface of the app comprises many simple widgets, each handling one particular job. That is why Flutter developers tend to think of their Flutter app as a tree of devices."),
              ),
              Textfromfieldscreen(),
              SizedBox(height: 10,),
              AppButtonscreen(
                  title: "Submit",
                  titleColor: Colors.black,
                  buttonBackgroundColor: Colors.blueAccent,
                  buttonBorderColor: Colors.black,
                  onPressed: () {}),
                  SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
