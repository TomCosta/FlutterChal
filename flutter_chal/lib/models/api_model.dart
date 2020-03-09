class Api_model {
  String iso6391;
  int id;
  int page;
  String iso31661;
  int totalResults;
  ObjectIds objectIds;
  int revenue;
  int totalPages;
  String name;
  bool public;
  Comments comments;
  String sortBy;
  String description;
  String backdropPath;
  List<Results> results;
  double averageRating;
  int runtime;
  CreatedBy createdBy;
  String posterPath;

  Api_model(
      {this.iso6391,
      this.id,
      this.page,
      this.iso31661,
      this.totalResults,
      this.objectIds,
      this.revenue,
      this.totalPages,
      this.name,
      this.public,
      this.comments,
      this.sortBy,
      this.description,
      this.backdropPath,
      this.results,
      this.averageRating,
      this.runtime,
      this.createdBy,
      this.posterPath});

  Api_model.fromJson(Map<String, dynamic> json) {
    iso6391 = json['iso_639_1'];
    id = json['id'];
    page = json['page'];
    iso31661 = json['iso_3166_1'];
    totalResults = json['total_results'];
    objectIds = json['object_ids'] != null
        ? new ObjectIds.fromJson(json['object_ids'])
        : null;
    revenue = json['revenue'];
    totalPages = json['total_pages'];
    name = json['name'];
    public = json['public'];
    comments = json['comments'] != null
        ? new Comments.fromJson(json['comments'])
        : null;
    sortBy = json['sort_by'];
    description = json['description'];
    backdropPath = json['backdrop_path'];
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
    averageRating = json['average_rating'];
    runtime = json['runtime'];
    createdBy = json['created_by'] != null
        ? new CreatedBy.fromJson(json['created_by'])
        : null;
    posterPath = json['poster_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iso_639_1'] = this.iso6391;
    data['id'] = this.id;
    data['page'] = this.page;
    data['iso_3166_1'] = this.iso31661;
    data['total_results'] = this.totalResults;
    if (this.objectIds != null) {
      data['object_ids'] = this.objectIds.toJson();
    }
    data['revenue'] = this.revenue;
    data['total_pages'] = this.totalPages;
    data['name'] = this.name;
    data['public'] = this.public;
    if (this.comments != null) {
      data['comments'] = this.comments.toJson();
    }
    data['sort_by'] = this.sortBy;
    data['description'] = this.description;
    data['backdrop_path'] = this.backdropPath;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    data['average_rating'] = this.averageRating;
    data['runtime'] = this.runtime;
    if (this.createdBy != null) {
      data['created_by'] = this.createdBy.toJson();
    }
    data['poster_path'] = this.posterPath;
    return data;
  }
}

class ObjectIds {
  String movie9947;
  String movie9480;
  String movie8867;
  String movie13056;
  String movie1930;
  String movie71676;
  String movie127585;
  String movie1771;
  String movie284053;
  String movie36648;
  String movie100402;
  String movie271110;
  String movie1979;
  String movie49538;
  String movie76170;
  String movie1927;
  String movie166424;
  String movie2080;
  String movie283995;
  String movie36586;
  String movie24428;
  String movie284052;
  String movie36658;
  String movie10658;
  String movie246655;
  String movie559;
  String movie293660;
  String movie22059;
  String movie558;
  String movie263115;
  String movie13995;
  String movie118340;
  String movie102382;
  String movie76338;
  String movie36657;
  String movie7220;
  String movie1250;
  String movie10138;
  String movie1726;
  String movie36647;
  String movie9738;
  String movie10195;
  String movie102899;
  String movie1724;
  String movie315635;
  String movie36668;
  String movie68721;
  String movie557;
  String movie99861;

  ObjectIds(
      {this.movie9947,
      this.movie9480,
      this.movie8867,
      this.movie13056,
      this.movie1930,
      this.movie71676,
      this.movie127585,
      this.movie1771,
      this.movie284053,
      this.movie36648,
      this.movie100402,
      this.movie271110,
      this.movie1979,
      this.movie49538,
      this.movie76170,
      this.movie1927,
      this.movie166424,
      this.movie2080,
      this.movie283995,
      this.movie36586,
      this.movie24428,
      this.movie284052,
      this.movie36658,
      this.movie10658,
      this.movie246655,
      this.movie559,
      this.movie293660,
      this.movie22059,
      this.movie558,
      this.movie263115,
      this.movie13995,
      this.movie118340,
      this.movie102382,
      this.movie76338,
      this.movie36657,
      this.movie7220,
      this.movie1250,
      this.movie10138,
      this.movie1726,
      this.movie36647,
      this.movie9738,
      this.movie10195,
      this.movie102899,
      this.movie1724,
      this.movie315635,
      this.movie36668,
      this.movie68721,
      this.movie557,
      this.movie99861});

  ObjectIds.fromJson(Map<String, dynamic> json) {
    movie9947 = json['movie:9947'];
    movie9480 = json['movie:9480'];
    movie8867 = json['movie:8867'];
    movie13056 = json['movie:13056'];
    movie1930 = json['movie:1930'];
    movie71676 = json['movie:71676'];
    movie127585 = json['movie:127585'];
    movie1771 = json['movie:1771'];
    movie284053 = json['movie:284053'];
    movie36648 = json['movie:36648'];
    movie100402 = json['movie:100402'];
    movie271110 = json['movie:271110'];
    movie1979 = json['movie:1979'];
    movie49538 = json['movie:49538'];
    movie76170 = json['movie:76170'];
    movie1927 = json['movie:1927'];
    movie166424 = json['movie:166424'];
    movie2080 = json['movie:2080'];
    movie283995 = json['movie:283995'];
    movie36586 = json['movie:36586'];
    movie24428 = json['movie:24428'];
    movie284052 = json['movie:284052'];
    movie36658 = json['movie:36658'];
    movie10658 = json['movie:10658'];
    movie246655 = json['movie:246655'];
    movie559 = json['movie:559'];
    movie293660 = json['movie:293660'];
    movie22059 = json['movie:22059'];
    movie558 = json['movie:558'];
    movie263115 = json['movie:263115'];
    movie13995 = json['movie:13995'];
    movie118340 = json['movie:118340'];
    movie102382 = json['movie:102382'];
    movie76338 = json['movie:76338'];
    movie36657 = json['movie:36657'];
    movie7220 = json['movie:7220'];
    movie1250 = json['movie:1250'];
    movie10138 = json['movie:10138'];
    movie1726 = json['movie:1726'];
    movie36647 = json['movie:36647'];
    movie9738 = json['movie:9738'];
    movie10195 = json['movie:10195'];
    movie102899 = json['movie:102899'];
    movie1724 = json['movie:1724'];
    movie315635 = json['movie:315635'];
    movie36668 = json['movie:36668'];
    movie68721 = json['movie:68721'];
    movie557 = json['movie:557'];
    movie99861 = json['movie:99861'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['movie:9947'] = this.movie9947;
    data['movie:9480'] = this.movie9480;
    data['movie:8867'] = this.movie8867;
    data['movie:13056'] = this.movie13056;
    data['movie:1930'] = this.movie1930;
    data['movie:71676'] = this.movie71676;
    data['movie:127585'] = this.movie127585;
    data['movie:1771'] = this.movie1771;
    data['movie:284053'] = this.movie284053;
    data['movie:36648'] = this.movie36648;
    data['movie:100402'] = this.movie100402;
    data['movie:271110'] = this.movie271110;
    data['movie:1979'] = this.movie1979;
    data['movie:49538'] = this.movie49538;
    data['movie:76170'] = this.movie76170;
    data['movie:1927'] = this.movie1927;
    data['movie:166424'] = this.movie166424;
    data['movie:2080'] = this.movie2080;
    data['movie:283995'] = this.movie283995;
    data['movie:36586'] = this.movie36586;
    data['movie:24428'] = this.movie24428;
    data['movie:284052'] = this.movie284052;
    data['movie:36658'] = this.movie36658;
    data['movie:10658'] = this.movie10658;
    data['movie:246655'] = this.movie246655;
    data['movie:559'] = this.movie559;
    data['movie:293660'] = this.movie293660;
    data['movie:22059'] = this.movie22059;
    data['movie:558'] = this.movie558;
    data['movie:263115'] = this.movie263115;
    data['movie:13995'] = this.movie13995;
    data['movie:118340'] = this.movie118340;
    data['movie:102382'] = this.movie102382;
    data['movie:76338'] = this.movie76338;
    data['movie:36657'] = this.movie36657;
    data['movie:7220'] = this.movie7220;
    data['movie:1250'] = this.movie1250;
    data['movie:10138'] = this.movie10138;
    data['movie:1726'] = this.movie1726;
    data['movie:36647'] = this.movie36647;
    data['movie:9738'] = this.movie9738;
    data['movie:10195'] = this.movie10195;
    data['movie:102899'] = this.movie102899;
    data['movie:1724'] = this.movie1724;
    data['movie:315635'] = this.movie315635;
    data['movie:36668'] = this.movie36668;
    data['movie:68721'] = this.movie68721;
    data['movie:557'] = this.movie557;
    data['movie:99861'] = this.movie99861;
    return data;
  }
}

class Comments {
  Null movie9947;
  Null movie9480;
  Null movie8867;
  Null movie13056;
  Null movie1930;
  Null movie71676;
  Null movie127585;
  Null movie1771;
  Null movie284053;
  Null movie36648;
  Null movie100402;
  Null movie271110;
  Null movie1979;
  Null movie49538;
  Null movie76170;
  Null movie1927;
  Null movie166424;
  Null movie2080;
  Null movie283995;
  Null movie36586;
  Null movie24428;
  Null movie284052;
  Null movie36658;
  Null movie10658;
  Null movie246655;
  Null movie559;
  Null movie293660;
  Null movie22059;
  Null movie558;
  Null movie263115;
  Null movie13995;
  Null movie118340;
  Null movie102382;
  Null movie76338;
  Null movie36657;
  Null movie7220;
  Null movie1250;
  Null movie10138;
  Null movie1726;
  Null movie36647;
  Null movie9738;
  Null movie10195;
  Null movie102899;
  Null movie1724;
  Null movie315635;
  Null movie36668;
  Null movie68721;
  Null movie557;
  Null movie99861;

  Comments(
      {this.movie9947,
      this.movie9480,
      this.movie8867,
      this.movie13056,
      this.movie1930,
      this.movie71676,
      this.movie127585,
      this.movie1771,
      this.movie284053,
      this.movie36648,
      this.movie100402,
      this.movie271110,
      this.movie1979,
      this.movie49538,
      this.movie76170,
      this.movie1927,
      this.movie166424,
      this.movie2080,
      this.movie283995,
      this.movie36586,
      this.movie24428,
      this.movie284052,
      this.movie36658,
      this.movie10658,
      this.movie246655,
      this.movie559,
      this.movie293660,
      this.movie22059,
      this.movie558,
      this.movie263115,
      this.movie13995,
      this.movie118340,
      this.movie102382,
      this.movie76338,
      this.movie36657,
      this.movie7220,
      this.movie1250,
      this.movie10138,
      this.movie1726,
      this.movie36647,
      this.movie9738,
      this.movie10195,
      this.movie102899,
      this.movie1724,
      this.movie315635,
      this.movie36668,
      this.movie68721,
      this.movie557,
      this.movie99861});

  Comments.fromJson(Map<String, dynamic> json) {
    movie9947 = json['movie:9947'];
    movie9480 = json['movie:9480'];
    movie8867 = json['movie:8867'];
    movie13056 = json['movie:13056'];
    movie1930 = json['movie:1930'];
    movie71676 = json['movie:71676'];
    movie127585 = json['movie:127585'];
    movie1771 = json['movie:1771'];
    movie284053 = json['movie:284053'];
    movie36648 = json['movie:36648'];
    movie100402 = json['movie:100402'];
    movie271110 = json['movie:271110'];
    movie1979 = json['movie:1979'];
    movie49538 = json['movie:49538'];
    movie76170 = json['movie:76170'];
    movie1927 = json['movie:1927'];
    movie166424 = json['movie:166424'];
    movie2080 = json['movie:2080'];
    movie283995 = json['movie:283995'];
    movie36586 = json['movie:36586'];
    movie24428 = json['movie:24428'];
    movie284052 = json['movie:284052'];
    movie36658 = json['movie:36658'];
    movie10658 = json['movie:10658'];
    movie246655 = json['movie:246655'];
    movie559 = json['movie:559'];
    movie293660 = json['movie:293660'];
    movie22059 = json['movie:22059'];
    movie558 = json['movie:558'];
    movie263115 = json['movie:263115'];
    movie13995 = json['movie:13995'];
    movie118340 = json['movie:118340'];
    movie102382 = json['movie:102382'];
    movie76338 = json['movie:76338'];
    movie36657 = json['movie:36657'];
    movie7220 = json['movie:7220'];
    movie1250 = json['movie:1250'];
    movie10138 = json['movie:10138'];
    movie1726 = json['movie:1726'];
    movie36647 = json['movie:36647'];
    movie9738 = json['movie:9738'];
    movie10195 = json['movie:10195'];
    movie102899 = json['movie:102899'];
    movie1724 = json['movie:1724'];
    movie315635 = json['movie:315635'];
    movie36668 = json['movie:36668'];
    movie68721 = json['movie:68721'];
    movie557 = json['movie:557'];
    movie99861 = json['movie:99861'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['movie:9947'] = this.movie9947;
    data['movie:9480'] = this.movie9480;
    data['movie:8867'] = this.movie8867;
    data['movie:13056'] = this.movie13056;
    data['movie:1930'] = this.movie1930;
    data['movie:71676'] = this.movie71676;
    data['movie:127585'] = this.movie127585;
    data['movie:1771'] = this.movie1771;
    data['movie:284053'] = this.movie284053;
    data['movie:36648'] = this.movie36648;
    data['movie:100402'] = this.movie100402;
    data['movie:271110'] = this.movie271110;
    data['movie:1979'] = this.movie1979;
    data['movie:49538'] = this.movie49538;
    data['movie:76170'] = this.movie76170;
    data['movie:1927'] = this.movie1927;
    data['movie:166424'] = this.movie166424;
    data['movie:2080'] = this.movie2080;
    data['movie:283995'] = this.movie283995;
    data['movie:36586'] = this.movie36586;
    data['movie:24428'] = this.movie24428;
    data['movie:284052'] = this.movie284052;
    data['movie:36658'] = this.movie36658;
    data['movie:10658'] = this.movie10658;
    data['movie:246655'] = this.movie246655;
    data['movie:559'] = this.movie559;
    data['movie:293660'] = this.movie293660;
    data['movie:22059'] = this.movie22059;
    data['movie:558'] = this.movie558;
    data['movie:263115'] = this.movie263115;
    data['movie:13995'] = this.movie13995;
    data['movie:118340'] = this.movie118340;
    data['movie:102382'] = this.movie102382;
    data['movie:76338'] = this.movie76338;
    data['movie:36657'] = this.movie36657;
    data['movie:7220'] = this.movie7220;
    data['movie:1250'] = this.movie1250;
    data['movie:10138'] = this.movie10138;
    data['movie:1726'] = this.movie1726;
    data['movie:36647'] = this.movie36647;
    data['movie:9738'] = this.movie9738;
    data['movie:10195'] = this.movie10195;
    data['movie:102899'] = this.movie102899;
    data['movie:1724'] = this.movie1724;
    data['movie:315635'] = this.movie315635;
    data['movie:36668'] = this.movie36668;
    data['movie:68721'] = this.movie68721;
    data['movie:557'] = this.movie557;
    data['movie:99861'] = this.movie99861;
    return data;
  }
}

class Results {
  String posterPath;
  double popularity;
  int voteCount;
  bool video;
  String mediaType;
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String title;
  double voteAverage;
  String overview;
  String releaseDate;

  Results(
      {this.posterPath,
      this.popularity,
      this.voteCount,
      this.video,
      this.mediaType,
      this.id,
      this.adult,
      this.backdropPath,
      this.originalLanguage,
      this.originalTitle,
      this.genreIds,
      this.title,
      this.voteAverage,
      this.overview,
      this.releaseDate});

  Results.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    popularity = json['popularity'];
    voteCount = json['vote_count'];
    video = json['video'];
    mediaType = json['media_type'];
    id = json['id'];
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'].cast<int>();
    title = json['title'];
    voteAverage = json['vote_average'];
    overview = json['overview'];
    releaseDate = json['release_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['poster_path'] = this.posterPath;
    data['popularity'] = this.popularity;
    data['vote_count'] = this.voteCount;
    data['video'] = this.video;
    data['media_type'] = this.mediaType;
    data['id'] = this.id;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['genre_ids'] = this.genreIds;
    data['title'] = this.title;
    data['vote_average'] = this.voteAverage;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    return data;
  }
}

class CreatedBy {
  String gravatarHash;
  String name;
  String username;
  String id;

  CreatedBy({this.gravatarHash, this.name, this.username, this.id});

  CreatedBy.fromJson(Map<String, dynamic> json) {
    gravatarHash = json['gravatar_hash'];
    name = json['name'];
    username = json['username'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gravatar_hash'] = this.gravatarHash;
    data['name'] = this.name;
    data['username'] = this.username;
    data['id'] = this.id;
    return data;
  }
}
