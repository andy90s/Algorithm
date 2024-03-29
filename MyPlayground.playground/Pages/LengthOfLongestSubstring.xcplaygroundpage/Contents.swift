//: [上一页](@previous) | [字符串目录](Strings) | [下一页](@next)
/*:
 > 给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。
 
 示例1:
 ```
 输入: "abcabcbb"
 输出: 3
 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
 ```
 示例 2:
 ```
 输入: "bbbbb"
 输出: 1
 解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
 ```
 示例 3:
 ```
 输入: "pwwkew"
 输出: 3
 解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
 请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
 ```
  ****
 */

import UIKit
import Foundation

class solution {
    // 给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var characters = Array(s)
        var sub = String()
        var max = 0
        for j in 0 ..< characters.count {
            let appendString = "\(characters[j])"
            if sub.contains(characters[j]) {
                if max < sub.count {
                    max = sub.count
                }
                sub = appendString
            } else {
                sub += appendString
            }
        }
        return max
    }
}

let test = solution()
let result = test.lengthOfLongestSubstring("pwwkewfasfasf")

print(result)

//: [上一页](@previous) | [字符串目录](Strings) | [下一页](@next)
