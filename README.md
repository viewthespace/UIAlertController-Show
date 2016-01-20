# UIAlertController+Show
Light-weight extension that adds `-show` method to UIAlertController.  Presenting UIAlertControllers from anywhere, just like UIAlertView.

##Example Usage

Use just like UIAlertViews, from Objective-C:
```objc
UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Hello"
                                                                         message:@"Just like UIAlertViews!"
                                                                  preferredStyle:UIAlertControllerStyleAlert];

[alertController show];
```

or from Swift:
```swift
var alertController = UIAlertController(title: "Hello", message: "Just like UIAlertViews!", preferredStyle: .Alert))
alertController.show()
```

##Setup via CocoaPods

Add UIAlertController+Show to your Podfile
```
pod 'UIAlertController+Show'
```
