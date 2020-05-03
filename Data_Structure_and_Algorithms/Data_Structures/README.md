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
