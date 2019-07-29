//: [上一页](@previous) | [字符串目录](Strings) | [下一页](@next)
/*:
 > 给定两个字符串 s1 和 s2，写一个函数来判断 s2 是否包含 s1 的排列。
  换句话说，第一个字符串的排列之一是第二个字符串的子串
 
 示例1:
 ```
 输入: s1 = "ba" s2 = "eidbaooo"
 输出: True
 解释: s2 包含 s1 的排列之一 ("ba").
 ```
 示例2:
 ```
 输入: s1= "ab" s2 = "eidboaoo"
 输出: False
 ```
 注意:
 - 输入的字符串只包含小写字母
 - 两个字符串的长度都在 [1, 10,000] 之间
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
