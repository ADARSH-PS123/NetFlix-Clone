// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/download/downloads_bloc.dart' as _i5;
import '../../application/fastLaugh/fast_laugh_bloc.dart' as _i16;
import '../../application/hotAndNew/hot/hot_bloc.dart' as _i17;
import '../../application/hotAndNew/new/new_bloc.dart' as _i14;
import '../../application/search_bloc/search_bloc.dart' as _i15;
import '../../infrastructure/downloads/DownloadRepo.dart' as _i4;
import '../../infrastructure/fastLaugh/VideoRepo.dart' as _i13;
import '../../infrastructure/HotAndNew/hotRepo.dart' as _i7;
import '../../infrastructure/HotAndNew/newRepo.dart' as _i9;
import '../../infrastructure/search/searchRepo.dart' as _i11;
import '../downloads/downloadReop.dart' as _i3;
import '../fastLaugh/iVideoRepo.dart' as _i12;
import '../hot&new/ihotRepo.dart' as _i6;
import '../hot&new/inewRepo.dart' as _i8;
import '../search/IsearchRepo.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DownloadRepo>(() => _i4.Repo());
  gh.factory<_i5.DownloadsBloc>(
      () => _i5.DownloadsBloc(get<_i3.DownloadRepo>()));
  gh.lazySingleton<_i6.IHotRepo>(() => _i7.HotRepo());
  gh.lazySingleton<_i8.INewRepo>(() => _i9.NewRepo());
  gh.lazySingleton<_i10.ISearchRepo>(() => _i11.SearchRepo());
  gh.lazySingleton<_i12.IvideoRepo>(() => _i13.VideoRepo());
  gh.factory<_i14.NewBloc>(() => _i14.NewBloc(get<_i8.INewRepo>()));
  gh.factory<_i15.SearchBloc>(
      () => _i15.SearchBloc(get<_i3.DownloadRepo>(), get<_i10.ISearchRepo>()));
  gh.factory<_i16.FastLaughBloc>(
      () => _i16.FastLaughBloc(get<_i12.IvideoRepo>()));
  gh.factory<_i17.HotBloc>(() => _i17.HotBloc(get<_i6.IHotRepo>()));
  return get;
}
