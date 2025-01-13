abstract class FilterState {
  final int selectedIndex;
  final String activeFilter;
  final List<String> filterTags;

  const FilterState({
    required this.selectedIndex,
    required this.activeFilter,
    required this.filterTags,
  });
}

class FilterCurrentState extends FilterState {
  FilterCurrentState({
    required int selectedIndex,
    required String activeFilter,
    required List<String> filterTags,
  }) : super(
          selectedIndex: selectedIndex,
          activeFilter: activeFilter,
          filterTags: filterTags,
        );

  FilterCurrentState copyWith({
    int? selectedIndex,
    String? activeFilter,
    List<String>? filterTags,
  }) {
    return FilterCurrentState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      activeFilter: activeFilter ?? this.activeFilter,
      filterTags: filterTags ?? this.filterTags,
    );
  }
}
