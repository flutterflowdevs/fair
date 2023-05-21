import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _userFavRideIds =
        prefs.getStringList('ff_userFavRideIds')?.map(int.parse).toList() ??
            _userFavRideIds;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isfavourite = false;
  bool get isfavourite => _isfavourite;
  set isfavourite(bool _value) {
    _isfavourite = _value;
  }

  bool _isMap = false;
  bool get isMap => _isMap;
  set isMap(bool _value) {
    _isMap = _value;
  }

  String _selectedFilter = 'Rides';
  String get selectedFilter => _selectedFilter;
  set selectedFilter(String _value) {
    _selectedFilter = _value;
  }

  bool _containerVisibility = true;
  bool get containerVisibility => _containerVisibility;
  set containerVisibility(bool _value) {
    _containerVisibility = _value;
  }

  List<String> _profileImgs = [
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/zg5ir547s7om/erza.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/ij79uzbzisw2/gray.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/j3kxgvmw7two/lucy.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/7myh3k3oztk4/luffy.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/4js6uozmew61/naruto.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/epvwcakeugr7/nami.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/km0opwtbkcf3/miraJ.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/rfhnq8tu2ykt/mira.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/fgkwif017w2f/natsu.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/ljnztffgb6cr/robin.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/8vzma30djc6z/sanji.jpg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/anujesh-testing-12h3vf/assets/5a4ufr34lofk/zoro.jpg'
  ];
  List<String> get profileImgs => _profileImgs;
  set profileImgs(List<String> _value) {
    _profileImgs = _value;
  }

  void addToProfileImgs(String _value) {
    _profileImgs.add(_value);
  }

  void removeFromProfileImgs(String _value) {
    _profileImgs.remove(_value);
  }

  void removeAtIndexFromProfileImgs(int _index) {
    _profileImgs.removeAt(_index);
  }

  void updateProfileImgsAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_profileImgs[_index]);
  }

  int _filterList = 2;
  int get filterList => _filterList;
  set filterList(int _value) {
    _filterList = _value;
  }

  String _Recommended = 'Rides';
  String get Recommended => _Recommended;
  set Recommended(String _value) {
    _Recommended = _value;
  }

  bool _isListview = false;
  bool get isListview => _isListview;
  set isListview(bool _value) {
    _isListview = _value;
  }

  bool _isTicket = false;
  bool get isTicket => _isTicket;
  set isTicket(bool _value) {
    _isTicket = _value;
  }

  int _currentNavigationIndex = 1;
  int get currentNavigationIndex => _currentNavigationIndex;
  set currentNavigationIndex(int _value) {
    _currentNavigationIndex = _value;
  }

  int _standardCount = 0;
  int get standardCount => _standardCount;
  set standardCount(int _value) {
    _standardCount = _value;
  }

  int _expressCount = 0;
  int get expressCount => _expressCount;
  set expressCount(int _value) {
    _expressCount = _value;
  }

  int _vipCount = 0;
  int get vipCount => _vipCount;
  set vipCount(int _value) {
    _vipCount = _value;
  }

  List<int> _userFavRideIds = [];
  List<int> get userFavRideIds => _userFavRideIds;
  set userFavRideIds(List<int> _value) {
    _userFavRideIds = _value;
    prefs.setStringList(
        'ff_userFavRideIds', _value.map((x) => x.toString()).toList());
  }

  void addToUserFavRideIds(int _value) {
    _userFavRideIds.add(_value);
    prefs.setStringList(
        'ff_userFavRideIds', _userFavRideIds.map((x) => x.toString()).toList());
  }

  void removeFromUserFavRideIds(int _value) {
    _userFavRideIds.remove(_value);
    prefs.setStringList(
        'ff_userFavRideIds', _userFavRideIds.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromUserFavRideIds(int _index) {
    _userFavRideIds.removeAt(_index);
    prefs.setStringList(
        'ff_userFavRideIds', _userFavRideIds.map((x) => x.toString()).toList());
  }

  void updateUserFavRideIdsAtIndex(
    int _index,
    Function(int) updateFn,
  ) {
    updateFn(_userFavRideIds[_index]);
    prefs.setStringList(
        'ff_userFavRideIds', _userFavRideIds.map((x) => x.toString()).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
