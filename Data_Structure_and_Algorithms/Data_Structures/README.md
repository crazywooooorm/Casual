# Basic Data Structures
* Array is an object that each element is not linked. The underlying data structure of python list is array.
* In an single-linked (one direction pointer) list, the time complexity for different actions are:
  * PushFront: O(1)
  * PopFront: O(1)
  * PushFront: if we don't have tail pointer, it's O(n) as so need to start from head to tail; if we do have a tail pointer, it's O(1) as we can directly add one node, let the previous tail point to it and update the tail pointer
  * PopBack: O(n) without tail pointer; still O(n) if we have tail pointer, as we don't know the second last node (pointer is one direction) unless we start from the head.
* Stack: LIFO (last in first out).
* Queue: FIFO (first in first out). Notice if we want to have O(1) for both push and pop, we need two pointers to point both head and tail because the places to push and pop are different (not like stack).
* Tree traversal:
  * DFS (depth-first): in-order (left, node, right), pre-order (node, left, right), post-order (left, right, node)
  * BFS (breadth-first)

# Dynamic Arrays and Amortized Analysis
* Not like static array, dynamic arrays can be resized. List in python is dynamic array.
* Although dynamic array can be resized, the capacity and the actual size might be different, so some space is wasted.
* For different actions in dynamic array:
  * push, pop, set: O(1)
  * PushBack: when there is capacity then it's O(1), but when we need more capacity, we create a new array with more space, then copy the old elements and paste into new array, this process is O(n)
  * Remove: when we remove an element, all the elements after that needs to be assigned a new index, this process can be O(n)

# Priority Queues and Disjoint Sets
* Binary max heap is a binary tree where value of each node is at least the values of its children.
* Complete binary tree is defined as a binary tree with all levels filled except possibly the last one which is filled from left to right. The height of binary tree is most O(logn), which minimizes the complexity for a given number of elements.
* How does heap sort work?
  * First, create the binary max heap, time complexity is O(n)
  * Second, pop the root of the heap (biggest element)
  * Third, update the heap with SiftDown after removing the root, time complexity is O(logn)
  * Repeat Second and Third, it takes O(nlogn) in total
* Disjoint set is a data structure tracks a set of elements partitioned into a number of disjoint subsets. The basic operations include Find (find the belong set of an element) and Merge (merge two disjoint sets).
