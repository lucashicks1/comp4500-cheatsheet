#import "@preview/big-todo:0.2.0": *

= Dynamic Programming

1. Come up with recursive solution
2. Draw up table of subproblems
3. Identify dependencies of subproblems
4. Bottom up

*LCS*:

$ "A"([], S_2)      & = "A"(S_1, []) = 0                           \
  "A"(S_1.X, S_2.X) & = "A"(S_1, S_2) + 1                          \
  "A"(S_1.X, S_2.Y) & = "MAX"("A"(S_1, S_2.Y), "ALCS"(S_1.X, S_2)) $

#todo([Include these problems])

*Matrix Multiplication*:

*All Pairs Shortest Path*:

*Floyd Warshall*:

*Johnson's Algorithm*:

*Activity Selection (Greedy)*:

*Fractional Knapsack (Greedy)*:

*Binary Knapsack (Dynamic Prog)*:
