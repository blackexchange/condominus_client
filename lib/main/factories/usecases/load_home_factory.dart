import '../../../data/usecases/usecases.dart';
import '../../../domain/usecases/usecases.dart';
import '../../composites/composites.dart';
import '../factories.dart';

RemoteLoadHome makeRemoteLoadHome() => RemoteLoadHome(
    httpClient: makeAuthorizeHttpClientDecorator(), url: makeApiUrl('home'));

LocalLoadHome makeLocalLoadHome() =>
    LocalLoadHome(cacheStorage: makeLocalStorageAdapter());

LoadHome makeRemoteLoadHomeWithLocalFallback() =>
    RemoteLoadHomeWithLocalFallback(
        remote: makeRemoteLoadHome(), local: makeLocalLoadHome());
