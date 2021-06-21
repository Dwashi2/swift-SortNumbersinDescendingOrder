//
//  ViewController.swift
//  SortNumbersinDescendingOrder
//
//  Created by Daniel Washington Ignacio on 21/06/21.
//

/*
 Create a function that takes any nonnegative number as an argument and return it with it's digits in descending order. Descending order is when you sort from highest to lowest.

 Examples

 sortDescending(123) ➞ 321

 sortDescending(1254859723) ➞ 9875543221

 sortDescending(73065) ➞ 76530
 Notes

 You can expect non-negative numbers for all test cases.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.sortDescending(123))
        print(self.sortDescending(1254859723))
        print(self.sortDescending(73065))
    }

    func sortDescending(_ num: Int) -> Int {
        var newNum = num
        var digits: [Int] = []
        
        digits.append(newNum % 10)
        
        while newNum >= 10  {
            newNum = newNum / 10
            digits.append(newNum % 10)
        }
        
        var myString = ""
        _ = digits.map{ myString = myString + "\($0)" }
        let myInt = Int(myString)
        
       
        return myInt ?? 0
    }
    


}

