import 'package:fordev/presentation/presenters/presenters.dart';

import '../../../../ui/pages/pages.dart';
import '../../factories.dart';

import 'package:flutter/material.dart';

Widget makeHomePage() => HomePage(makeGetxHomePresenter());
