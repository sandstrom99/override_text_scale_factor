# override_text_scale_factor

A Flutter `Widget` that overrides the `textScaleFactor` given by `MediaQuery`.

When you're too lazy to make parts of your UI respond to a non-default `textScaleFactor` 
then `OverrideTextScaleFactor` is the widget for you.

## Usage
The package contains a single widget `OverrideTextScaleFactor`. 
By default this widget will set `textScaleFactor` to 1.0 but the field can be overridden to any value.

### Example
```dart
OverrideTextScaleFactor(
    // Note that any widget can be used as child - not only Text widgets
    child: Container(
        child: Text(
            // This text will always have a textScaleFactor of 1.0
            // regardless of device settings
            'Random text', 
        ),
    ),
);
```
If needed, a specific factor can be used to override the `textScaleFactor`.
### Example
```dart
OverrideTextScaleFactor(
    // Setting the textScaleFactor to a specific value
    textScaleFactor: 1.5,
    child: Container(
        child: Text(
            // This text will always have a textScaleFactor of 1.5
            // regardless of device settings
            'Random text', 
        ),
    ),
);
```

## Example Project
Take a look at this [Example Project](https://github.com/sandstrom99/override_text_scale_factor/blob/master/example/lib/example.dart) Project

## Acknowledgements
This package is close to useless but I've found myself needing an `OverrideTextScaleFactor` widget and you might too.

