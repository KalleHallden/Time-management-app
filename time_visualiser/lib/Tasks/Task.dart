
import 'Occurrence.dart';

class Task {
  // Name, Time, Occurrence
  String name;
  List<Occurrence> occurrence;

  Task(String name) {
    this.name = name;
    occurrence = [];
  }

  void setNameOfTask(String nameOfTask) {
    this.name = nameOfTask;
  }
  String getNameOfTask() {
    return this.name;
  }

  void removeOccurrenceByDay(int day) {
    for (Occurrence occurs in this.occurrence) {
      if (occurs.daysPerWeek.contains(day)) {
        occurs.daysPerWeek.remove(day);
      }
    }
  }

  void addTimeOfTask(List<int> daysPerWeek, List<DateTime> time, bool repeats) {
    for (Occurrence occurs in this.occurrence) {
      // Check whether this new occurrence collides with an already existing occurrence
      // and if it does not then add the new one to the list
      // otherwise some error messege should be displayed
    }
    this.occurrence.add(new Occurrence(daysPerWeek, time, repeats));
  }
}


































