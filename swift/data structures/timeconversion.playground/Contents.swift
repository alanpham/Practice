//: Playground - noun: a place where people can play

import Foundation

let s = ["12","05","39AM"]
var result = s

if (Int(result[0]) == 12)
{
  result[0] = "00"
}

if (result[result.count-1].contains("PM"))
{
  let a = Int(result[0])!
  let addTwelve = a + 12
  result[0] = String(addTwelve)
}

result[result.count-1] = result[result.count-1].replacingOccurrences(of: "AM|PM", with: "", options: .regularExpression)

print(result.joined(separator: ":"))
