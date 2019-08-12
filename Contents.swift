import UIKit
import PlaygroundSupport

let title: Node = "The Showers Fam"
let description: Node = "A site about the bestest fam!"
let peopleList = Node.ul(
    .li("Derrick"),
    .li("Sarah"),
    .li("Sophie")
);

let doggieList = Node.ul(
    .li("Winston"),
    .li("Walter")
);

let document: Node = .document(
    .html(
        .body(
            .h1(title),
            .p(description),
            peopleList,
            doggieList
        )
    )
)

var fileURL = playgroundSharedDataDirectory.appendingPathComponent("output.html")
try render(document).write(to: fileURL, atomically: true, encoding: .utf8)
