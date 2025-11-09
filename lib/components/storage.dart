import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../models/list_items.dart';


const rootBoxName = 'item_app_box';

class AppStorage {
  AppStorage._(); //this is to prevent anyone from instantiating this object

  static Box<dynamic> box() {
    return Hive.box(rootBoxName);
  }

  static int get timesOpened => box().get('times_opened', defaultValue: 0) as int;
  static set timesOpened(int value) => box().put('times_opened', value);

  static bool get showOnboardingPage => box().get('showOnboardingPage', defaultValue: true) as bool;
  static set showOnboardingPage(bool value) => box().put('showOnboardingPage', value);

  static final ValueNotifier<String?> authTokenNotifier = ValueNotifier(box().get('auth_token') as String?);

  static ThemeMode getThemeMode() {
    try{
      var defaultMode = kIsWeb ? ThemeMode.light  : ThemeMode.system;
      final index = box().get('theme_mode', defaultValue: defaultMode.index) as int;
      return ThemeMode.values[index];
    }catch(_){
      return ThemeMode.system;
    }
  }
  static setThemeMode(ThemeMode mode) => box().put('theme_mode', mode.index);

  static set storeListItems(List<ListItem> items) {
    box().put('stored_items', items.map((e) => e.toJson()).toList());
  }
  static List<ListItem> get storedListItems {
    final items = box().get('stored_items', defaultValue: []) as List<dynamic>;
    var itemsToReturn = items.map((e) => ListItem.fromJson(Map<String, dynamic>.from(e))).toList();
    if(itemsToReturn.isEmpty){
      return [
        ListItem(id: '1', text: 'Buy groceries', category: 'tasks'),
        ListItem(id: '2', text: 'Meeting notes for project review', category: 'notes'),
        ListItem(id: '3', text: 'Milk, bread, eggs', category: 'shopping'),
      ];
    }else{
      return itemsToReturn;
    }
  }

  static Future<void> clearBoxes() async {
    await box().clear();
  }
}
