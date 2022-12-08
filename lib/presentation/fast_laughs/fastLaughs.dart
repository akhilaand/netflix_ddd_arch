import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ddd_arch/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/presentation/fast_laughs/widgets/build_video_play_widget.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(const Initilaized());
    });
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(child: BlocBuilder<FastLaughBloc, FastLaughState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.isError) {
            return const Text("Error occured");
          } else if (state.videoList.isEmpty) {
            return const Text("List is empty");
          } else {
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                  state.videoList.length,
                  (index) => BuildVideoPlayPageViewInheritedWidget(
                        data: state.videoList[index],
                        widget: BuildVideoPlayPageViewWidget(
                          index: index,
                        ),
                      )),
            );
          }
        },
      )),
    );
  }
}
