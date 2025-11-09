# Item App

A simple Flutter app for managing tasks, notes, and shopping lists.

## My Approach

I wanted to build something straightforward that actually works well. The app uses basic Flutter widgets and keeps things simple. 

I structured the code into separate folders (components, screens, models, etc.) to keep things organized. The UI uses Material 3 design, and I made custom components like `AppScaffold` and `AppTextField` that I could reuse across different screens instead of repeating code.

For storage, I went with Hive because it's really easy to set up and works great for simple data like this. No need to deal with SQL or complicated database setups.

The color-coded categories (blue for tasks, green for notes, purple for shopping) make it easy to tell items apart at a glance. I also added swipe-to-delete because that's what people expect on mobile.

## Tools & Libraries

Main dependencies:
- `hive` and `path_provider` - for saving data locally
- `google_fonts` - for Roboto font



## File Structure

lib/
├── components/       - reusable widgets (scaffold, textfields, storage)
├── helpers/          - extensions and utility functions
├── models/           - data classes (ListItem)
├── screens/          - home and add/edit screens
├── theme/            - color schemes and theme config
└── main.dart


## Running It

flutter pub get
flutter run


## Build for release:

flutter build apk --release


## What It Does

- Add/edit/delete items
- Three categories: tasks, notes, shopping
- Swipe left to delete
- Theme options (light/dark/system)
- Everything saves automatically

## Link to app : https://drive.google.com/file/d/1EpPg182BGehuuRh0uXooYiMBLzHhfGhe/view?usp=drive_link
