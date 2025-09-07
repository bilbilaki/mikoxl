// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mikoxl/src/consts.dart';
import 'package:mikoxl/src/providers/trending_providers.dart';
import 'package:mikoxl/src/ui/widgets/anime_vertical_card.dart';

class TopHitsAnimeScreen extends ConsumerWidget {
  const TopHitsAnimeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topHitsAsync = ref.watch(topRatedMoviesProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF0D0F10),
      appBar: AppBar(
        title: const Text('Top Hits Anime'),
        centerTitle: true,
        backgroundColor: const Color(0xFF0D0F10),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Navigate to search screen or implement search functionality
            },
          ),
        ],
      ),
      body: topHitsAsync.when(
        data: (response) {
          final items = response.results;
          if (items.isEmpty) {
            return const Center(
              child: Text('No top hits found.', style: TextStyle(color: Colors.white70)),
            );
          }
          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(topRatedMoviesProvider);
              await ref.read(topRatedMoviesProvider.future);
            },
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                if (item.posterPath == null || (item.voteAverage == null && item.popularity == null)) {
                  return const SizedBox.shrink(); // Skip items without necessary data
                }

                // Placeholder for genre string. In a real app, you'd map genre_ids to names.
                final String genres = (item.genreIds ?? []).isNotEmpty
                    ? 'Action, Fantasy' // Placeholder
                    : 'N/A';

                // Determine release year
                String year = 'N/A';
                if (item.releaseDate != null && item.releaseDate!.length >= 4) {
                  year = item.releaseDate!.substring(0, 4);
                } else if (item.firstAirDate != null && item.firstAirDate!.length >= 4) {
                  year = item.firstAirDate!.substring(0, 4);
                }

                // Determine country. Placeholder for now.
                String country = 'Japan'; // Hardcoded as per image

                return AnimeVerticalCard(
                  imageUrl: '$tmdbImageBaseUrlc/t/p/w500${item.posterPath}',
                  title: item.title ?? item.name ?? 'Unknown Title',
                  rating: item.voteAverage != null ? item.voteAverage!.toStringAsFixed(1) : (item.popularity ?? 0.0).toStringAsFixed(1),
                  indexNumber: index + 1,
                  year: year,
                  country: country,
                  genres: genres,
                  onMyList: index % 2 == 0, // Placeholder for 'My List' status
                  onMyListToggle: () {
                    // TODO: Implement toggle 'My List' functionality
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Toggled ${item.title ?? item.name} on My List')),
                    );
                  },
                  onTap: () {
                    // TODO: Navigate to detail screen based on media_type
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Tapped on ${item.title ?? item.name}')),
                    );
                  },
                );
              },
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator(color: Color(0xFF1ED760))),
        error: (err, stack) => Center(child: Text('Error loading top hits: $err', style: const TextStyle(color: Colors.red))),
      ),
    );
  }
}