// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mikoxl/src/consts.dart';
import 'package:mikoxl/src/providers/tv_providers.dart'; // Using TV providers for this example
import 'package:mikoxl/src/models/tv/tv_show_detail.dart';
import 'package:mikoxl/src/ui/widgets/episode_horizontal_card.dart';
import 'package:mikoxl/src/ui/widgets/share_bottom_sheet.dart';

class AnimeDetailScreen extends ConsumerStatefulWidget {
  final int animeId; // Can be movieId or tvId
  final String mediaType; // 'movie' or 'tv'
  final String? initialSeason; // For TV shows, specify initial season

  const AnimeDetailScreen({
    super.key,
    required this.animeId,
    required this.mediaType,
    this.initialSeason,
  });

  @override
  ConsumerState<AnimeDetailScreen> createState() => _AnimeDetailScreenState();
}

class _AnimeDetailScreenState extends ConsumerState<AnimeDetailScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedSeason = 1; // Default to season 1
  bool _showFullOverview = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    if (widget.mediaType == 'tv' && widget.initialSeason != null) {
      // Parse season number if provided and valid
      final seasonNum = int.tryParse(widget.initialSeason!.replaceAll('Season ', ''));
      if (seasonNum != null) {
        _selectedSeason = seasonNum;
      }
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _showShareBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => const ShareBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // For now, only using TV show details as per image.
    // In a real app, you'd switch providers based on widget.mediaType.
    final animeDetailAsync = ref.watch(tvDetailProvider(widget.animeId));

    return Scaffold(
      backgroundColor: const Color(0xFF0D0F10),
      body: animeDetailAsync.when(
        data: (TvShowDetail detail) {
          final imageUrl = detail.backdropPath != null
              ? '$tmdbImageBaseUrlc/t/p/w780${detail.backdropPath}'
              : detail.posterPath != null
                  ? '$tmdbImageBaseUrlc/t/p/w780${detail.posterPath}'
                  : 'https://via.placeholder.com/780x440.png?text=No+Image';

          String genresText = (detail.genres ?? []).map((g) => g.name).join(', ');
          if (genresText.isEmpty) genresText = 'N/A';

          String year = 'N/A';
          if (detail.firstAirDate != null && detail.firstAirDate!.length >= 4) {
            year = detail.firstAirDate!.substring(0, 4);
          }

          String country = (detail.originCountry ?? []).isNotEmpty ? detail.originCountry!.first : 'N/A';

          // Dummy episodes for the selected season
          final List<Map<String, String>> dummyEpisodes = List.generate(
            detail.numberOfEpisodes ?? 6, // Use actual count if available, else a default
            (i) => {
              'imageUrl': '$tmdbImageBaseUrlc/t/p/w200/your_episode_still_${i + 1}.jpg', // Placeholder image
              'episodeNumber': 'Episode ${i + 1}',
            },
          );

          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 280.0,
                floating: true,
                pinned: true,
                backgroundColor: const Color(0xFF0D0F10),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.bookmark_border, color: Colors.white),
                    onPressed: () {
                      // TODO: Add to My List
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Added ${detail.name} to My List')),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
                    onPressed: _showShareBottomSheet,
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.grey.shade900,
                          child: const Center(child: Icon(Icons.broken_image, color: Colors.white54)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.3),
                              Colors.black.withOpacity(0.8),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            detail.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber, size: 18),
                              const SizedBox(width: 4),
                              Text(
                                detail.voteAverage?.toStringAsFixed(1) ?? 'N/A',
                                style: const TextStyle(color: Colors.white70, fontSize: 14),
                              ),
                              const SizedBox(width: 8),
                              const Icon(Icons.chevron_right, color: Colors.white70, size: 18),
                              const SizedBox(width: 8),
                              Text(
                                year,
                                style: const TextStyle(color: Colors.white70, fontSize: 14),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  '13+', // Placeholder for age rating
                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                country,
                                style: const TextStyle(color: Colors.white70, fontSize: 14),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  'Subtitle',
                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    // TODO: Play action
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('Playing ${detail.name}')),
                                    );
                                  },
                                  icon: const Icon(Icons.play_circle_fill, size: 24),
                                  label: const Text('Play'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(context).colorScheme.primary,
                                    foregroundColor: Colors.black,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                    textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: OutlinedButton.icon(
                                  onPressed: () {
                                    // TODO: Download action
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('Downloading ${detail.name}')),
                                    );
                                  },
                                  icon: const Icon(Icons.download, size: 24),
                                  label: const Text('Download'),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(color: Colors.white.withOpacity(0.12)),
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                    textStyle: const TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Genre: $genresText. ${detail.overview ?? 'No overview available.'}',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.85),
                              fontSize: 13,
                            ),
                            maxLines: _showFullOverview ? 100 : 3, // Show more or less
                            overflow: TextOverflow.ellipsis,
                          ),
                          if (detail.overview != null && detail.overview!.length > 100)
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _showFullOverview = !_showFullOverview;
                                  });
                                },
                                child: Text(
                                  _showFullOverview ? 'View Less' : 'View More',
                                  style: TextStyle(color: Theme.of(context).colorScheme.primary),
                                ),
                              ),
                            ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Episodes',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              DropdownButton<int>(
                                value: _selectedSeason,
                                dropdownColor: Colors.grey.shade900,
                                icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                                underline: const SizedBox.shrink(),
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      _selectedSeason = newValue;
                                    });
                                    // TODO: Refresh episodes based on new season
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('Selected Season $newValue')),
                                    );
                                  }
                                },
                                items: (detail.seasons ?? [])
                                    .map((s) => DropdownMenuItem<int>(
                                          value: s.seasonNumber,
                                          child: Text(
                                            'Season ${s.seasonNumber}',
                                            style: const TextStyle(color: Colors.white),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            height: 130, // Height for horizontal episode cards
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: dummyEpisodes.length,
                              itemBuilder: (context, index) {
                                final episode = dummyEpisodes[index];
                                return EpisodeHorizontalCard(
                                  imageUrl: episode['imageUrl']!,
                                  episodeNumber: episode['episodeNumber']!,
                                  isPlaying: index == 0, // Mark first episode as playing for demo
                                  onTap: () {
                                    // TODO: Navigate to episode detail or play episode
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('Tapped on ${episode['episodeNumber']}')),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 16),
                          TabBar(
                            controller: _tabController,
                            indicatorColor: Theme.of(context).colorScheme.primary,
                            labelColor: Theme.of(context).colorScheme.primary,
                            unselectedLabelColor: Colors.white70,
                            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                            tabs: const [
                              Tab(text: 'More Like This'),
                              Tab(text: 'Comments (29.5K)'), // Placeholder count
                            ],
                          ),
                          SizedBox(
                            height: 300, // Fixed height for tab content
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                // More Like This tab content
                                _buildMoreLikeThisTab(),
                                // Comments tab content
                                _buildCommentsTab(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator(color: Color(0xFF1ED760))),
        error: (err, stack) => Center(child: Text('Error loading anime detail: $err', style: const TextStyle(color: Colors.red))),
      ),
    );
  }

  Widget _buildMoreLikeThisTab() {
    // Dummy content for "More Like This"
    final List<Map<String, String>> dummyRecommendations = [
      {
        'imageUrl': '$tmdbImageBaseUrlc/t/p/w200/h2tP6xQhK3R9GzG2l5l3L5N5n0C.jpg', // Placeholder
        'title': 'Recommendation 1',
        'rating': '9.4',
      },
      {
        'imageUrl': '$tmdbImageBaseUrlc/t/p/w200/h2tP6xQhK3R9GzG2l5l3L5N5n0C.jpg', // Placeholder
        'title': 'Recommendation 2',
        'rating': '9.2',
      },
      // Add more as needed
    ];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dummyRecommendations.length,
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      itemBuilder: (context, index) {
        final item = dummyRecommendations[index];
        return Container(
          width: 130, // Similar to MovieCard dimensions
          margin: const EdgeInsets.only(right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      item['imageUrl']!,
                      width: 130,
                      height: 180,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        width: 130,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.broken_image, color: Colors.white54),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.star, size: 10, color: Colors.black),
                          const SizedBox(width: 4),
                          Text(
                            item['rating']!,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                item['title']!,
                style: const TextStyle(color: Colors.white, fontSize: 13),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCommentsTab() {
    // Dummy comments
    final List<Map<String, String>> dummyComments = [
      {
        'avatarUrl': 'https://image.tmdb.org/t/p/w200/wP7D0fWjP1c3z7b4q0n7c9v4S0d.jpg', // Placeholder
        'author': 'Willard Purnell',
        'comment': 'Amazing anime! Can\'t wait for the next season.',
        'time': '2 days ago',
      },
      {
        'avatarUrl': 'https://image.tmdb.org/t/p/w200/wP7D0fWjP1c3z7b4q0n7c9v4S0d.jpg', // Placeholder
        'author': 'AnimeLover99',
        'comment': 'The animation is breathtaking!',
        'time': '1 week ago',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '29.5K Comments', // Same placeholder as tab title
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  // TODO: Navigate to all comments screen
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('See all comments functionality')),
                  );
                },
                child: Text(
                  'See all',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: dummyComments.length,
            itemBuilder: (context, index) {
              final comment = dummyComments[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(comment['avatarUrl']!),
                      backgroundColor: Colors.grey.shade700,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            comment['author']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            comment['comment']!,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            comment['time']!,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}