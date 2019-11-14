class Instrument {
  const Instrument({this.name});
  final String name;
}

typedef void InstrumentsListCallback(Instrument instrument, bool isSelected);
