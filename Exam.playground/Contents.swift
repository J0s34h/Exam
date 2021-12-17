import UIKit

var greeting = "Hello, playground"

// MARK: - static dispatch

// 1) - Protocol

protocol staticDispatchProtocol {
    func sayHello() -> Void
}

class ProtocolImplementer: staticDispatchProtocol {
    func sayHello() {
        print("Hello")
    }
}

// 2) - Final

final class StaticDispatchClass {
    func sayHi() {
        print("Hi")
    }
}

// MARK: - Virtual Table

// Inheritance example
class VirtualTableClass {
    // 1st entry
    func method1() {}

    // 2nd entry
    func method2() {}
}

class VirtualTableChildClass: VirtualTableClass {
    // New entry in table - 3rd
    override func method2() {
        print("Override method")
    }
}

// Polymorphism Example

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }

    func sayMyName() {
        print("Album")
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }

    override func sayMyName() {
        print("Studio")
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }

    override func sayMyName() {
        print("Live")
    }
}

let allAlbums: [Album] = [Album(name: "fdsa"), StudioAlbum(name: "dfsadfas", studio: "fsdadfads"), LiveAlbum(name: "sdfasdf", location: "sfdfads")]

// MARK: - Witness table

// Protocol example

protocol witnessExample {
    func someMethod()
}

protocol witnessExample2 {
    func someMethod2()
}

class WitnessTableClass: witnessExample, witnessExample2 {

    func someMethod() {
        print("Some Method within separate witness protocol")
    }

    func someMethod2() {
        print("Some Method within other separate witness protocol")
    }

}

// MARK: - NSObject example

class NsObjectExample: NSObject {
    func printStuff() {
        print("Stuff")
    }
}

// Virtual table

class NsObjectChild: NsObjectExample {
    override func printStuff() {
        super.printStuff()

        print("Childs stuff")
    }
}

extension NsObjectExample {}

// Message Dispatch

class NsObjectSecondChild: NSObject {
    dynamic func someMethod() {
        print("Some")
    }
}
