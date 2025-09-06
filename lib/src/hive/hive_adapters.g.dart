// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class AccountStatesAdapter extends TypeAdapter<AccountStates> {
  @override
  final typeId = 0;

  @override
  AccountStates read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AccountStates(
      id: (fields[0] as num).toInt(),
      favorite: fields[1] as bool,
      watchlist: fields[2] as bool,
      rated: fields[3] as dynamic,
      mediaType: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AccountStates obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.favorite)
      ..writeByte(2)
      ..write(obj.watchlist)
      ..writeByte(3)
      ..write(obj.rated)
      ..writeByte(4)
      ..write(obj.mediaType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountStatesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AccountDetailsAdapter extends TypeAdapter<AccountDetails> {
  @override
  final typeId = 1;

  @override
  AccountDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AccountDetails(
      id: (fields[0] as num).toInt(),
      name: fields[1] as String?,
      username: fields[2] as String,
      includeAdult: fields[3] as bool?,
      iso6391: fields[4] as String?,
      iso31661: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AccountDetails obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.username)
      ..writeByte(3)
      ..write(obj.includeAdult)
      ..writeByte(4)
      ..write(obj.iso6391)
      ..writeByte(5)
      ..write(obj.iso31661);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GuestSessionAdapter extends TypeAdapter<GuestSession> {
  @override
  final typeId = 2;

  @override
  GuestSession read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GuestSession(
      success: fields[0] as bool,
      guestSessionId: fields[1] as String,
      expiresAt: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, GuestSession obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.success)
      ..writeByte(1)
      ..write(obj.guestSessionId)
      ..writeByte(2)
      ..write(obj.expiresAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GuestSessionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ListActionResponseAdapter extends TypeAdapter<ListActionResponse> {
  @override
  final typeId = 3;

  @override
  ListActionResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ListActionResponse(
      success: fields[0] as bool,
      statusCode: (fields[1] as num).toInt(),
      statusMessage: fields[2] as String,
      listId: (fields[3] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, ListActionResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.success)
      ..writeByte(1)
      ..write(obj.statusCode)
      ..writeByte(2)
      ..write(obj.statusMessage)
      ..writeByte(3)
      ..write(obj.listId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListActionResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SessionResponseAdapter extends TypeAdapter<SessionResponse> {
  @override
  final typeId = 4;

  @override
  SessionResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SessionResponse(
      success: fields[0] as bool,
      sessionId: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SessionResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.success)
      ..writeByte(1)
      ..write(obj.sessionId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DiscoverMoviesResponseAdapter
    extends TypeAdapter<DiscoverMoviesResponse> {
  @override
  final typeId = 5;

  @override
  DiscoverMoviesResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiscoverMoviesResponse(
      page: (fields[0] as num).toInt(),
      results: (fields[1] as List).cast<MovieListItem>(),
      totalResults: (fields[2] as num).toInt(),
      totalPages: (fields[3] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, DiscoverMoviesResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.page)
      ..writeByte(1)
      ..write(obj.results)
      ..writeByte(2)
      ..write(obj.totalResults)
      ..writeByte(3)
      ..write(obj.totalPages);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiscoverMoviesResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DiscoverParamsAdapter extends TypeAdapter<DiscoverParams> {
  @override
  final typeId = 6;

  @override
  DiscoverParams read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiscoverParams(
      page: (fields[0] as num?)?.toInt(),
      sortBy: fields[1] as String?,
      includeAdult: fields[2] as bool?,
      withGenres: (fields[3] as List?)?.cast<int>(),
      year: (fields[4] as num?)?.toInt(),
      primaryReleaseYear: (fields[5] as num?)?.toInt(),
      voteCountGte: (fields[6] as num?)?.toInt(),
      voteAverageGte: (fields[7] as num?)?.toDouble(),
      withCompanies: (fields[8] as List?)?.cast<int>(),
      withWatchProviders: (fields[9] as List?)?.cast<int>(),
      withOriginalLanguage: fields[10] as String?,
      runtimeGte: (fields[11] as num?)?.toInt(),
      runtimeLte: (fields[12] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, DiscoverParams obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.page)
      ..writeByte(1)
      ..write(obj.sortBy)
      ..writeByte(2)
      ..write(obj.includeAdult)
      ..writeByte(3)
      ..write(obj.withGenres)
      ..writeByte(4)
      ..write(obj.year)
      ..writeByte(5)
      ..write(obj.primaryReleaseYear)
      ..writeByte(6)
      ..write(obj.voteCountGte)
      ..writeByte(7)
      ..write(obj.voteAverageGte)
      ..writeByte(8)
      ..write(obj.withCompanies)
      ..writeByte(9)
      ..write(obj.withWatchProviders)
      ..writeByte(10)
      ..write(obj.withOriginalLanguage)
      ..writeByte(11)
      ..write(obj.runtimeGte)
      ..writeByte(12)
      ..write(obj.runtimeLte);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiscoverParamsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ChangeItemAdapter extends TypeAdapter<ChangeItem> {
  @override
  final typeId = 7;

  @override
  ChangeItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChangeItem(
      id: (fields[0] as num).toInt(),
      adult: fields[1] as bool?,
      mediaType: fields[2] as String?,
      description: fields[3] as String?,
      originalTitle: fields[4] as String?,
      originalName: fields[5] as String?,
      title: fields[6] as String?,
      name: fields[7] as String?,
      profilePath: fields[8] as String?,
      changeType: fields[9] as String?,
      changes: (fields[10] as List?)?.cast<dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, ChangeItem obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.adult)
      ..writeByte(2)
      ..write(obj.mediaType)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.originalTitle)
      ..writeByte(5)
      ..write(obj.originalName)
      ..writeByte(6)
      ..write(obj.title)
      ..writeByte(7)
      ..write(obj.name)
      ..writeByte(8)
      ..write(obj.profilePath)
      ..writeByte(9)
      ..write(obj.changeType)
      ..writeByte(10)
      ..write(obj.changes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChangeItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ChangesResponseAdapter extends TypeAdapter<ChangesResponse> {
  @override
  final typeId = 8;

  @override
  ChangesResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChangesResponse(
      page: (fields[0] as num).toInt(),
      results: (fields[1] as List).cast<ChangeItem>(),
      totalPages: (fields[2] as num).toInt(),
      totalResults: (fields[3] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, ChangesResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.page)
      ..writeByte(1)
      ..write(obj.results)
      ..writeByte(2)
      ..write(obj.totalPages)
      ..writeByte(3)
      ..write(obj.totalResults);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChangesResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RatingResponseAdapter extends TypeAdapter<RatingResponse> {
  @override
  final typeId = 9;

  @override
  RatingResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RatingResponse(
      success: fields[0] as bool,
      statusCode: (fields[1] as num).toInt(),
      statusMessage: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RatingResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.success)
      ..writeByte(1)
      ..write(obj.statusCode)
      ..writeByte(2)
      ..write(obj.statusMessage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RatingResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TrendingResponseAdapter extends TypeAdapter<TrendingResponse> {
  @override
  final typeId = 10;

  @override
  TrendingResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TrendingResponse(
      page: (fields[0] as num).toInt(),
      results: (fields[1] as List).cast<SearchResultItem>(),
      totalPages: (fields[2] as num).toInt(),
      totalResults: (fields[3] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, TrendingResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.page)
      ..writeByte(1)
      ..write(obj.results)
      ..writeByte(2)
      ..write(obj.totalPages)
      ..writeByte(3)
      ..write(obj.totalResults);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrendingResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AlternativeTitleAdapter extends TypeAdapter<AlternativeTitle> {
  @override
  final typeId = 11;

  @override
  AlternativeTitle read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AlternativeTitle(
      id: (fields[0] as num).toInt(),
      iso31661: fields[1] as String,
      title: fields[2] as String,
      type: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AlternativeTitle obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.iso31661)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlternativeTitleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AlternativeTitlesResponseAdapter
    extends TypeAdapter<AlternativeTitlesResponse> {
  @override
  final typeId = 12;

  @override
  AlternativeTitlesResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AlternativeTitlesResponse(
      id: (fields[0] as num).toInt(),
      titles: (fields[1] as List).cast<AlternativeTitle>(),
    );
  }

  @override
  void write(BinaryWriter writer, AlternativeTitlesResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.titles);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlternativeTitlesResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CollectionPartAdapter extends TypeAdapter<CollectionPart> {
  @override
  final typeId = 13;

  @override
  CollectionPart read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CollectionPart(
      id: (fields[0] as num).toInt(),
      title: fields[1] as String,
      originalTitle: fields[2] as String?,
      posterPath: fields[3] as String?,
      backdropPath: fields[4] as String?,
      releaseDate: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CollectionPart obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.originalTitle)
      ..writeByte(3)
      ..write(obj.posterPath)
      ..writeByte(4)
      ..write(obj.backdropPath)
      ..writeByte(5)
      ..write(obj.releaseDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectionPartAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CollectionDetailsAdapter extends TypeAdapter<CollectionDetails> {
  @override
  final typeId = 14;

  @override
  CollectionDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CollectionDetails(
      id: (fields[0] as num).toInt(),
      name: fields[1] as String,
      overview: fields[2] as String?,
      posterPath: fields[3] as String?,
      backdropPath: fields[4] as String?,
      parts: (fields[5] as List).cast<CollectionPart>(),
    );
  }

  @override
  void write(BinaryWriter writer, CollectionDetails obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.overview)
      ..writeByte(3)
      ..write(obj.posterPath)
      ..writeByte(4)
      ..write(obj.backdropPath)
      ..writeByte(5)
      ..write(obj.parts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectionDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieGenreAdapter extends TypeAdapter<MovieGenre> {
  @override
  final typeId = 15;

  @override
  MovieGenre read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieGenre(
      id: (fields[0] as num).toInt(),
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MovieGenre obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieGenreAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenreListResponseAdapter extends TypeAdapter<GenreListResponse> {
  @override
  final typeId = 16;

  @override
  GenreListResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenreListResponse(genres: (fields[0] as List).cast<MovieGenre>());
  }

  @override
  void write(BinaryWriter writer, GenreListResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.genres);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenreListResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieImageAdapter extends TypeAdapter<MovieImage> {
  @override
  final typeId = 17;

  @override
  MovieImage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieImage(
      filePath: fields[0] as String,
      width: (fields[1] as num).toInt(),
      height: (fields[2] as num).toInt(),
      iso6391: fields[3] as String?,
      aspectRatio: (fields[4] as num).toDouble(),
      voteAverage: (fields[5] as num?)?.toDouble(),
      voteCount: (fields[6] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, MovieImage obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.filePath)
      ..writeByte(1)
      ..write(obj.width)
      ..writeByte(2)
      ..write(obj.height)
      ..writeByte(3)
      ..write(obj.iso6391)
      ..writeByte(4)
      ..write(obj.aspectRatio)
      ..writeByte(5)
      ..write(obj.voteAverage)
      ..writeByte(6)
      ..write(obj.voteCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieImagesResponseAdapter extends TypeAdapter<MovieImagesResponse> {
  @override
  final typeId = 18;

  @override
  MovieImagesResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieImagesResponse(
      id: (fields[0] as num).toInt(),
      backdrops: (fields[1] as List).cast<MovieImage>(),
      posters: (fields[2] as List).cast<MovieImage>(),
    );
  }

  @override
  void write(BinaryWriter writer, MovieImagesResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.backdrops)
      ..writeByte(2)
      ..write(obj.posters);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieImagesResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieKeywordAdapter extends TypeAdapter<MovieKeyword> {
  @override
  final typeId = 19;

  @override
  MovieKeyword read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieKeyword(
      id: (fields[0] as num).toInt(),
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MovieKeyword obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieKeywordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieKeywordsResponseAdapter extends TypeAdapter<MovieKeywordsResponse> {
  @override
  final typeId = 20;

  @override
  MovieKeywordsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieKeywordsResponse(
      id: (fields[0] as num).toInt(),
      keywords: (fields[1] as List).cast<MovieKeyword>(),
    );
  }

  @override
  void write(BinaryWriter writer, MovieKeywordsResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.keywords);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieKeywordsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieListItemDetailAdapter extends TypeAdapter<MovieListItemDetail> {
  @override
  final typeId = 21;

  @override
  MovieListItemDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieListItemDetail(
      id: (fields[0] as num).toInt(),
      title: fields[1] as String,
      posterPath: fields[2] as String?,
      backdropPath: fields[3] as String?,
      mediaType: fields[4] as String?,
      releaseDate: fields[5] as String?,
      originalTitle: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MovieListItemDetail obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.posterPath)
      ..writeByte(3)
      ..write(obj.backdropPath)
      ..writeByte(4)
      ..write(obj.mediaType)
      ..writeByte(5)
      ..write(obj.releaseDate)
      ..writeByte(6)
      ..write(obj.originalTitle);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieListItemDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieListDetailsAdapter extends TypeAdapter<MovieListDetails> {
  @override
  final typeId = 22;

  @override
  MovieListDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieListDetails(
      createdBy: fields[0] as String,
      description: fields[1] as String,
      favoriteCount: (fields[2] as num).toInt(),
      id: (fields[3] as num).toInt(),
      iso6391: fields[4] as String,
      itemCount: fields[5] as String,
      name: fields[6] as String,
      items: (fields[7] as List).cast<MovieListItemDetail>(),
    );
  }

  @override
  void write(BinaryWriter writer, MovieListDetails obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.createdBy)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.favoriteCount)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.iso6391)
      ..writeByte(5)
      ..write(obj.itemCount)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieListDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieListResponseAdapter extends TypeAdapter<MovieListResponse> {
  @override
  final typeId = 23;

  @override
  MovieListResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieListResponse(
      page: (fields[0] as num).toInt(),
      results: (fields[1] as List).cast<MovieListItem>(),
      totalResults: (fields[2] as num).toInt(),
      totalPages: (fields[3] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, MovieListResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.page)
      ..writeByte(1)
      ..write(obj.results)
      ..writeByte(2)
      ..write(obj.totalResults)
      ..writeByte(3)
      ..write(obj.totalPages);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieListResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieListItemAdapter extends TypeAdapter<MovieListItem> {
  @override
  final typeId = 24;

  @override
  MovieListItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieListItem(
      id: (fields[0] as num).toInt(),
      title: fields[1] as String,
      originalTitle: fields[2] as String?,
      overview: fields[3] as String?,
      posterPath: fields[4] as String?,
      backdropPath: fields[5] as String?,
      releaseDate: fields[6] as String?,
      voteAverage: (fields[7] as num?)?.toDouble(),
      voteCount: (fields[8] as num?)?.toInt(),
      popularity: (fields[9] as num?)?.toDouble(),
      adult: fields[10] as bool?,
      genreIds: (fields[11] as List?)?.cast<int>(),
      video: fields[12] as bool?,
      originalLanguage: fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MovieListItem obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.originalTitle)
      ..writeByte(3)
      ..write(obj.overview)
      ..writeByte(4)
      ..write(obj.posterPath)
      ..writeByte(5)
      ..write(obj.backdropPath)
      ..writeByte(6)
      ..write(obj.releaseDate)
      ..writeByte(7)
      ..write(obj.voteAverage)
      ..writeByte(8)
      ..write(obj.voteCount)
      ..writeByte(9)
      ..write(obj.popularity)
      ..writeByte(10)
      ..write(obj.adult)
      ..writeByte(11)
      ..write(obj.genreIds)
      ..writeByte(12)
      ..write(obj.video)
      ..writeByte(13)
      ..write(obj.originalLanguage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieListItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProductionCompanyAdapter extends TypeAdapter<ProductionCompany> {
  @override
  final typeId = 25;

  @override
  ProductionCompany read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductionCompany(
      id: (fields[0] as num).toInt(),
      logoPath: fields[1] as String?,
      name: fields[2] as String,
      originCountry: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductionCompany obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.logoPath)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.originCountry);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCompanyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProductionCountryAdapter extends TypeAdapter<ProductionCountry> {
  @override
  final typeId = 26;

  @override
  ProductionCountry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductionCountry(
      iso31661: fields[0] as String,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductionCountry obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.iso31661)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCountryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieRecommendationsResponseAdapter
    extends TypeAdapter<MovieRecommendationsResponse> {
  @override
  final typeId = 27;

  @override
  MovieRecommendationsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieRecommendationsResponse(
      page: (fields[0] as num).toInt(),
      results: (fields[1] as List).cast<MovieListItem>(),
      totalResults: (fields[2] as num).toInt(),
      totalPages: (fields[3] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, MovieRecommendationsResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.page)
      ..writeByte(1)
      ..write(obj.results)
      ..writeByte(2)
      ..write(obj.totalResults)
      ..writeByte(3)
      ..write(obj.totalPages);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieRecommendationsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieReviewAdapter extends TypeAdapter<MovieReview> {
  @override
  final typeId = 28;

  @override
  MovieReview read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieReview(
      id: fields[0] as String,
      author: fields[1] as String,
      authorDetails: (fields[2] as Map).cast<String, dynamic>(),
      content: fields[3] as String,
      createdAt: fields[4] as String,
      updatedAt: fields[5] as String,
      url: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MovieReview obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.author)
      ..writeByte(2)
      ..write(obj.authorDetails)
      ..writeByte(3)
      ..write(obj.content)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.updatedAt)
      ..writeByte(6)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieReviewAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieReviewsResponseAdapter extends TypeAdapter<MovieReviewsResponse> {
  @override
  final typeId = 29;

  @override
  MovieReviewsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieReviewsResponse(
      id: (fields[0] as num).toInt(),
      page: (fields[1] as num).toInt(),
      results: (fields[2] as List).cast<MovieReview>(),
      totalPages: (fields[3] as num).toInt(),
      totalResults: (fields[4] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, MovieReviewsResponse obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.page)
      ..writeByte(2)
      ..write(obj.results)
      ..writeByte(3)
      ..write(obj.totalPages)
      ..writeByte(4)
      ..write(obj.totalResults);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieReviewsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TranslationDataAdapter extends TypeAdapter<TranslationData> {
  @override
  final typeId = 30;

  @override
  TranslationData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TranslationData(
      title: fields[0] as String?,
      overview: fields[1] as String?,
      homepage: fields[2] as String?,
      tagline: fields[3] as String?,
      runtime: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TranslationData obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.overview)
      ..writeByte(2)
      ..write(obj.homepage)
      ..writeByte(3)
      ..write(obj.tagline)
      ..writeByte(4)
      ..write(obj.runtime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TranslationDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TranslationItemAdapter extends TypeAdapter<TranslationItem> {
  @override
  final typeId = 31;

  @override
  TranslationItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TranslationItem(
      iso6391: fields[0] as String,
      name: fields[1] as String,
      englishName: fields[2] as String,
      data: fields[3] as TranslationData,
    );
  }

  @override
  void write(BinaryWriter writer, TranslationItem obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.iso6391)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.englishName)
      ..writeByte(3)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TranslationItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TranslationsResponseAdapter extends TypeAdapter<TranslationsResponse> {
  @override
  final typeId = 32;

  @override
  TranslationsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TranslationsResponse(
      id: (fields[0] as num).toInt(),
      translations: (fields[1] as List).cast<TranslationItem>(),
    );
  }

  @override
  void write(BinaryWriter writer, TranslationsResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.translations);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TranslationsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieVideoAdapter extends TypeAdapter<MovieVideo> {
  @override
  final typeId = 33;

  @override
  MovieVideo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieVideo(
      id: fields[0] as String,
      iso6391: fields[1] as String?,
      iso31661: fields[2] as String?,
      key: fields[3] as String,
      name: fields[4] as String,
      site: fields[5] as String,
      size: (fields[6] as num?)?.toInt(),
      type: fields[7] as String,
      official: fields[8] as bool?,
      publishedAt: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MovieVideo obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.iso6391)
      ..writeByte(2)
      ..write(obj.iso31661)
      ..writeByte(3)
      ..write(obj.key)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.site)
      ..writeByte(6)
      ..write(obj.size)
      ..writeByte(7)
      ..write(obj.type)
      ..writeByte(8)
      ..write(obj.official)
      ..writeByte(9)
      ..write(obj.publishedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieVideoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieVideosResponseAdapter extends TypeAdapter<MovieVideosResponse> {
  @override
  final typeId = 34;

  @override
  MovieVideosResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieVideosResponse(
      id: (fields[0] as num).toInt(),
      results: (fields[1] as List).cast<MovieVideo>(),
    );
  }

  @override
  void write(BinaryWriter writer, MovieVideosResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.results);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieVideosResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WatchProviderAdapter extends TypeAdapter<WatchProvider> {
  @override
  final typeId = 35;

  @override
  WatchProvider read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WatchProvider(
      providerId: (fields[0] as num).toInt(),
      providerName: fields[1] as String,
      logoPath: fields[2] as String?,
      displayPriority: (fields[3] as num?)?.toInt(),
      type: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, WatchProvider obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.providerId)
      ..writeByte(1)
      ..write(obj.providerName)
      ..writeByte(2)
      ..write(obj.logoPath)
      ..writeByte(3)
      ..write(obj.displayPriority)
      ..writeByte(4)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WatchProviderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WatchProviderCountryAdapter extends TypeAdapter<WatchProviderCountry> {
  @override
  final typeId = 36;

  @override
  WatchProviderCountry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WatchProviderCountry(
      link: fields[0] as String?,
      flatrate: (fields[1] as List?)?.cast<WatchProvider>(),
      rent: (fields[2] as List?)?.cast<WatchProvider>(),
      buy: (fields[3] as List?)?.cast<WatchProvider>(),
      ads: (fields[4] as List?)?.cast<WatchProvider>(),
    );
  }

  @override
  void write(BinaryWriter writer, WatchProviderCountry obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.link)
      ..writeByte(1)
      ..write(obj.flatrate)
      ..writeByte(2)
      ..write(obj.rent)
      ..writeByte(3)
      ..write(obj.buy)
      ..writeByte(4)
      ..write(obj.ads);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WatchProviderCountryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WatchProvidersResponseAdapter
    extends TypeAdapter<WatchProvidersResponse> {
  @override
  final typeId = 37;

  @override
  WatchProvidersResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WatchProvidersResponse(
      id: (fields[0] as num).toInt(),
      results: (fields[1] as Map).cast<String, WatchProviderCountry>(),
    );
  }

  @override
  void write(BinaryWriter writer, WatchProvidersResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.results);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WatchProvidersResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SearchResultItemAdapter extends TypeAdapter<SearchResultItem> {
  @override
  final typeId = 38;

  @override
  SearchResultItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchResultItem(
      id: (fields[0] as num).toInt(),
      mediaType: fields[1] as String,
      title: fields[2] as String?,
      originalTitle: fields[3] as String?,
      releaseDate: fields[4] as String?,
      name: fields[5] as String?,
      originalName: fields[6] as String?,
      firstAirDate: fields[7] as String?,
      overview: fields[8] as String?,
      posterPath: fields[9] as String?,
      backdropPath: fields[10] as String?,
      profilePath: fields[11] as String?,
      popularity: (fields[12] as num?)?.toDouble(),
      voteAverage: (fields[13] as num?)?.toDouble(),
      voteCount: (fields[14] as num?)?.toInt(),
      knownFor: (fields[15] as List?)?.cast<MovieListItemDetail>(),
      knownForDepartment: fields[16] as String?,
      gender: (fields[17] as num?)?.toInt(),
      adult: fields[18] as bool?,
      originalLanguage: fields[19] as String?,
      genreIds: (fields[20] as List?)?.cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, SearchResultItem obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.mediaType)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.originalTitle)
      ..writeByte(4)
      ..write(obj.releaseDate)
      ..writeByte(5)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.originalName)
      ..writeByte(7)
      ..write(obj.firstAirDate)
      ..writeByte(8)
      ..write(obj.overview)
      ..writeByte(9)
      ..write(obj.posterPath)
      ..writeByte(10)
      ..write(obj.backdropPath)
      ..writeByte(11)
      ..write(obj.profilePath)
      ..writeByte(12)
      ..write(obj.popularity)
      ..writeByte(13)
      ..write(obj.voteAverage)
      ..writeByte(14)
      ..write(obj.voteCount)
      ..writeByte(15)
      ..write(obj.knownFor)
      ..writeByte(16)
      ..write(obj.knownForDepartment)
      ..writeByte(17)
      ..write(obj.gender)
      ..writeByte(18)
      ..write(obj.adult)
      ..writeByte(19)
      ..write(obj.originalLanguage)
      ..writeByte(20)
      ..write(obj.genreIds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchResultItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SearchMultiResponseAdapter extends TypeAdapter<SearchMultiResponse> {
  @override
  final typeId = 39;

  @override
  SearchMultiResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchMultiResponse(
      page: (fields[0] as num).toInt(),
      results: (fields[1] as List).cast<SearchResultItem>(),
      totalResults: (fields[2] as num).toInt(),
      totalPages: (fields[3] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, SearchMultiResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.page)
      ..writeByte(1)
      ..write(obj.results)
      ..writeByte(2)
      ..write(obj.totalResults)
      ..writeByte(3)
      ..write(obj.totalPages);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchMultiResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ContentRatingItemAdapter extends TypeAdapter<ContentRatingItem> {
  @override
  final typeId = 40;

  @override
  ContentRatingItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ContentRatingItem(
      iso31661: fields[0] as String,
      rating: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ContentRatingItem obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.iso31661)
      ..writeByte(1)
      ..write(obj.rating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContentRatingItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TvContentRatingsResponseAdapter
    extends TypeAdapter<TvContentRatingsResponse> {
  @override
  final typeId = 41;

  @override
  TvContentRatingsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TvContentRatingsResponse(
      id: (fields[0] as num).toInt(),
      results: (fields[1] as List).cast<ContentRatingItem>(),
    );
  }

  @override
  void write(BinaryWriter writer, TvContentRatingsResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.results);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TvContentRatingsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CreatorAdapter extends TypeAdapter<Creator> {
  @override
  final typeId = 42;

  @override
  Creator read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Creator(
      id: (fields[0] as num).toInt(),
      name: fields[1] as String,
      creditId: fields[2] as String?,
      gender: (fields[3] as num?)?.toInt(),
      profilePath: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Creator obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.creditId)
      ..writeByte(3)
      ..write(obj.gender)
      ..writeByte(4)
      ..write(obj.profilePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreatorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TvExternalIdsAdapter extends TypeAdapter<TvExternalIds> {
  @override
  final typeId = 43;

  @override
  TvExternalIds read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TvExternalIds(
      id: (fields[0] as num).toInt(),
      imdbId: fields[1] as String?,
      freebaseMid: fields[2] as String?,
      freebaseId: fields[3] as String?,
      tvdbId: fields[4] as String?,
      tvrageId: fields[5] as String?,
      facebookId: fields[6] as String?,
      instagramId: fields[7] as String?,
      twitterId: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TvExternalIds obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.imdbId)
      ..writeByte(2)
      ..write(obj.freebaseMid)
      ..writeByte(3)
      ..write(obj.freebaseId)
      ..writeByte(4)
      ..write(obj.tvdbId)
      ..writeByte(5)
      ..write(obj.tvrageId)
      ..writeByte(6)
      ..write(obj.facebookId)
      ..writeByte(7)
      ..write(obj.instagramId)
      ..writeByte(8)
      ..write(obj.twitterId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TvExternalIdsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NetworkAdapter extends TypeAdapter<Network> {
  @override
  final typeId = 44;

  @override
  Network read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Network(
      id: (fields[0] as num).toInt(),
      name: fields[1] as String,
      logoPath: fields[2] as String?,
      originCountry: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Network obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.logoPath)
      ..writeByte(3)
      ..write(obj.originCountry);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SeasonSummaryAdapter extends TypeAdapter<SeasonSummary> {
  @override
  final typeId = 45;

  @override
  SeasonSummary read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SeasonSummary(
      airDate: fields[0] as String?,
      episodeCount: (fields[1] as num).toInt(),
      id: (fields[2] as num).toInt(),
      name: fields[3] as String,
      overview: fields[4] as String?,
      posterPath: fields[5] as String?,
      seasonNumber: (fields[6] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, SeasonSummary obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.airDate)
      ..writeByte(1)
      ..write(obj.episodeCount)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.overview)
      ..writeByte(5)
      ..write(obj.posterPath)
      ..writeByte(6)
      ..write(obj.seasonNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeasonSummaryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TvTranslationItemAdapter extends TypeAdapter<TvTranslationItem> {
  @override
  final typeId = 46;

  @override
  TvTranslationItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TvTranslationItem(
      iso6391: fields[0] as String,
      name: fields[1] as String,
      englishName: fields[2] as String,
      data: fields[3] as TvTranslationData,
    );
  }

  @override
  void write(BinaryWriter writer, TvTranslationItem obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.iso6391)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.englishName)
      ..writeByte(3)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TvTranslationItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TvTranslationsResponseAdapter
    extends TypeAdapter<TvTranslationsResponse> {
  @override
  final typeId = 47;

  @override
  TvTranslationsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TvTranslationsResponse(
      id: (fields[0] as num).toInt(),
      translations: (fields[1] as List).cast<TvTranslationItem>(),
    );
  }

  @override
  void write(BinaryWriter writer, TvTranslationsResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.translations);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TvTranslationsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TvCastAdapter extends TypeAdapter<TvCast> {
  @override
  final typeId = 48;

  @override
  TvCast read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TvCast(
      castId: (fields[0] as num?)?.toInt(),
      character: fields[1] as String?,
      creditId: fields[2] as String,
      gender: (fields[3] as num?)?.toInt(),
      id: (fields[4] as num).toInt(),
      name: fields[5] as String,
      order: (fields[6] as num?)?.toInt(),
      profilePath: fields[7] as String?,
      knownForDepartment: fields[8] as String?,
      popularity: (fields[9] as num?)?.toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, TvCast obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.castId)
      ..writeByte(1)
      ..write(obj.character)
      ..writeByte(2)
      ..write(obj.creditId)
      ..writeByte(3)
      ..write(obj.gender)
      ..writeByte(4)
      ..write(obj.id)
      ..writeByte(5)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.order)
      ..writeByte(7)
      ..write(obj.profilePath)
      ..writeByte(8)
      ..write(obj.knownForDepartment)
      ..writeByte(9)
      ..write(obj.popularity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TvCastAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TvCrewAdapter extends TypeAdapter<TvCrew> {
  @override
  final typeId = 49;

  @override
  TvCrew read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TvCrew(
      creditId: fields[0] as String,
      department: fields[1] as String?,
      job: fields[2] as String?,
      gender: (fields[3] as num?)?.toInt(),
      id: (fields[4] as num).toInt(),
      name: fields[5] as String,
      profilePath: fields[6] as String?,
      knownForDepartment: fields[7] as String?,
      popularity: (fields[8] as num?)?.toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, TvCrew obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.creditId)
      ..writeByte(1)
      ..write(obj.department)
      ..writeByte(2)
      ..write(obj.job)
      ..writeByte(3)
      ..write(obj.gender)
      ..writeByte(4)
      ..write(obj.id)
      ..writeByte(5)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.profilePath)
      ..writeByte(7)
      ..write(obj.knownForDepartment)
      ..writeByte(8)
      ..write(obj.popularity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TvCrewAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TvCreditsResponseAdapter extends TypeAdapter<TvCreditsResponse> {
  @override
  final typeId = 50;

  @override
  TvCreditsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TvCreditsResponse(
      id: (fields[0] as num).toInt(),
      cast: (fields[1] as List).cast<TvCast>(),
      crew: (fields[2] as List).cast<TvCrew>(),
    );
  }

  @override
  void write(BinaryWriter writer, TvCreditsResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cast)
      ..writeByte(2)
      ..write(obj.crew);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TvCreditsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TvGenreAdapter extends TypeAdapter<TvGenre> {
  @override
  final typeId = 51;

  @override
  TvGenre read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TvGenre(id: (fields[0] as num).toInt(), name: fields[1] as String);
  }

  @override
  void write(BinaryWriter writer, TvGenre obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TvGenreAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TvShowDetailAdapter extends TypeAdapter<TvShowDetail> {
  @override
  final typeId = 52;

  @override
  TvShowDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TvShowDetail(
      id: (fields[0] as num).toInt(),
      name: fields[1] as String,
      originalName: fields[2] as String?,
      overview: fields[3] as String?,
      firstAirDate: fields[4] as String?,
      lastAirDate: fields[5] as String?,
      numberOfSeasons: (fields[6] as num?)?.toInt(),
      numberOfEpisodes: (fields[7] as num?)?.toInt(),
      status: fields[8] as String?,
      type: fields[9] as String?,
      homepage: fields[10] as String?,
      inProduction: fields[11] as bool?,
      languages: (fields[12] as List?)?.cast<String>(),
      originCountry: (fields[13] as List?)?.cast<String>(),
      originalLanguage: fields[14] as String?,
      episodeRunTime: (fields[15] as List?)?.cast<int>(),
      genres: (fields[16] as List?)?.cast<TvGenre>(),
      networks: (fields[17] as List?)?.cast<Network>(),
      createdBy: (fields[18] as List?)?.cast<Creator>(),
      seasons: (fields[19] as List?)?.cast<SeasonSummary>(),
      productionCompanies: (fields[20] as List?)?.cast<ProductionCompany>(),
      productionCountries: (fields[21] as List?)?.cast<ProductionCountry>(),
      posterPath: fields[22] as String?,
      backdropPath: fields[23] as String?,
      voteAverage: (fields[24] as num?)?.toDouble(),
      voteCount: (fields[25] as num?)?.toInt(),
      popularity: (fields[26] as num?)?.toDouble(),
      tagline: fields[27] as String?,
      createdByIds: (fields[28] as List?)?.cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, TvShowDetail obj) {
    writer
      ..writeByte(29)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.originalName)
      ..writeByte(3)
      ..write(obj.overview)
      ..writeByte(4)
      ..write(obj.firstAirDate)
      ..writeByte(5)
      ..write(obj.lastAirDate)
      ..writeByte(6)
      ..write(obj.numberOfSeasons)
      ..writeByte(7)
      ..write(obj.numberOfEpisodes)
      ..writeByte(8)
      ..write(obj.status)
      ..writeByte(9)
      ..write(obj.type)
      ..writeByte(10)
      ..write(obj.homepage)
      ..writeByte(11)
      ..write(obj.inProduction)
      ..writeByte(12)
      ..write(obj.languages)
      ..writeByte(13)
      ..write(obj.originCountry)
      ..writeByte(14)
      ..write(obj.originalLanguage)
      ..writeByte(15)
      ..write(obj.episodeRunTime)
      ..writeByte(16)
      ..write(obj.genres)
      ..writeByte(17)
      ..write(obj.networks)
      ..writeByte(18)
      ..write(obj.createdBy)
      ..writeByte(19)
      ..write(obj.seasons)
      ..writeByte(20)
      ..write(obj.productionCompanies)
      ..writeByte(21)
      ..write(obj.productionCountries)
      ..writeByte(22)
      ..write(obj.posterPath)
      ..writeByte(23)
      ..write(obj.backdropPath)
      ..writeByte(24)
      ..write(obj.voteAverage)
      ..writeByte(25)
      ..write(obj.voteCount)
      ..writeByte(26)
      ..write(obj.popularity)
      ..writeByte(27)
      ..write(obj.tagline)
      ..writeByte(28)
      ..write(obj.createdByIds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TvShowDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
