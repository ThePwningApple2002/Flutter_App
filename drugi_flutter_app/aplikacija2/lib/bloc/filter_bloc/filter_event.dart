// filter_event.dart
abstract class FilterEvent {}

class ApplyFilterEvent extends FilterEvent {
  final String filter;
  final int index;
  
  ApplyFilterEvent(this.filter, this.index);
}
