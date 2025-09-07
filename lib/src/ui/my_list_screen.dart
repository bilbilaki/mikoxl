// File: lib/src/ui/my_list_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:mikoxl/src/consts.dart'; // For image base URL
import 'package:mikoxl/src/ui/widgets/episode_grid_item.dart'; // Reusing grid item for My List
import 'package:mikoxl/src/ui/anime_detail_screen.dart'; // For navigation to detail screen

class MyListScreen extends ConsumerStatefulWidget {
  const MyListScreen({super.key});

  @override
  ConsumerState<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends ConsumerState<MyListScreen> {
  // Placeholder for user's list. Replace with actual data from a provider/repository.
  bool _isListEmpty = false; // Set to true to show empty state

  final List<Map<String, dynamic>> _myListItems = [
    {
      'id': 1,
      'title': 'Naruto Shippuden',
      'posterPath': '/ktA6J8oXf9eT2K8eG5P9L4zW6dE.jpg',
      'voteAverage': 9.8,
      'mediaType': 'tv',
      'releaseYear': '2007',
    },
    {
      'id': 2,
      'title': 'One Piece Film: Red',
      'posterPath': '/vsPzF26FqI8M1s210vY9Nl2QY4f.jpg',
      'voteAverage': 9.7,
      'mediaType': 'movie',
      'releaseYear': '2022',
    },
    {
      'id': 3,
      'title': 'Jujutsu Kaisen Season 2',
      'posterPath': '/9kCg7w6f6R3g0m1g8Y5L8S5d0o.jpg',
      'voteAverage': 9.6,
      'mediaType': 'tv',
      'releaseYear': '2023',
    },
    {
      'id': 4,
      'title': 'Spy x Family',
      'posterPath': '/gp3za9w3f7p2n3Tz1zD4b3L0pYV.jpg',
      'voteAverage': 9.5,
      'mediaType': 'tv',
      'releaseYear': '2022',
    },
    {
      'id': 5,
      'title': 'Attack on Titan',
      'posterPath': '/qv3CzV2x8zS1d3zlZ1qC9Z0f9bL.jpg',
      'voteAverage': 9.5,
      'mediaType': 'tv',
      'releaseYear': '2013',
    },
    {
      'id': 6,
      'title': 'Chainsaw Man',
      'posterPath': '/pYvWvX2n56vLd85zD6cQ7d3k2o0.jpg',
      'voteAverage': 9.6,
      'mediaType': 'tv',
      'releaseYear': '2022',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return _build(context, ref);
  }

  Widget _build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0F10),
      appBar: AppBar(
        title: const Text('My List'),
        centerTitle: true,
        backgroundColor: const Color(0xFF0D0F10),
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 16),
          child: const Icon(
            Icons.ac_unit,
            color: Color(0xFF0BFF7A),
            size: 28,
          ), // App Logo
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // TODO: Implement search within My List
            },
          ),
        ],
      ),
      body: _isListEmpty
          ? _buildEmptyState(context)
          : _buildMyListContent(context),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          'assets/Lottie/empty_list.json', // Placeholder, replace with your Lottie animation
          repeat: true,
          height: 150,
          width: 150,
        ),
        const SizedBox(height: 24),
        const Text(
          'Your List is Empty',
          style: TextStyle(
            color: Color(0xFF1ED760),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            'It seems that you haven\'t added any anime to the list',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _buildMyListContent(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.75, // Adjust as needed
      ),
      itemCount: _myListItems.length,
      itemBuilder: (context, index) {
        final item = _myListItems[index];
        return EpisodeGridItem(
          imageUrl: '$tmdbImageBaseUrlc/t/p/w500${item['posterPath']}',
          title: item['title'] as String,
          episodeInfo: item['mediaType'] == 'tv'
              ? 'TV Series (${item['releaseYear']})'
              : 'Movie (${item['releaseYear']})',
          rating: (item['voteAverage'] as double).toStringAsFixed(1),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => AnimeDetailScreen(
                  animeId: item['id'],
                  mediaType: item['mediaType'],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
