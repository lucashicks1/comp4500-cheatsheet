#import "utils.typ": *

= Amortised Analysis

== Aggregate Method

1. Find time complexity of $n$ operations
2. Then each operation is $T(n) slash n$

#rule()

Dynamic Table, Insert Method:

Cost of $n$ insertions is:
$  & sum_(i=1)^(n) c_i                     \
   & <= n + sum_(j=1)^(ceil(lg n)) 2^(j-1) \
   & <= 3n                                 \
   & = Theta(n) $

Therefore, each operation is $Theta(n) slash n = Theta(1)$

== Accounting Method

1. Assign each operation an _amoritsed cost_.
2. If cost is higher than actual cost, the _credit_ can be used to discount other operations
- Amortised cost must be upper bound to actual cost
- Must show that the total amortised cost minus actual cost is never negative

Stack operations amortised cost:
1. Push: 2 (assign extra cost for future pop)
2. Pop: 0
3. Multipop: 0

== Potential Method

1. Determine _actual cost_ of operations
2. Define potential function $phi.alt$
3. Amortised cost is actual cost $+$ _change in potential_

$ hat(c_i) = c_i + (phi.alt(D_i) - phi.alt(D_(i - 1))) $

$ sum_(i=1)^n hat(c_i) = (sum_(i=1)^n c_i) + (phi.alt(D_n) - phi.alt(D_0)) $

- *Must* show that $phi.alt(D_i) >= phi.alt(D_0)$ for every $i$
- Amortised cost *must* be upper bound of actual cost
