

class Occurrence {
  List<String> daysPerWeek;
  List<DateTime> time;
  bool repeats = false;

  Occurrence(List<String> daysePerWeek, List<DateTime> time, bool repeats) {
    this.daysPerWeek = daysePerWeek;
    this.time = time;
    this.repeats = repeats;
  }
}