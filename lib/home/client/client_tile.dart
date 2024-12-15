import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/client/model/client_item_model.dart';

class ClientTile extends StatefulWidget {
  final ClientItemModel clientItemModel;

  const ClientTile(
      {super.key, required this.clientItemModel});

  @override
  State<ClientTile> createState() => _ClientTileState();
}

class _ClientTileState extends State<ClientTile> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        curve: _isHovered ? Curves.bounceIn : Curves.linear,
        transform: Matrix4.translationValues(0, _isHovered ? -5 : 0, 0),
        // Adjust the value (-10) to control the height of the hover movement
        duration: const Duration(milliseconds: 5),
        child: ColorFiltered(
          colorFilter: _isHovered
              ? const ColorFilter.mode(
                  Colors.transparent, // No filter on hover
                  BlendMode.multiply,
                )
              : const ColorFilter.matrix(<double>[
                  0.2126, 0.7152, 0.0722, 0, 0, // Red channel
                  0.2126, 0.7152, 0.0722, 0, 0, // Green channel
                  0.2126, 0.7152, 0.0722, 0, 0, // Blue channel
                  0, 0, 0, 1, 0, // Alpha channel
                ]),
          child: Image.network(widget.clientItemModel.image!,
              errorBuilder: (context, error, stackTrace) {
            return Image.asset(
              "assets/aws.webp", // Fallback image on error
              width: 150,
              height: 150,
            );
          }),
        ),
      ),
    );
  }
}
