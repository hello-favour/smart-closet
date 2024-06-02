import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_closet/widgets/texts.dart';

class ChatView extends ConsumerStatefulWidget {
  const ChatView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends ConsumerState<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SmartTexts.bodyText("Chat", context),
      ),
    );
  }
}
