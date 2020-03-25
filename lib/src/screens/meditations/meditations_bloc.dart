import 'dart:async';

import 'package:edk_mobile_v3/src/models/station.dart';
import 'package:edk_mobile_v3/src/repository/repository.dart';

class MeditationsBloc {
  final _repository = Repository();

  MeditationsBloc() {
    fetchMeditations();
  }

  Stream<List<Station>> get stations => _repository.watchStations();
  Stream<int> get editionYear => _repository.watchCurrentEditionYear();

  fetchMeditations() {
    _repository.fetchMeditations();
  }
}
