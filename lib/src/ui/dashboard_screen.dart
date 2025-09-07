// File: lib/src/ui/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mikoxl/src/consts.dart';
import 'package:mikoxl/src/providers/trending_providers.dart';
import 'package:mikoxl/src/ui/widgets/movie_card.dart';
import 'package:mikoxl/src/ui/top_hits_anime_screen.dart'; // Import the new screen
import 'package:mikoxl/src/ui/new_episode_releases_screen.dart'; // Import the new screen
import 'package:mikoxl/src/ui/notification_screen.dart'; // Import for the actual notification list
import 'package:mikoxl/src/ui/anime_detail_screen.dart'; // Import the new AnimeDetailScreen
import 'package:mikoxl/src/models/search/search_multi_response.dart'; // Contains SearchResultItem
import 'package:mikoxl/src/models/misc/trending_response.dart';
import 'package:mikoxl/src/ui/search_screen.dart'; // For navigation to search


class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trendingMovies = ref.watch(trendingMoviesDayProvider);
    final topRatedMovies = ref.watch(topRatedMoviesProvider);
    final newEpisodeReleases = ref.watch(tvAiringTodayHomeProvider); // Using trending TV for new releases

    return Scaffold(
      backgroundColor: const Color(0xFF0D0F10), // Matching background from previous attempt
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 360.0,
            floating: false,
            pinned: true,
            backgroundColor: const Color(0xFF0D0F10),
            flexibleSpace: trendingMovies.when(
              data: (response) {
                final featuredItem = response.results.isNotEmpty ? response.results.first : null;
                return _buildHeader(context, featuredItem);
              },
              loading: () => const Center(child: CircularProgressIndicator(color: Color(0xFF1ED760))),
              error: (err, stack) => Center(child: Text('Error loading featured: $err', style: const TextStyle(color: Colors.red))),
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: _buildSectionHeader(context, 'Top Hits Anime', () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const TopHitsAnimeScreen()),
              );
            }),
          ),
          SliverToBoxAdapter(
            child: topRatedMovies.when(
              data: (response) {
                return SizedBox(
                  height: 220, // Adjusted height for cards
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: response.results.length.clamp(0, 10), // Limit to top 10 for display
                    itemBuilder: (context, index) {
                      final item = response.results[index];
                      // Ensure it's a movie/tv with a poster path and vote average
                      if (item.posterPath == null || (item.voteAverage == null && item.popularity == null)) {
                        return const SizedBox.shrink(); // Skip items without necessary data
                      }
                      return Padding(
                        padding: EdgeInsets.only(right: index == response.results.length - 1 ? 16.0 : 12.0),
                        child: MovieCard(
                          imageUrl: '$tmdbImageBaseUrlc/t/p/w500${item.posterPath}',
                          title: item.title ?? item.name ?? 'N/A',
                          rating: item.voteAverage != null ? item.voteAverage!.toStringAsFixed(1) : (item.popularity ?? 0.0).toStringAsFixed(1),
                          indexNumber: index + 1,
                          width: 130,
                          height: 180,
                          small: false,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (_) => AnimeDetailScreen(animeId: item.id, mediaType: item.mediaType ?? 'movie')));
                          },
                        ),
                      );
                    },
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator(color: Color(0xFF1ED760))),
              error: (err, stack) => Center(child: Text('Error loading top hits: $err', style: const TextStyle(color: Colors.red))),
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 22)),
          SliverToBoxAdapter(
            child: _buildSectionHeader(context, 'New Episode Releases', () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const NewEpisodeReleasesScreen()),
              );
            }),
          ),
          SliverToBoxAdapter(
            child: newEpisodeReleases.when(
              data: (response) {
                return SizedBox(
                  height: 180, // Adjusted height for smaller cards
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: response.results.length.clamp(0, 10), // Limit to top 10 for display
                    itemBuilder: (context, index) {
                      final item = response.results[index];
                      // Ensure it's a movie/tv with a poster path and vote average
                      if (item.posterPath == null || (item.voteAverage == null && item.popularity == null)) {
                        return const SizedBox.shrink(); // Skip items without necessary data
                      }
                      return Padding(
                        padding: EdgeInsets.only(right: index == response.results.length - 1 ? 16.0 : 12.0),
                        child: MovieCard(
                          imageUrl: '$tmdbImageBaseUrlc/t/p/w500${item.posterPath}',
                          title: item.title ?? item.name ?? 'N/A',
                          rating: item.voteAverage != null ? item.voteAverage!.toStringAsFixed(1) : (item.popularity ?? 0.0).toStringAsFixed(1),
                          indexNumber: index + 1,
                          width: 120,
                          height: 140,
                          small: true, // Use small variant for new releases
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (_) => AnimeDetailScreen(animeId: item.id, mediaType: item.mediaType ?? 'tv')));
                          },
                        ),
                      );
                    },
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator(color: Color(0xFF1ED760))),
              error: (err, stack) => Center(child: Text('Error loading new releases: $err', style: const TextStyle(color: Colors.red))),
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 40)),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, SearchResultItem? featuredItem) {
    final headerImageUrl = featuredItem?.backdropPath != null
        ? '$tmdbImageBaseUrlc/t/p/w780${featuredItem!.backdropPath}'
        : 'https://image.tmdb.org/t/p/w780/your_header_sample.jpg'; // fallback

    return FlexibleSpaceBar(
      background: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            headerImageUrl,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              color: const Color(0xFF111213),
              child: const Center(
                child: Text(
                  'Image Not Available',
                  style: TextStyle(color: Colors.white54),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.28),
                  Colors.black.withOpacity(0.65),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 12,
            left: 16,
            right: 16,
            child: Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: const BoxDecoration(
                    color: Color(0xFF0BFF7A),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.ac_unit, // placeholder logo icon
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () { 
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SearchScreen()));
                  },
                  icon: const Icon(Icons.search, color: Colors.white),
                ),
                const SizedBox(width: 6),
                IconButton(
                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (_) => const NotificationScreen())); },
                  icon: const Icon(Icons.notifications_none, color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 18,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  featuredItem?.title ?? featuredItem?.name ?? 'Featured Title N/A',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Text(
                  'Action, Shounen, Martial Arts, Adventure, ...', // This might need genre fetching from featuredItem
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.85),
                      fontSize: 13),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () { /* TODO: Play action */ },
                      icon: const Icon(Icons.play_arrow, size: 18),
                      label: const Text('Play'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1ED760),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                    const SizedBox(width: 12),
                    OutlinedButton.icon(
                      onPressed: () { /* TODO: My List action */ },
                      icon: const Icon(Icons.add, size: 18),
                      label: const Text('My List'),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            color: Colors.white.withOpacity(0.12)),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textStyle: const TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title, VoidCallback onSeeAll) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 8.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),
          ),
          const Spacer(),
          TextButton(
            onPressed: onSeeAll,
            child: Text(
              'See all',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary, // Using primary color for "See all"
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}