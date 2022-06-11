import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/data_row_model.dart';
import '../utils/constants.dart';

class DataRowCard extends StatelessWidget {
  const DataRowCard({Key? key, required this.data}) : super(key: key);

  final DataRowModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: data.image,
              errorWidget: (context, url, error) {
                return CachedNetworkImage(imageUrl: defaultImage);
              },
            ),
            const SizedBox(height: 10),
            Text(
              data.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(data.description),
          ],
        ),
      ),
    );
  }
}
