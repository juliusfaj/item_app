import 'package:flutter/material.dart';
import 'package:item_app/helpers/extensions.dart';

import '../components/app_scaffold.dart';
import '../components/app_textfields.dart';
import '../models/list_items.dart';

class AddEditScreen extends StatefulWidget {
  final ListItem? item;
  final Function(String text, String category) onSave;

  const AddEditScreen({
    super.key,
    this.item,
    required this.onSave,
  });

  @override
  State<AddEditScreen> createState() => _AddEditScreenState();
}

class _AddEditScreenState extends State<AddEditScreen> {
  late TextEditingController _textController;
  late String _selectedCategory;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: widget.item?.text ?? '');
    _selectedCategory = widget.item?.category ?? 'tasks';
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
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

  void _save() {
    if (_textController.text.trim().isNotEmpty) {
      widget.onSave(_textController.text.trim(), _selectedCategory);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.item != null;
    var colorScheme = context.colorScheme;

    return AppScaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, size: 28),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          isEdit ? 'Edit Item' : 'New Item',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: _textController.text.trim().isNotEmpty
                  ? Colors.blue[600]
                  : Colors.grey[300],
            ),
            onPressed: _save,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            color: colorScheme.outline,
            height: .5,
          ),
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: ['tasks', 'notes', 'shopping'].map((category) {
                final isSelected = _selectedCategory == category;
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedCategory = category;
                        });
                      },
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? _getCategoryColor(category)
                              : colorScheme.surfaceContainer,
                          border: Border.all(
                            color: isSelected
                                ? Colors.transparent
                                : colorScheme.outlineVariant,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          category[0].toUpperCase() + category.substring(1),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: isSelected ? Colors.white : colorScheme.onSurface,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 24),
            Text(
              'Description',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface
              ),
            ),
            const SizedBox(height: 12),
            AppTextField(
              controller: _textController,
              maxLines: 6,
              minLines: 6,
              borderColor: colorScheme.primary,
              textColor: colorScheme.onSurface,
              hintColor: colorScheme.onSurface,
              hint: "Enter Description",
              borderRadius: 12,
              autoFocus: true,
              contentPadding: 10.allPadding,
              onChanged: (value) {
                setState(() {}); // Rebuild to update check button color
              },
            ),
          ],
        ),
      ),
    );
  }
}