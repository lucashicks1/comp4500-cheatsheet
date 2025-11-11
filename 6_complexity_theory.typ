#import "utils.typ": *
#import "@preview/big-todo:0.2.0": *

= Complexity Theory

#head[Decision Problems] Problems which have a yes/no answer\
#head[Optimisation Problems] Usually have closely related decision problem\
Easy OP $->$ Easy DP && Hard DP $->$ Hard DP

#head[Abstract Problems]
- Binary relation on a set I of problem instances and a set $S$ of problem solutions
- Inputs are thought of abstractly (i.e., graph is just a graph)

#rule()

#head[Encodings]
Encodes problem instance to a set of binary strings ${0, 1}^*$
#todo([Include encoding tut problem])

#head[Polynomially Related Encodings]
Two encodings $e_1$ and $e_2$ are polynomially related if exists polynomial functions $f_12$ and $f_21$ such that:

$ f_12(e_1(i)) = e_2(i) "and" f_21(e_2(i)) = e_1(i) $

and non-instances are mapped to non-instances

#head[Complexity on Encoding]
- If we have integer $k$ as input to algo
- Say algo has running time of $Theta(k)$
- If binary representation of $k, n = floor(lg k) + 1$
- Therefore, complexity is $Theta(k) = Theta(2^n)$

#head[Standard Encodings]
- encoding of an integer is polynomially related to its binary encoding
- encoding of finite set is relating to its encoding as list of elements in brace seperated by comma

#rule()

#head[Concrete Problems]
Algorithm solves concrete problem in $O(T(n))$ if when given problem instance $i$ of length $n = |i|$, the algo produces solution in $O(T(n))$.

#head[Reduction Algorithm]
A _polynomial-time reduction algorithm_ reduces instance $alpha$ of problem A into instance $beta$ of problem B in polynomial time.

#head[Complexity Classes]
- *P*: Set of concrete decision problems solved in polynomial time
- *NP*: Set of concrete decision problems where solution (certificate) can be checked in polynomial time.
- *NP-Hard*: Concrete decision problem $B$ where every other problem $A in N P$ is polynomially reducable to $A$.
- *NP-Complete*: Concrete decision problem that is both *NP-HARD* and in *NP* (e.g., Circuit SAT).

#head[NP Hard Proof]
- Assume problem $Y$ is NP-hard
- Show $Y$ is polynomial-time reducible to $Z$, making $Z$ NP-hard
- If every problem $A in N P$ is poly-reducible to $Y$ (NP HARD), and we can convert $Y -> Z$, then every $A in N P$ is reducible to $Z$.

== HAM CYCLES

== Clique

== Vertex Cover

#todo[EXAMPLES]
