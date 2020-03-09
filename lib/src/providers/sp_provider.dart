import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesProvider {
  SharedPreferences _prefs;

  final _currentYearId = "sp_provider_currentYearId";
  final _routesLastUpdate = "sp_provider_routesLastUpdate";
  final _routesCount = "sp_provider_routesCount";
  final _areasCount = "sp_provider_areasCount";
  final _groupsCount = "sp_provider_groupsCount";
  final _countysCount = "sp_provider_countysCount";
  final _currentMeditationsParentId = "sp_provider_currentMeditationsParentId";
  final _currentMeditationsName = "sp_provider_currentMeditationsName";
  final _meditationsLastUpdate = "sp_provider_meditationsLastUpdate";

  SharedPreferencesProvider() {
    init();
  }

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  setCurrentEditionYear(String year) {
    _prefs.setString(_currentYearId, year);
  }

  String getCurrentEditionYear() {
    return _prefs.getString(_currentYearId);
  }

  setRoutesLastUpdate(String lastUpdate) {
    _prefs.setString(_routesLastUpdate, lastUpdate);
  }

  String getRoutesLastUpdate() {
    return _prefs.getString(_routesLastUpdate);
  }

  setRoutesCount(int count) {
    _prefs.setInt(_routesCount, count);
  }

  int getRoutesCount() {
    return _prefs.getInt(_routesCount);
  }

  setAreasCount(int count) {
    _prefs.setInt(_areasCount, count);
  }

  int getAreasCount() {
    return _prefs.getInt(_areasCount);
  }

  setGroupsCount(int count) {
    _prefs.setInt(_groupsCount, count);
  }

  int getGroupsCount() {
    return _prefs.getInt(_groupsCount);
  }

  setCountysCount(int count) {
    _prefs.setInt(_countysCount, count);
  }

  int getCountysCount() {
    return _prefs.getInt(_countysCount);
  }

  setCurrentMeditationsParentId(String parentId) {
    _prefs.setString(_currentMeditationsParentId, parentId);
  }

  String getCurrentMeditationsParentId() {
    return _prefs.getString(_currentMeditationsParentId);
  }

  setCurrentMeditationsName(String name) {
    _prefs.setString(_currentMeditationsName, name);
  }

  String getCurrentMeditationsName() {
    return _prefs.getString(_currentMeditationsName);
  }

  setMeditationsLastUpdate(String lastUpdate) {
    _prefs.setString(_meditationsLastUpdate, lastUpdate);
  }

  String getMeditationsLastUpdate() {
    return _prefs.getString(_meditationsLastUpdate);
  }
}
