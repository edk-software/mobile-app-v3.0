import 'dart:async';

import 'package:edk_mobile_v3/src/models/station.dart';
import 'package:edk_mobile_v3/src/repository/repository.dart';

class MeditationsBloc {
  final _repository = Repository();
  final _stations = StreamController<List<Station>>();

  MeditationsBloc() {
    fetchMeditations();
  }

  Stream<List<Station>> get stations => _repository.watchStations();

  fetchMeditations() {
    _repository.fetchMeditations();
  }

  dispose() {
    _stations.close();
  }
}
