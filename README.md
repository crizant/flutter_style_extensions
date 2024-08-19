A Flutter package that enhances the readability of Flutter widget styling and reduces boilerplate by leveraging the power of extension methods.

## Features

Flutter has a unique widget-based approach to handle styles, i.e., everything's a widget. This can make your widget tree deeply nested and sometimes hard to read. For example:

```dart
Scaffold(
  backgroundColor: Colors.lightBlue,
  body: Center(
    child: Transform.rotate(
      angle: math.pi / 2,
      child: Opacity(
        opacity: 0.8,
        child: Container(
          color: Colors.yellow,
          margin: const EdgeInsets.all(8.0),
          child: const Text("Welcome to Flutter"),
        ),
      ),
    ),
  ),
);
```

With this package, the same UI can be achieved in a more readable way:

```dart
Scaffold(
  backgroundColor: Colors.lightBlue,
  body: const Text("Welcome to Flutter")
      .margin(const EdgeInsets.all(8.0))
      .backgroundColor(Colors.yellow)
      .opacity(0.8)
      .rotate(math.pi / 2)
      .center(),
);
```

The nested structure is reduced from 6 layers to 2, which improves the readability.

Note that this package is a syntax sugar for wrapping a widget inside other widgets, so the order of applying the extensions matters. The later the extension is applied, the further it is from the original widget.

## Extensions

### ThemingExtension

This extension provides easy access to the current theme's properties:

```dart
context.theme;
context.colorScheme;
context.textTheme;
// if your theme extension class is named MyCustomTheme
context.themeExtension<MyCustomTheme>();
```

Visit the [API documentation](https://pub.dev/documentation/flutter_style_extensions/latest/) for all available widget extensions.

## Other widgets

This package focuses on providing extensions that enhance the styling of widgets, similar to how CSS works with HTML. It does not include extensions for adding functionality to widgets, such as .onTap (for GestureDetector) or .scrollable (for SingleChildScrollView). These types of extensions may be provided by other packages.

## Contributing

Feel free to contribute to this project. If you think a widget-related extension should be provided in this package but it isn't, you can file an [issue](https://github.com/crizant/flutter_style_extensions/issues) or submit a [pull request](https://github.com/crizant/flutter_style_extensions/pulls).
