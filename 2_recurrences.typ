#import "utils.typ": *

= Recurrences

== Divide and Conquer

These algos typically:
- break problem of size $n$ into $a$ parts of size $n / b$
- take $D(n)$ time to divide the problem
- take $C(n)$ time to combine solutions to subproblems

$ T(n) = a T(n / b) + D(n) + C(n) $

== Substitution

1. First guess the solution
3. Then state boundary conditions (i.e., what are base cases to prove)
2. Then prove using induction (base case, assumption, inductive step)

Example:

$ T(n) = 2T(floor(n / 2)) + n $

Choose $n_0$ then values of $2 <= n$ directly dependent on $T(1)$ are $T(2)$ and $T(3)$ - base cases.

*Strengthen:* if maths doesn't work, strengthen original guess by substracting constant *$b$* from it.

== Iteration

1. Expand recurrence until you get summation
2. Introduce $i$ as value of $n$ to hit base case
3. Bound summation to $i$
4. Evaluate limit of summation

== Master Method

$ T(n) = a T(n slash b) + f(n) $

where $n slash b$ can be $floor(n slash b)$ or $ceil(n slash b)$

#rule()

*Case 1*:\
$n^(log_b a)$ *polynomially larger than* $f(n)$\
$ f(n) in O(n^(log_b a - epsilon)) "for some" epsilon > 0 $
Solution: $Theta(n^(log_b a))$

#rule()

*Case 2*:\
$n^(log_b a) lg^k n$ *same tight bound as* $f(n)$ for some constant $k >= 0$\
$ f(n) in Theta(n^(log_b a) lg^(k) n) "for some" k >= 0 $
Solution: $Theta(n^(log_b a) lg^(k + 1) n)$

#rule()

*Case 3*:\
$f(n)$ *polynomially larger than* $n^(log_b a)$ and $f(n)$ is regular\
$  & "if" f(n) in Omega(n^(log_b a + epsilon)) "for some" epsilon > 0 \
   & "and" a f (n / b) <= c f(n) $
Solution: $Theta(f(n))$

#rule()

Function $f(n)$ is *regular* when:

$ a f(n slash b) <= c f(n) $

== Tips
- Assume $n$ has correct form to delete floors / ceilings (e.g., $floor(n / 4) -> n = 4^k$)
