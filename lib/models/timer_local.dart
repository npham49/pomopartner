// ignore_for_file: public_member_api_docs, sort_constructors_first
class TimerLocal {
  String name;
  int minutes;

  TimerLocal(
    this.name,
    this.minutes,
  );

  TimerLocal copyWith({
    String? name,
    int? minutes,
  }) {
    return TimerLocal(
      name ?? this.name,
      minutes ?? this.minutes,
    );
  }
}
