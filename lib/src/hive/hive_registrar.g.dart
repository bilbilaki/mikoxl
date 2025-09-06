import 'package:hive_ce/hive.dart';
import 'hive_adapters.dart';

extension HiveRegistrar on HiveInterface {
  void registerAdapters() {
    registerAdapter(AccountStatesAdapter());
  registerAdapter(AccountDetailsAdapter());
  registerAdapter(GuestSessionAdapter());
  registerAdapter(ListActionResponseAdapter());
  registerAdapter(SessionResponseAdapter());
  registerAdapter(DiscoverMoviesResponseAdapter());
  registerAdapter(DiscoverParamsAdapter());
  registerAdapter(ChangeItemAdapter());

  registerAdapter(ChangesResponseAdapter());
  registerAdapter(RatingResponseAdapter());
  registerAdapter(TrendingResponseAdapter());
  registerAdapter(AlternativeTitleAdapter());
  registerAdapter(AlternativeTitlesResponseAdapter());
  registerAdapter(CollectionPartAdapter());
  registerAdapter(CollectionDetailsAdapter());
  registerAdapter(MovieGenreAdapter());

  registerAdapter(GenreListResponseAdapter());
  registerAdapter(MovieImageAdapter());
  registerAdapter(MovieImagesResponseAdapter());
  registerAdapter(MovieKeywordAdapter());
  registerAdapter(MovieKeywordsResponseAdapter());
  registerAdapter(MovieListItemDetailAdapter());
  registerAdapter(MovieListDetailsAdapter());
  registerAdapter(MovieListResponseAdapter());

  registerAdapter(MovieListItemAdapter());
  registerAdapter(ProductionCompanyAdapter());
  registerAdapter(ProductionCountryAdapter());
  registerAdapter(MovieRecommendationsResponseAdapter());
  registerAdapter(MovieReviewAdapter());
  registerAdapter(MovieReviewsResponseAdapter());
  registerAdapter(TranslationDataAdapter());
  registerAdapter(TranslationItemAdapter());

  registerAdapter(TranslationsResponseAdapter());
  registerAdapter(MovieVideoAdapter());
  registerAdapter(MovieVideosResponseAdapter());
  registerAdapter(WatchProviderAdapter());
  registerAdapter(WatchProviderCountryAdapter());
  registerAdapter(WatchProvidersResponseAdapter());
  registerAdapter(SearchResultItemAdapter());
  registerAdapter(SearchMultiResponseAdapter());

  registerAdapter(ContentRatingItemAdapter());
  registerAdapter(TvContentRatingsResponseAdapter());
  registerAdapter(CreatorAdapter());
  registerAdapter(TvExternalIdsAdapter());
  registerAdapter(NetworkAdapter());
  registerAdapter(SeasonSummaryAdapter());
  registerAdapter(TvTranslationItemAdapter());
  registerAdapter(TvTranslationsResponseAdapter());

  registerAdapter(TvCastAdapter());
  registerAdapter(TvCrewAdapter());
  registerAdapter(TvCreditsResponseAdapter());
  registerAdapter(TvGenreAdapter());
  registerAdapter(TvShowDetailAdapter());
 }
}

extension IsolatedHiveRegistrar on IsolatedHiveInterface {
  void registerAdapters() {
    registerAdapter(AccountStatesAdapter());
  registerAdapter(AccountDetailsAdapter());
  registerAdapter(GuestSessionAdapter());
  registerAdapter(ListActionResponseAdapter());
  registerAdapter(SessionResponseAdapter());
  registerAdapter(DiscoverMoviesResponseAdapter());
  registerAdapter(DiscoverParamsAdapter());
  registerAdapter(ChangeItemAdapter());

  registerAdapter(ChangesResponseAdapter());
  registerAdapter(RatingResponseAdapter());
  registerAdapter(TrendingResponseAdapter());
  registerAdapter(AlternativeTitleAdapter());
  registerAdapter(AlternativeTitlesResponseAdapter());
  registerAdapter(CollectionPartAdapter());
  registerAdapter(CollectionDetailsAdapter());
  registerAdapter(MovieGenreAdapter());

  registerAdapter(GenreListResponseAdapter());
  registerAdapter(MovieImageAdapter());
  registerAdapter(MovieImagesResponseAdapter());
  registerAdapter(MovieKeywordAdapter());
  registerAdapter(MovieKeywordsResponseAdapter());
  registerAdapter(MovieListItemDetailAdapter());
  registerAdapter(MovieListDetailsAdapter());
  registerAdapter(MovieListResponseAdapter());

  registerAdapter(MovieListItemAdapter());
  registerAdapter(ProductionCompanyAdapter());
  registerAdapter(ProductionCountryAdapter());
  registerAdapter(MovieRecommendationsResponseAdapter());
  registerAdapter(MovieReviewAdapter());
  registerAdapter(MovieReviewsResponseAdapter());
  registerAdapter(TranslationDataAdapter());
  registerAdapter(TranslationItemAdapter());

  registerAdapter(TranslationsResponseAdapter());
  registerAdapter(MovieVideoAdapter());
  registerAdapter(MovieVideosResponseAdapter());
  registerAdapter(WatchProviderAdapter());
  registerAdapter(WatchProviderCountryAdapter());
  registerAdapter(WatchProvidersResponseAdapter());
  registerAdapter(SearchResultItemAdapter());
  registerAdapter(SearchMultiResponseAdapter());

  registerAdapter(ContentRatingItemAdapter());
  registerAdapter(TvContentRatingsResponseAdapter());
  registerAdapter(CreatorAdapter());
  registerAdapter(TvExternalIdsAdapter());
  registerAdapter(NetworkAdapter());
  registerAdapter(SeasonSummaryAdapter());
  registerAdapter(TvTranslationItemAdapter());
  registerAdapter(TvTranslationsResponseAdapter());

  registerAdapter(TvCastAdapter());
  registerAdapter(TvCrewAdapter());
  registerAdapter(TvCreditsResponseAdapter());
  registerAdapter(TvGenreAdapter());
  registerAdapter(TvShowDetailAdapter());  }
}