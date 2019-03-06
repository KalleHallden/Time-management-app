
import 'Occurrence.dart';

class Task {
  // Name, Time, Occurrence
  String name;
  List<Occurrence> occurrence;

  void setNameOfTask(String nameOfTask) {
    this.name = nameOfTask;
  }
  String getNameOfTask() {
    return this.name;
  }

  void addTimeOfTask(List<String> daysPerWeek, List<DateTime> time, bool repeats) {
    for (Occurrence occurs in this.occurrence) {
      // Check whether this new occurrence collides with an already existing occurrence
      // and if it does not then add the new one to the list
      // otherwise some error messege should be displayed
    }
    this.occurrence.add(new Occurrence(daysPerWeek, time, repeats));
  }
}


































