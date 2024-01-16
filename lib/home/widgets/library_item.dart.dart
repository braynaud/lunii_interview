import 'package:lunii_test/api/api_models/home/item_summary.dart';
import 'package:lunii_test/common/theme/text_styles.dart';
import 'package:flutter/material.dart';

class LibraryItem extends StatelessWidget {
  const LibraryItem({
    super.key,
    required this.itemSummary,
    required this.onTap,
  });

  final ItemSummary itemSummary;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Image.network(
              itemSummary.posterUrl,
              width: 100,
              height: 100,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemSummary.title,
                    style: TextStyles.label,
                  ),
                  Text(
                    '${itemSummary.year} | ${itemSummary.type}',
                    style: TextStyles.subtitle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
