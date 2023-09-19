class ApiUrls {
  const ApiUrls();

  final _base = 'https://rickandmortyapi.com';

  ApiUrlEntity get base => ApiUrlEntity(_base);
  ApiUrlEntity get character => ApiUrlEntity('$_base/api/character');
  ApiUrlEntity get location => ApiUrlEntity('$_base/api/location');
  ApiUrlEntity get episode => ApiUrlEntity('$_base/api/episode');
}

class ApiUrlEntity {
  const ApiUrlEntity(this.path);

  final String path;

  Uri get url => Uri.parse(path);
}
