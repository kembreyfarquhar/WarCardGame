//
//  ChangeCard.swift
//  WarCardGame
//
//  Created by Katie on 11/23/20.
//

import UIKit

enum ChangeCard: String {
    case two = "card2"
    case three = "card3"
    case four = "card4"
    case five = "card5"
    case six = "card6"
    case seven = "card7"
    case eight = "card8"
    case nine = "card9"
    case ten = "card10"
    case eleven = "card11"
    case twelve = "card12"
    case thirteen = "card13"
    case fourteen = "card14"
    
    static let types = [two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen]
    
    static let values: [String: Int] = [two.rawValue: 2, three.rawValue: 3, four.rawValue: 4, five.rawValue: 5, six.rawValue: 6, seven.rawValue: 7, eight.rawValue: 8, nine.rawValue: 9, ten.rawValue: 10, eleven.rawValue: 11, twelve.rawValue: 12, thirteen.rawValue: 13, fourteen.rawValue: 14]
}



func generateRandomCard () -> String {
    let randomNumber = Int(arc4random_uniform(13))
    let randomCase = ChangeCard.types[randomNumber]
    return randomCase.rawValue
}


func compareCards(leftCard: String, rightCard: String) -> String {
    let leftValue = ChangeCard.values[leftCard]
    let rightValue = ChangeCard.values[rightCard]
    if leftValue! > rightValue! {
        return "left"
    } else if rightValue! > leftValue! {
        return "right"
    } else {
        return "tie"
    }
}


extension UIImage {
    func toString() -> String? {
        let data: Data? = self.pngData()
        return data?.base64EncodedString(options: .endLineWithLineFeed)
    }
}
