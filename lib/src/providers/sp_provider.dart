import 'package:edk_mobile_v3/src/models/edition_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesProvider {
  SharedPreferencesProvider._privateConstructor() {
    init();
  }

  static final SharedPreferencesProvider _instance =
      SharedPreferencesProvider._privateConstructor();

  factory SharedPreferencesProvider() {
    return _instance;
  }

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

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  setEditionState(EditionState state) {
    setCurrentEditionYear(state.currentYearId);
    setRoutesLastUpdate(state.routesLastUpdate);
    setRoutesCount(state.routesCount);
    setAreasCount(state.areasCount);
    setGroupsCount(state.groupsCount);
    setCountysCount(state.countysCount);
    setCurrentMeditationsParentId(state.currentMeditationsParentId);
    setCurrentMeditationsName(state.currentMeditationsName);
    setMeditationsLastUpdate(state.meditationsLastUpdate);
  }

  setCurrentEditionYear(int year) {
    _prefs.setInt(_currentYearId, year);
  }

  int getCurrentEditionYear() {
    return _prefs.getInt(_currentYearId);
  }

  setRoutesLastUpdate(int lastUpdate) {
    _prefs.setInt(_routesLastUpdate, lastUpdate);
  }

  int getRoutesLastUpdate() {
    return _prefs.getInt(_routesLastUpdate);
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

  setCountysCount(String count) {
    _prefs.setString(_countysCount, count);
  }

  String getCountysCount() {
    return _prefs.getString(_countysCount);
  }

  setCurrentMeditationsParentId(int parentId) {
    _prefs.setInt(_currentMeditationsParentId, parentId);
  }

  int getCurrentMeditationsParentId() {
    return _prefs.getInt(_currentMeditationsParentId);
  }

  setCurrentMeditationsName(String name) {
    _prefs.setString(_currentMeditationsName, name);
  }

  String getCurrentMeditationsName() {
    return _prefs.getString(_currentMeditationsName);
  }

  setMeditationsLastUpdate(int lastUpdate) {
    _prefs.setInt(_meditationsLastUpdate, lastUpdate);
  }

  int getMeditationsLastUpdate() {
    return _prefs.getInt(_meditationsLastUpdate);
  }
}
