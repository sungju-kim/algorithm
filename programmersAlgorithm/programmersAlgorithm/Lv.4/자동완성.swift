//
//  자동완성.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/21.
//

import Foundation

struct 자동완성 {
    static func solution(_ words:[String]) -> Int {
        let trie = Trie(words)
        var result = 0
        words.forEach {
            result += trie.search($0)
        }
        return result
    }
    
    class Trie {
        var root: TrieNode = TrieNode(value: " ")

        init(_ words: [String]) {
            for word in words {
                var currentNode = root
                for character in word {
                    currentNode.availableCount += 1
                    let targetNode = currentNode.children[character] ?? TrieNode(value: character)
                    currentNode.children[character] = targetNode
                    currentNode = currentNode.children[character]!
                }
                currentNode.data = word
            }
        }

        func search(_ word: String) -> Int{
            var currentNode = root
            var count = 0

            for character in word {
                currentNode = currentNode.children[character]!
                count += 1
                if currentNode.couldBeLast {
                    return count
                }
            }
            return count
        }
    }

    class TrieNode {
        private var value: Character
        var data: String?
        var children: [Character: TrieNode] = [:]
        var availableCount: Int = 0
        var couldBeLast: Bool {
            return data == nil ? availableCount == 1 : false
        }
        init(value: Character, data: String? = nil) {
            self.value = value
            self.data = data
        }
    }
}
