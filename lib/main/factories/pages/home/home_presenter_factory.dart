import 'package:fordev/main/factories/usecases/load_home_factory.dart';

import '../../../../presentation/presenters/presenters.dart';
import '../../../../ui/pages/pages.dart';
import '../../factories.dart';

HomePresenter makeGetxHomePresenter() => GetxHomePresenter(
      loadHome: makeRemoteLoadHomeWithLocalFallback(),
    );
