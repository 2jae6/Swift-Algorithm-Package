//
//  main.swift
//  SwiftSort
//
//  Created by 1 on 2020/02/11.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

//   Bubble Sort
func bubbleSort<T:Comparable>(inout l:[T]) {
    if l.count == 0 { return }
    var changed = true
    while changed {
        changed = false
        for i in 1..<l.count {
            if l[i] < l[i-1] {
                changed = true
                (l[i], l[i-1]) = (l[i-1], l[i])
            }
        }
    }
}


//  Insertion Sort
func insertionSort<T:Comparable>(inout l:[T]) {
    for i in 1..<l.count {
        let currentValue = l[i]
        var index = i
        while index > 0 && l[index-1] > currentValue {
            l[index] = l[index - 1]
            index--
        }
        l[index] = currentValue
    }
}

var a = [55,22,88,11,44,66,99,33,77]


// Quick Sort
func qsort<T:Comparable>(inout list:[T], start: Int = 0, var end: Int = -1) {
    if list.count == 0 || start == end { return }
    
    if end == -1 {
        end = list.count - 1
    }
    let pivot = list[start]
    var left = start + 1
    var right = end
    
    while true {
        while left < end {
            if list[left] < pivot {
                left += 1
            } else {
                break
            }
        }
        
        while right > start {
            if list[right] > pivot {
                right -= 1
            } else {
                break
            }
        }
 
        if left >= right {
            break
        } else {
            (list[right], list[left]) = (list[left], list[right])
        }
    }
    (list[start], list[right]) = (list[right], list[start])
    if right > start {qsort(&list, start: start, end: right-1)}
    if right < end-1 { qsort(&list, start: right+1, end: end)}
}


//  Quick Sort (Functional Style)
func qsort2<T:Comparable>(list:[T]) -> [T]
{
    if list.count == 0 { return [] }
    let pivot = list[0]
    let tail = Array(dropFirst(list))
    var less = qsort2(tail.filter{ $0 < pivot })
    let greater = qsort2(tail.filter{ $0 >= pivot })
    less += [pivot]
    less += greater
    return less
}


// Shell Sort
func shellSort<T:Comparable>(inout list:[T]) {

    func helper(inout list:[T], #start: Int, #interval: Int) {
        var index: Int = start + interval
        while index < list.count {
            var position = index
            let currentValue = list[index]
            while position > start && list[position - interval] > currentValue {
                list[position] = list[position - interval]
                position -= interval
            }
            list[position] = currentValue
            index += interval
        }
    }
    
    if list.count == 0 { return }
    var gap = Int(list.count / 2)
    while gap > 0 {
        for i in 0..<gap {
            helper(&list, start:i, interval:gap)
        }
        gap = Int(gap / 2)
    }
}


//  Merge Sort
func mergeSort<T:Comparable>(inout list: [T]) {
    if list.count == 0 { return }
    
    let pivot = Int(list.count / 2)
    var left = Array(list[0..<pivot])
    var right = Array(list[pivot..<list.count])
    var i=0, j=0, k=0
    while i < left.count && j < right.count {
        if left[i] < right[j] {
            list[k] = left[i]
            k++
            i++
        } else {
            list[k] = right[j]
            k++
            j++
        }
    }
    
    while i < left.count {
        list[k] = left[i]
        i++
        k++
    }
    
    while j < right.count {
        list[k] = right[j]
        j++
        k++
    }
}
