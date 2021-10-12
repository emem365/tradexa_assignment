import 'dart:convert';

class Rating {
  String source;
  String value;
  Rating({
    required this.source,
    required this.value,
  });

  Rating copyWith({
    String? source,
    String? value,
  }) {
    return Rating(
      source: source ?? this.source,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Source': source,
      'Value': value,
    };
  }

  factory Rating.fromMap(Map<String, dynamic> map) {
    return Rating(
      source: map['Source'],
      value: map['Value'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Rating.fromJson(String source) => Rating.fromMap(json.decode(source));

  @override
  String toString() => 'Rating(source: $source, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Rating &&
      other.source == source &&
      other.value == value;
  }

  @override
  int get hashCode => source.hashCode ^ value.hashCode;
}
