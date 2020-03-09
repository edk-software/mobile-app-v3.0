import 'package:edk_mobile_v3/src/models/edition_state.dart';

import '../providers/api_provider.dart';
import '../providers/db_provider.dart';
import '../providers/sp_provider.dart';

class Repository {
  final _dbProvider = DatabaseProvider();
  final _spProvider = SharedPreferencesProvider();
  final _apiProvider = ApiProvider();

  fetchEditionState() async {
    EditionState editionState = await _apiProvider.fetchEditionState();
    _spProvider.setEditionState(editionState);
  }
}
