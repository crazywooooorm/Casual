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
