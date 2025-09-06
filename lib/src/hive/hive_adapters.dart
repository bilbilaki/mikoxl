import 'package:hive_ce/hive.dart';
import 'package:mikoxl/src/models/auth/account.dart';
import 'package:mikoxl/src/models/auth/account_states.dart';
import 'package:mikoxl/src/models/auth/guest_session.dart';
import 'package:mikoxl/src/models/auth/list_action_response.dart';
import 'package:mikoxl/src/models/auth/session.dart';
import 'package:mikoxl/src/models/discover/discover_movies_response.dart';
import 'package:mikoxl/src/models/discover/discover_params.dart';
import 'package:mikoxl/src/models/misc/change_item.dart';
import 'package:mikoxl/src/models/misc/changes_response.dart';
import 'package:mikoxl/src/models/misc/rating_response.dart';
import 'package:mikoxl/src/models/misc/trending_response.dart';
import 'package:mikoxl/src/models/movie/alternative_titles.dart';
import 'package:mikoxl/src/models/movie/collection.dart';
import 'package:mikoxl/src/models/movie/genre.dart';
import 'package:mikoxl/src/models/movie/image.dart';
import 'package:mikoxl/src/models/movie/keyword.dart';
import 'package:mikoxl/src/models/movie/list_details.dart';
import 'package:mikoxl/src/models/movie/movie_list_response.dart';
import 'package:mikoxl/src/models/movie/production.dart';
import 'package:mikoxl/src/models/movie/recommendations_response.dart';
import 'package:mikoxl/src/models/movie/review.dart';
import 'package:mikoxl/src/models/movie/translations.dart';
import 'package:mikoxl/src/models/movie/video.dart';
import 'package:mikoxl/src/models/movie/watch_providers.dart';
import 'package:mikoxl/src/models/search/search_multi_response.dart';
import 'package:mikoxl/src/models/tv/content_ratings.dart';
import 'package:mikoxl/src/models/tv/creator.dart';
import 'package:mikoxl/src/models/tv/external_ids.dart';
import 'package:mikoxl/src/models/tv/network.dart';
import 'package:mikoxl/src/models/tv/season_summary.dart';
import 'package:mikoxl/src/models/tv/translations.dart';
import 'package:mikoxl/src/models/tv/tv_credits.dart';
import 'package:mikoxl/src/models/tv/tv_genre.dart';
import 'package:mikoxl/src/models/tv/tv_show_detail.dart';

@GenerateAdapters([
  AdapterSpec<AccountStates>(),
  AdapterSpec<AccountDetails>(),
  AdapterSpec<GuestSession>(),
  AdapterSpec<ListActionResponse>(),
  AdapterSpec<SessionResponse>(),
  AdapterSpec<DiscoverMoviesResponse>(),
  AdapterSpec<DiscoverParams>(),
  AdapterSpec<ChangeItem>(),

  AdapterSpec<ChangesResponse>(),
  AdapterSpec<RatingResponse>(),
  AdapterSpec<TrendingResponse>(),
  AdapterSpec<AlternativeTitle>(),
  AdapterSpec<AlternativeTitlesResponse>(),
  AdapterSpec<CollectionPart>(),
  AdapterSpec<CollectionDetails>(),
  AdapterSpec<MovieGenre>(),

  AdapterSpec<GenreListResponse>(),
  AdapterSpec<MovieImage>(),
  AdapterSpec<MovieImagesResponse>(),
  AdapterSpec<MovieKeyword>(),
  AdapterSpec<MovieKeywordsResponse>(),
  AdapterSpec<MovieListItemDetail>(),
  AdapterSpec<MovieListDetails>(),
  AdapterSpec<MovieListResponse>(),

  AdapterSpec<MovieListItem>(),
  AdapterSpec<ProductionCompany>(),
  AdapterSpec<ProductionCountry>(),
  AdapterSpec<MovieRecommendationsResponse>(),
  AdapterSpec<MovieReview>(),
  AdapterSpec<MovieReviewsResponse>(),
  AdapterSpec<TranslationData>(),
  AdapterSpec<TranslationItem>(),

  AdapterSpec<TranslationsResponse>(),
  AdapterSpec<MovieVideo>(),
  AdapterSpec<MovieVideosResponse>(),
  AdapterSpec<WatchProvider>(),
  AdapterSpec<WatchProviderCountry>(),
  AdapterSpec<WatchProvidersResponse>(),
  AdapterSpec<SearchResultItem>(),
  AdapterSpec<SearchMultiResponse>(),

  AdapterSpec<ContentRatingItem>(),
  AdapterSpec<TvContentRatingsResponse>(),
  AdapterSpec<Creator>(),
  AdapterSpec<TvExternalIds>(),
  AdapterSpec<Network>(),
  AdapterSpec<SeasonSummary>(),
  AdapterSpec<TvTranslationItem>(),
  AdapterSpec<TvTranslationsResponse>(),

  AdapterSpec<TvCast>(),
  AdapterSpec<TvCrew>(),
  AdapterSpec<TvCreditsResponse>(),
  AdapterSpec<TvGenre>(),
  AdapterSpec<TvShowDetail>(),
])
part 'hive_adapters.g.dart';
