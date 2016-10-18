# StringPadding

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Swift String padding μ Library.

## API

The `String` extension provides a convenience method that defaults to right padding with whitespace filling:

    String.padded(length: Int, filler: Character = " ", padding: Padding = .right) -> String

The underlying `String.Padding` enum can be used directly, too. For example:

    let leftPadding = String.Padding.left
    let rightPadding = String.Padding.right
    let centerPadding = String.Padding.center

The `String.Padding` cases in turn expose:

    String.Padding.pad(text: String, length: Int, filler: Character = " ") -> String

## Usage

Use the convenience extension on `String`:

    "y".padded(length: 5, filler: "x", padding: .right)
    // "yxxxx"

That's useful to justify lines of text:

    ["$9.99", "$100.00"]
        .map { $0.padded(length: 10, padding: .left) }
        .join(separator: "\n")
    // "     $9.99"
    // "   $100.00"
 

## License

Copyright (c) 2016 Christian Tietze.

Distributed under the MIT License. See LICENSE file for details.
