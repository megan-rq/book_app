import 'package:redux/redux.dart';

import '../api/client.dart';
import '../redux/middleware.dart';
import '../redux/reducer.dart';
import './app_state.dart';

final store = Store<AppState>(
    reducer,
    initialState: AppState.create(),
    middleware: getMiddlewares(ApiClient())
);