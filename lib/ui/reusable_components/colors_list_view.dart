import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/ui/reusable_components/color_container_widget.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key, this.selectedIndex});
  final int? selectedIndex;

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  late int currentIndex;
  List<Color> colorsList = [
    const Color(0xffAc3931),
    const Color(0xffE5D352),
    Colors.blue,
    const Color(0xffFFCC80),
    const Color(0xff537D8D),
    Colors.green,
    const Color(0xff482C3D),
  ];

  @override
  void initState() {
    currentIndex = widget.selectedIndex ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: 40.r,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ColorContainerWidget(
          currentIndex: currentIndex,
          listIndex: index,
          color: colorsList[index],
          onTap: () {
            currentIndex = index;
            setState(() {});
            BlocProvider.of<ReadNoteCubit>(context).currentColor =
                colorsList[index];
            BlocProvider.of<ReadNoteCubit>(context).colorIndex = index;
          },
        ),
      ),
    );
  }
}
