# UIAlertController+Show
Light-weight extension that adds `-show` method to UIAlertController.  Presenting UIAlertControllers from anywhere, just like UIAlertView.

##Example Usage

This extension provides an API for UIAlertController that mimics the interface for UIAlertViews.

Example in Objective-C:
```objc
UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Hello"
                                                                         message:@"Just like UIAlertViews!"
                                                                  preferredStyle:UIAlertControllerStyleAlert];

[alertController show];
```

Example in Swift:
```swift
var alertController = UIAlertController(title: "Hello", message: "Just like UIAlertViews!", preferredStyle: .Alert))
alertController.show()
```

##Setup via CocoaPods

Add UIAlertController+Show to your Podfile
```
pod 'UIAlertController+Show'
```
