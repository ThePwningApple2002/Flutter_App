import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'text_box.dart';
import 'package:aplikacija2/bloc/filter_bloc/bloc.dart';

class Locationtags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              state.filterTags.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                child: ElevatedButton(
                  onPressed: () {
                    context.read<FilterBloc>().add(
                      ApplyFilterEvent(state.filterTags[index], index)
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: state.selectedIndex == index
                        ? const Color.fromARGB(255, 241, 241, 241)
                        : Colors.white,
                  ),
                  child: state.selectedIndex == index
                      ? Textbox(
                          text: state.filterTags[index],
                          size: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                        )
                      : Textbox(
                          text: state.filterTags[index],
                          size: 14,
                          color: const Color.fromARGB(255, 163, 163, 163),
                        ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
