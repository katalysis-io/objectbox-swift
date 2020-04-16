<img width="466" src="https://raw.githubusercontent.com/objectbox/objectbox-swift/master/images/logo.png">

Do you ♥️ using ObjectBox?
==========================
We want to [hear about your app](https://docs.google.com/forms/d/e/1FAIpQLScIYiOIThcq-AnDVoCvnZOMgxO4S-fBtDSFPQfWldJnhi2c7Q/viewform)!
It will - literally - take just a minute, but help us a lot. Thank you!​ 🙏​

ObjectBox Swift
===============

ObjectBox is a superfast, light-weight object persistence framework.
This Swift API seamlessly persists objects on-device for iOS and macOS.

```swift
let santa = Person(firstName: "Santa", lastName: "Claus")
try personBox.put(santa)

let query: Query<Person> = personBox.query {
    return (Person.firstName.contains("Santa") || Person.age > 100)
           && Person.lastName.isEqual(to: "Claus") 
}.build()
let oldClauses = query.find()
```

Want details? **[Read the guides](https://swift.objectbox.io/)** or
**[check out the API docs](https://objectbox.io/docfiles/swift/current/)**.

Building ObjectBox
------------------

Install objectbox-c:

```sh
wget https://raw.githubusercontent.com/objectbox/objectbox-c/master/download.sh
chmod +x download.sh
./download.sh
```

Install flatbuffers:

```sh
brew install flatbuffers   
```

Build with Swift Package Manager:


```sh
swift build -Xswiftc -I/usr/local/include -Xswiftc -L/usr/local/lib
```

Test with Swift Package Manager:


```sh
swift test -Xswiftc -I/usr/local/include -Xswiftc -L/usr/local/lib
```

Generate Xcode Project:

```sh
swift package generate-xcodeproj --xcconfig-overrides ObjectBox.xcconfig
open ObjectBox.xcodeproj  
```

How can ObjectBox Help You?
---------------------------
We want ObjectBox to be not only the fastest, but also the most Swift-friendly persistence solution.

To do that, we want your feedback: what do you love? What's amiss?
Where do you struggle in everyday app development?

We're looking forward to receiving your comments and requests:

- Take this [short questionaire](https://docs.google.com/forms/d/e/1FAIpQLSd0neiviD0Yal0Tn7921w-XWI2d0ONpLm7TfVKp7OvwW2Tu2A/viewform?usp=sf_link) (takes only 1 or 2 minutes)
- Add [GitHub issues](https://github.com/ObjectBox/objectbox-swift/issues) and 
- Upvote issues you find important by hitting the 👍/+1 reaction button!

Thank you!

Keep in touch
-------------

[Sign up here](https://objectbox.io/ios) for future updates on ObjectBox Swift.

For general news on ObjectBox, [check our blog](https://objectbox.io/blog) or follow [@ObjectBox_io](https://twitter.com/ObjectBox_io/) on Twitter.

Background: code generation
---------------------------
ObjectBox Swift generates code at build time for optimal performance at runtime by avoiding reflection etc.
This is automatically done for you and should be transparent.
Internally, we use [a fork of Sourcery](https://github.com/objectbox/objectbox-swift-generator) for this.

Source code
-----------
Source code for ObjectBox's Swift binding can be found [in the Source folder](Sources).

Other languages/bindings
------------------------
ObjectBox is a multi platform database supporting [multiple languages](https://objectbox.io/dev-get-started/): 

* [ObjectBox Java](https://github.com/objectbox/objectbox-java): runs on Android, desktop and servers.
* [ObjectBox Go](https://github.com/objectbox/objectbox-go): great for data-driven tools and server applications. 
* [ObjectBox C](https://github.com/objectbox/objectbox-c): native speed with zero copy access to FlatBuffer objects;
  also enables porting ObjectBox to other languages.
* [ObjectBox Dart/Flutter](https://github.com/objectbox/objectbox-dart/): build cross-platform apps using Flutter (beta version) 

License
-------
All files in this repository are under the Apache 2 license:

    Copyright 2018-2019 ObjectBox Ltd. All rights reserved.
    
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
    
        http://www.apache.org/licenses/LICENSE-2.0
    
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

