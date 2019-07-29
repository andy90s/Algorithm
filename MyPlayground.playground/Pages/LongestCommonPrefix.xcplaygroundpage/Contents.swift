//: [上一页](@previous) | [字符串目录](Strings) | [下一页](@next)
/*:
 > 编写一个函数来查找字符串数组中的最长公共前缀。
    如果不存在公共前缀，返回空字符串 ""。
 
 示例1:
 ```
 输入: ["flower","flow","flight"]
 输出: "fl"
 ```
 示例2:
 ```
 输入: ["dog","racecar","car"]
 输出: ""
 解释: 输入不存在公共前缀。
 ```
 说明:
 
 所有输入只包含小写字母 a-z 。
  ****
 */


import UIKit

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        // 空数组
        if strs.count == 0 {
            return ""
        }
        // 只有一个元素
        if strs.count == 1 {
            return strs[0]
        }
        let firstStrings = Array(strs[0])
        var result = String()
        for i in 0 ..< firstStrings.count {
            for j in 0 ..< strs.count {
                // 找到一列
                if j == strs.count - 1 {
                    result += "\(firstStrings[i])"
                    continue
                }
                // 当前和后一个做比较
                let someSub = Array(strs[j])
                let nextSub = Array(strs[j + 1])
                // 表示已经出现最小的,找完了跳出循环.
                if someSub.count - 1 < i || nextSub.count - 1 < i {
                    break;
                }
                // 当前和后一个做比较
                if someSub[i] == nextSub[i] {
                    continue
                } else {
                    break;
                }
            }
        }
        return result
    }
}

let test = Solution()
//let result = test.longestCommonPrefix(["flower","flow","flight"])
let result = test.longestCommonPrefix(["dog","racecar","car"])
print("result:\(result)")

//: [上一页](@previous) | [字符串目录](Strings) | [下一页](@next)
