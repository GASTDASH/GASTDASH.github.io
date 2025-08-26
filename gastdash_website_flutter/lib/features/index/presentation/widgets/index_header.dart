import 'package:flutter/material.dart';

class IndexHeader extends StatelessWidget {
  const IndexHeader({super.key, this.actions = const []});

  final List<IndexHeaderAction> actions;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.black26,
      toolbarHeight: 80,
      pinned: true,
      title: Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Text(
          'GASTDASH Official Website',
          style: TextStyle(
            fontFamily: 'Righteous',
            fontSize: 32,
            fontWeight: FontWeight.w700,
            shadows: [
              Shadow(
                color: Colors.black54,
                blurRadius: 12,
                offset: Offset(0, 5),
              ),
            ],
          ),
          overflow: TextOverflow.fade,
        ),
      ),
      actionsPadding: EdgeInsets.only(right: 32),
      actions: MediaQuery.of(context).size.width > 480
          ? List.generate(actions.length, (i) {
              final action = actions[i];
              return TextButton.icon(
                onPressed: action.onPressed,
                label: Text(action.text),
                icon: Icon(action.icon),
              );
            })
          : [
              PopupMenuButton(
                icon: Icon(Icons.menu),
                itemBuilder: (context) => List.generate(actions.length, (i) {
                  final action = actions[i];

                  return PopupMenuItem(
                    onTap: action.onPressed,
                    child: Text(action.text),
                  );
                }),
              ),
            ],
    );
  }
}

class IndexHeaderAction {
  IndexHeaderAction({
    required this.onPressed,
    required this.text,
    required this.icon,
  });

  final VoidCallback onPressed;
  final String text;
  final IconData icon;
}
