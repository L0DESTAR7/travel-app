
enum FilterType{
  provName,
  maxSanct,
}


class Filter{

  FilterType type;
  String value;

  Filter({required this.value, required this.type});

  bool operator ==(covariant Filter other) {
    return (type == other.type && value == other.value);
  }



}