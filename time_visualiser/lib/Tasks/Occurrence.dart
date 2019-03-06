

class Occurrence {
  List<int> daysPerWeek;
  List<DateTime> time;
  bool repeats = false;

  Occurrence(List<int> daysePerWeek, List<DateTime> time, bool repeats) {
    this.daysPerWeek = daysePerWeek;
    this.time = time;
    this.repeats = repeats;
  }
}