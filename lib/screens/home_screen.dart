import 'package:flutter/material.dart';
import 'package:item_app/components/app_scaffold.dart';
import 'package:item_app/components/storage.dart';
import 'package:item_app/helpers/extensions.dart';

import '../models/list_items.dart';
import 'add_edit_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.onThemeModeChanged});
  final Function(ThemeMode mode)? onThemeModeChanged;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ListItem> _items = [

  ];

  @override
  void initState() {
    super.initState();
    _items = AppStorage.storedListItems;
  }

  void _addItem(String text, String category) {
    setState(() {
      _items.add(ListItem(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        text: text,
        category: category,
      ));
      AppStorage.storeListItems = _items;
    });
  }

  void _updateItem(String id, String text, String category) {
    setState(() {
      final index = _items.indexWhere((item) => item.id == id);
      if (index != -1) {
        _items[index].text = text;
        _items[index].category = category;
      }
      AppStorage.storeListItems = _items;
    });
  }

  void _deleteItem(String id) {
    setState(() {
      _items.removeWhere((item) => item.id == id);
      AppStorage.storeListItems = _items;
    });
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'tasks':
        return Colors.blue;
      case 'notes':
        return Colors.green;
      case 'shopping':
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }

  String _getCategoryName(String category) {
    return category[0].toUpperCase() + category.substring(1);
  }

  void _navigateToAddEdit({ListItem? item}) async {
    final _ = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddEditScreen(
          item: item,
          onSave: (text, category) {
            if (item != null) {
              _updateItem(item.id, text, category);
            } else {
              _addItem(text, category);
            }
          },
        ),
      ),
    );
  }

  Icon get themeModeIcon {
    var mode = AppStorage.getThemeMode();
    switch (mode) {
      case ThemeMode.light:
        return const Icon(Icons.light_mode_rounded, size: 24);
      case ThemeMode.dark:
        return const Icon(Icons.dark_mode_rounded, size: 24);
      case ThemeMode.system:
        return const Icon(Icons.wb_sunny_outlined, size: 24);
    }
  }

  @override
  Widget build(BuildContext context) {
    var colorScheme = context.colorScheme;
    return AppScaffold(
      appBar: AppBar(
        title: Text(
          'My Lists',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          //Popup menu to change theme mode
          PopupMenuButton<ThemeMode>(
            icon: themeModeIcon,
            onSelected: (mode) {
              widget.onThemeModeChanged?.call(mode);
              setState(() {});
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: ThemeMode.light,
                child: Row(
                  children: const [
                    Icon(Icons.light_mode_rounded, size: 20),
                    SizedBox(width: 8),
                    Text('Light Mode'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: ThemeMode.dark,
                child: Row(
                  children: const [
                    Icon(Icons.dark_mode_rounded, size: 20),
                    SizedBox(width: 8),
                    Text('Dark Mode'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: ThemeMode.system,
                child: Row(
                  children: const [
                    Icon(Icons.wb_sunny_outlined, size: 20),
                    SizedBox(width: 8),
                    Text('System Default'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToAddEdit(),
        backgroundColor: Colors.blue[600],
        child: const Icon(Icons.add, size: 28),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Builder(
                builder: (context) {
                  if(_items.isEmpty){
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'No items yet',
                            style: TextStyle(
                              fontSize: 18,
                              color: colorScheme.outline,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Tap + to add your first item',
                            style: TextStyle(
                              fontSize: 14,
                              color: colorScheme.outline,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      final item = _items[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Dismissible(
                          key: Key(item.id),
                          direction: DismissDirection.endToStart,
                          background: Container(
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(
                              Icons.delete_outline,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          onDismissed: (direction) {
                            _deleteItem(item.id);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Item deleted'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          },
                          child: InkWell(
                            onTap: () => _navigateToAddEdit(item: item),
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              decoration: BoxDecoration(
                                color: colorScheme.surface,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: colorScheme.outlineVariant,
                                  width: .5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: colorScheme.outlineVariant.withOpacity(0.05),
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                children: [
                                  Container(
                                    width: 4,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: _getCategoryColor(item.category),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _getCategoryName(item.category).toUpperCase(),
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                            color: colorScheme.outline,
                                            letterSpacing: 0.5,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          item.text,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: colorScheme.onSurface,
                                            height: 1.3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}