// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/download/downloads_bloc.dart' as _i5;
import '../../application/search_bloc/search_bloc.dart' as _i8;
import '../../infrastructure/downloads/DownloadRepo.dart' as _i4;
import '../../infrastructure/search/searchRepo.dart' as _i7;
import '../downloads/downloadReop.dart' as _i3;
import '../search/IsearchRepo.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DownloadRepo>(() => _i4.Repo());
  gh.factory<_i5.DownloadsBloc>(
      () => _i5.DownloadsBloc(get<_i3.DownloadRepo>()));
  gh.lazySingleton<_i6.ISearchRepo>(() => _i7.SearchRepo());
  gh.factory<_i8.SearchBloc>(
      () => _i8.SearchBloc(get<_i3.DownloadRepo>(), get<_i7.SearchRepo>()));
  return get;
}
