# Algorithms Toolbox
* Greatest common divisor * Least common multiple = Number_a * Number_b, it's easy to show.
* For any integer m >= 2, Fibonacci series mod m is periodic, the period always starts with 0, 1 and is known as Pisano period.  
* Sum of Fibonacci series is also a Fibonacci-like series, it's easy to show.

# Greedy Algorithms
* When an overall optimal result can be reached by taking optimal choice for each step, we can use greedy algorithms.
* After each step, the rest of the problem should have the same structure with the one before.

# Divide-and-Conquer
* Divide-and-Conquer algorithms simply follow three steps to solve the problem: divide the problems to subproblems, solve subproblems recursively and combine the solutions.
* The complexity of a general divide-and-conquer problem is: **T(n)=aT(n/b) + O(n^d)**, which means solve a subproblems with size n/b, and combine step takes O(n^d) time. To figure out the total complexity, we can use [Master Theorem](https://brilliant.org/wiki/master-theorem/). But basically, we can easily get the sense of the complexity by comparing the complexity of original problem and the problem after first step divide-and-conquer.
* Sorting algorithms summary:
  * Selection sort: a naive sorting way, select smallest element in each traversal. Time complexity is O(n^2).
  * Merge sort: divide the list until basic elements, then merge sorted sub lists together. Time complexity is consistently O(nlogn)
  * Quick sort: pick one element as pivot, traverse the rest elements, swap the elements based on whether bigger or smaller than pivot. Divide and conquer the same process until basic elements. Time complexity is on average O(nlogn), but in worst case (pivot is always the extreme element, e.g. sorted list) it can be O(n^2). Typically we do 2-way quick sort, but 3-way (elements equal to pivot will be a separate group) quick sort will be more efficient when our list has many non-unique elements.
  * Counting sort: A sort method works for the situation when there are not many unique elements and you already know the sort of those unique elements. If the range of elements is 0 to k and you have n elements, the complexity is O(n+k).

     
