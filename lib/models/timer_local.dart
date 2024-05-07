// ignore_for_file: public_member_api_docs, sort_constructors_first
class TimerLocal {
  int? id;
  String name;
  int minutes;

  TimerLocal(
    this.id,
    this.name,
    this.minutes,
  );

  factory TimerLocal.fromJson(Map<String, dynamic> json) {
    return TimerLocal(
      json['id'] as int?,
      json['name'] as String,
      json['minutes'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'minutes': minutes,
    };
  }

  TimerLocal copyWith({
    String? name,
    int? minutes,
  }) {
    return TimerLocal(
      id,
      name ?? this.name,
      minutes ?? this.minutes,
    );
  }
}
