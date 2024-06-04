import 'package:flutter/material.dart';
import 'package:parking_app/extensions/widgets/image.dart';
import 'package:path/path.dart' as path;

import '../../home/models/item.dart';

class CheckInGridTile extends StatelessWidget {
  const CheckInGridTile({super.key, required this.item});

  final GridItem item;

  @override
  Widget build(BuildContext context) {
    final hasPicture = (item.imageUrl?.isNotEmpty ?? false) ||
        (item.path?.isNotEmpty ?? false);
    return Container(
      decoration: BoxDecoration(
        color: item.color ?? Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200]!,
            blurRadius: 8,
            spreadRadius: 2,
          )
        ],
      ),
      child: Column(
        children: [
          if (hasPicture) ...[
            Expanded(
              child: (item.imageUrl?.isNotEmpty ?? false) ? _image : _asset,
            ),
            const Divider(),
          ],
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              item.label,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget get _asset {
    final extension = path.extension(item.path!).toLowerCase();
    if (extension == '.png' || extension == '.jpg') {
      return Image.asset(item.path!);
    }
    return Image.asset('assets/images/vehicles/car.png');
  }

  Widget get _image {
    if (item.imageUrl?.isNotEmpty ?? false) {
      final imageUrl = item.imageUrl!;
      final isNetwork = imageUrl.startsWith('https');
      return isNetwork
          ? Image.network(imageUrl)
          : FirebaseImage.storage(imageUrl);
    } else {
      return Container();
    }
  }
}
