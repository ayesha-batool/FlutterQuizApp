import 'package:ayesha/pallete.dart';
import 'package:flutter/material.dart';

// stateful widget= data can change during the runtime of the app
// stateless widget= data remain same during the runtime of the app
class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key});

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}
// "_" is to make variablle private

class _StudentDetailsState extends State<StudentDetails> {
  int numberOfStudents = 0; // private variable

  // int x; here x is public
  @override //overcwrite build of parent with child class
  // build fun is mandatory
  void initState() {
    super.initState();
    numberOfStudents++;
  }

  @override
  // init func before build func
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor(),
      appBar: AppBar(
        title: Text("Student Details"),
        centerTitle: true,
        backgroundColor: Pallete.backgroundColor(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/images/virtualAssistant.png"),
                height: 200,
                width: 200,
              ),
              Divider(
                height: 40,
                color: Pallete.whiteColor,
                thickness: 1,
                indent: 100,
                endIndent: 100,
              ),
              Text(
                "Ayesha Batool",
                style: TextStyle(
                  color: Pallete.highlightColor,
                  fontSize: 20,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Age: 20",
                style: TextStyle(color: Pallete.whiteColor, letterSpacing: 2.0),
              ),
              Text(
                "Course: B.Tech CSE",
                style: TextStyle(color: Pallete.whiteColor, letterSpacing: 2.0),
              ),
              Text(
                "College: VIT Bhopal",
                style: TextStyle(color: Pallete.whiteColor, letterSpacing: 2.0),
              ),
              Text(
                "Number of students:$numberOfStudents",
                style: TextStyle(color: Pallete.whiteColor, letterSpacing: 2.0),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numberOfStudents++;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add, color: Pallete.whiteColor),
      ),
    );
  }
}
