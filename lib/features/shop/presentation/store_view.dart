import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_closet/widgets/texts.dart';

class StoreView extends ConsumerStatefulWidget {
  const StoreView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StoreViewState();
}

class _StoreViewState extends ConsumerState<StoreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SmartTexts.bodyText("Store", context),
      ),
    );
  }
}
