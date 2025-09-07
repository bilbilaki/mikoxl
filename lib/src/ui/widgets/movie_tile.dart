import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget {
  final int id;
  final String title;
  final String? posterPath;
  final VoidCallback? onTap;

  const MovieTile({
    required this.id,
    required this.title,
    this.posterPath,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final imageUrl = posterPath != null ? 'https://db.inosuke.sbs/t/p/w500$posterPath' : null;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: imageUrl != null
                  ? Image.network(imageUrl, fit: BoxFit.cover, width: double.infinity, errorBuilder: (c, e, s) => const ColoredBox(color: Colors.black12))
                  : const ColoredBox(color: Colors.black12),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}