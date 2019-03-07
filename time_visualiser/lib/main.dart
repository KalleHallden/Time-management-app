import 'package:flutter/material.dart';
import 'package:time_visualiser/User/User.dart';
import 'WeekView.dart';

void main() => runApp(WeekView()); 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Time management app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static User theUser = new User();
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    TextEditingController taskNameController = new TextEditingController();
    String texts = "";
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            children: <Widget>[
              Text("Add a Task"),
              TextField(
                controller: taskNameController,
                onChanged: (text) {
                  texts = text;
                },
                onEditingComplete: () {
                  taskNameController.text = texts;
                },
                //textAlign: TextAlign.center,
              ),
              FlatButton(
                color: Colors.blue,
                child: Text("Add Task"),
                onPressed: () {
                  if (taskNameController.text.length > 1) {
                    addTaskName(taskNameController.text);
                  }
                },
              )
            ],
          )
        )
    )
   );
  }

  void addTaskName(String name) {
    // Should show a dialog or new window where one can specify the occurrence
    print("This is the name: " + name);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondRoute(name)),
    );
  }
}
class SecondRoute extends StatefulWidget {
  String name;
  SecondRoute(String name) {
    this.name = name;
  }
  @override
  _SecondRouteState createState() => _SecondRouteState(name);
}

class _SecondRouteState extends State<SecondRoute> {
  String taskName;
  bool monday = false;
  bool tuesday = false;
  bool wednesday = false;
  bool thursday = false;
  bool friday = false;
  bool saturday = false;
  bool sunday = false;
  List<int> days = [];
  Future<TimeOfDay> timeFrom;
  Future<TimeOfDay> timeTo;
  bool repeats = false;
  _SecondRouteState(String name) {
    this.taskName = name;
  }
  TextStyle weedayStyle = TextStyle(fontFamily: 'Avenir', fontSize: 10, fontWeight: FontWeight.bold);
  TextStyle titles = TextStyle(fontFamily: 'Avenir', fontSize: 20, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(taskName),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Repeats: ', style: titles,),
            Container(
              margin: EdgeInsets.only(top: 0, bottom: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text('Monday', style: weedayStyle,),
                          Checkbox(
                            value: monday,
                            onChanged: (value) {
                              if (!this.days.contains(0)) {
                                this.days.add(0);
                              } else {
                                this.days.remove(0);
                              }
                              setState(() {
                                monday = value;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text('Tuesday', style: weedayStyle,),
                          Checkbox(
                            value: tuesday,
                            onChanged: (value) {
                              if (!this.days.contains(1)) {
                                this.days.add(1);
                              } else {
                                this.days.remove(1);
                              }
                              setState(() {
                                tuesday = value;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text('Wednesday', style: weedayStyle,),
                          Checkbox(
                            value: wednesday,
                            onChanged: (value) {
                              if (!this.days.contains(2)) {
                                this.days.add(2);
                              } else {
                                this.days.remove(2);
                              }
                              setState(() {
                                wednesday = value;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text('Thursday', style: weedayStyle,),
                          Checkbox(
                            value: thursday,
                            onChanged: (value) {
                              if (!this.days.contains(3)) {
                                this.days.add(3);
                              } else {
                                this.days.remove(3);
                              }
                              setState(() {
                                thursday = value;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text('Friday', style: weedayStyle,),
                          Checkbox(
                            value: friday,
                            onChanged: (value) {
                              if (!this.days.contains(4)) {
                                this.days.add(4);
                              } else {
                                this.days.remove(4);
                              }
                              setState(() {
                                friday = value;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text('Saturday', style: weedayStyle,),
                          Checkbox(
                            value: saturday,
                            onChanged: (value) {
                              if (!this.days.contains(5)) {
                                this.days.add(5);
                              } else {
                                this.days.remove(5);
                              }
                              setState(() {
                                saturday = value;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text('Sunday', style: weedayStyle,),
                          Checkbox(
                            value: sunday,
                            onChanged: (value) {
                              if (!this.days.contains(6)) {
                                this.days.add(6);
                              } else {
                                this.days.remove(6);
                              }
                              setState(() {
                                sunday = value;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.blue
                ),
              child: Builder(
            builder: (context) => FlatButton(
                  onPressed: () {
                    timeFrom = showTimePicker(context: context, initialTime: TimeOfDay.now());
                  },
                  child: Text("Set Start time", style: TextStyle(fontFamily: 'Avenir', fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ), 
                Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.blue
                ),
                  child: Builder(
                  builder: (context) => FlatButton(
                  onPressed: () {
                    timeTo = showTimePicker(context: context, initialTime: TimeOfDay.now());
                  },
                  child: Text("Set End time", style: TextStyle(fontFamily: 'Avenir', fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: () {
                if (this.days.length > 0 && this.timeFrom != null && this.timeTo != null) {
                  createTask();
                  Navigator.pop(context);
                }
              },
              child: Text('Create Task', style: TextStyle(fontFamily: 'Avenir', fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
              ),
          ],
        ),
        )
      )
    );
  }

  void createTask() async {
    for (int day in days) {
      print(day);
    }
    DateTime rightNow = new DateTime.now();
    DateTime timeStart;
    DateTime timeEnd;

    await timeFrom.then((value) => timeStart = new DateTime(rightNow.year, rightNow.month, rightNow.day, value.hour, value.minute));
    print(timeStart.toString());
    await timeTo.then((value) => timeEnd = new DateTime(rightNow.year, rightNow.month, rightNow.day, value.hour, value.minute));
    print(timeEnd.toString());
    List<DateTime> times = [];
    times.add(timeStart);
    times.add(timeEnd);
    MyHomePage.theUser.createTask(this.taskName, this.days, times, this.repeats);
    Navigator.of(context).pop();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WeekView()),
    );
  }
}
