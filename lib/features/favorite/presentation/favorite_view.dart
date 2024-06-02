import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_closet/widgets/texts.dart';

class FavoriteView extends ConsumerStatefulWidget {
  const FavoriteView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends ConsumerState<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SmartTexts.bodyText("Favorite", context),
      ),
    );
  }
}
