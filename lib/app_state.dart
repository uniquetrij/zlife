import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _image = prefs.getString('ff_image') ?? _image;
    _userRole = prefs.getString('ff_userRole') ?? _userRole;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _imagesPath = ['', ''];
  List<String> get imagesPath => _imagesPath;
  set imagesPath(List<String> _value) {
    _imagesPath = _value;
  }

  void addToImagesPath(String _value) {
    _imagesPath.add(_value);
  }

  void removeFromImagesPath(String _value) {
    _imagesPath.remove(_value);
  }

  void removeAtIndexFromImagesPath(int _index) {
    _imagesPath.removeAt(_index);
  }

  String _accountType = 'ROLE_DISPOSER';
  String get accountType => _accountType;
  set accountType(String _value) {
    _accountType = _value;
  }

  dynamic _createPost = jsonDecode(
      '{\"userProfileId\":\"\",\"productCategory\":\"\",\"title\":\"\",\"description\":\"\",\"weight\":0,\"productTags\":[\"Dispose\",\"NGO\"],\"productImages\":[\"https://www.vaughan.ca/sites/default/files/styles/max_1300x1300/public/2022-08/FI-64.jpg.webp?itok=wcSP5_uk\"],\"contributionType\":\"DONATE\",\"productLocation\":\" 1199/12, Reghar Pura, Bahadur Garh Road, Karol Bagh\",\"status\":\"ACTIVE\",\"verified\":true,\"visiblity\":\"ALL\",\"selectiveRecyclers\":[],\"productPrice\":0}');
  dynamic get createPost => _createPost;
  set createPost(dynamic _value) {
    _createPost = _value;
  }

  String _image = 'https://logodix.com/logo/360466.png';
  String get image => _image;
  set image(String _value) {
    _image = _value;
    prefs.setString('ff_image', _value);
  }

  List<String> _categories = [
    'Plants & Flowers',
    'Electronic & hardware',
    'Paper & Books'
  ];
  List<String> get categories => _categories;
  set categories(List<String> _value) {
    _categories = _value;
  }

  void addToCategories(String _value) {
    _categories.add(_value);
  }

  void removeFromCategories(String _value) {
    _categories.remove(_value);
  }

  void removeAtIndexFromCategories(int _index) {
    _categories.removeAt(_index);
  }

  String _userRole = '';
  String get userRole => _userRole;
  set userRole(String _value) {
    _userRole = _value;
    prefs.setString('ff_userRole', _value);
  }

  List<String> _localImages = [];
  List<String> get localImages => _localImages;
  set localImages(List<String> _value) {
    _localImages = _value;
  }

  void addToLocalImages(String _value) {
    _localImages.add(_value);
  }

  void removeFromLocalImages(String _value) {
    _localImages.remove(_value);
  }

  void removeAtIndexFromLocalImages(int _index) {
    _localImages.removeAt(_index);
  }

  List<String> _organizationIds = [];
  List<String> get organizationIds => _organizationIds;
  set organizationIds(List<String> _value) {
    _organizationIds = _value;
  }

  void addToOrganizationIds(String _value) {
    _organizationIds.add(_value);
  }

  void removeFromOrganizationIds(String _value) {
    _organizationIds.remove(_value);
  }

  void removeAtIndexFromOrganizationIds(int _index) {
    _organizationIds.removeAt(_index);
  }

  String _userImage =
      'https://eadn-wc03-3367747.nxedge.io/cdn/wp-content/uploads/2020/09/PersonPlaceholder1-1-1-300x300.png';
  String get userImage => _userImage;
  set userImage(String _value) {
    _userImage = _value;
  }

  bool _accountIndividual = true;
  bool get accountIndividual => _accountIndividual;
  set accountIndividual(bool _value) {
    _accountIndividual = _value;
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
