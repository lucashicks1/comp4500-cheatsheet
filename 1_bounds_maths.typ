= Bounds

== Rules
- Constants are always positive

Upper bound: $f in O(g) <=> exists c, n_0 > 0 bullet forall n >= n_0 bullet 0 <= f(n) <= c g(n)$\
Lower bound: $f in Omega(g) <=> exists c, n_0 > 0 bullet forall n >= n_0 bullet 0 <= c g(n) <= f(n)$\
Tight bound: $f in Theta(g) <=> exists c_1, c_2, n_0 > 0 bullet forall n >= n_0 bullet 0 <= c_1 g(n) <= f(n) <= c_2 g(n)$\
Little $o$ and $omega$ -> similar to tight bounds but replace $<=$ with $<$ and must be asymp non-neg

== Properties

$f in O(g) <=> g in Omega(f)$\
$f in Theta(g) <=> f in O(g) and f in Omega(g)$\

If $f$ and $g$ are asymptotically non-negative:

$lim_(n -> infinity)(f(n)) / (g(n))
    & = c >= 0 "then" f in O(g) \
    & = c > 0 "then" f in Theta(g) \
    & = infinity "then" g in O(f)$

== Maths

$ sum_(k=1)^(n)k = (n(n + 1)) / (2) $

$ a sum_(k=0)^(n)x^k & = a ( 1 + x + x^2 + ... x^n ) \
                     & = a (x^(n + 1) - 1) / (x - 1) $

$ sum_(k=0)^(infinity)x^k = 1 / (1-x) "for" |x| < 1 $

$ sum_(k=0)^(infinity) k x^k = x(sum_(k=0)^(infinity) k x^(k-1)) = x / (1-x)^2 $

$ H_n & = 1 + 1 / 2 + ... + 1 / k \
      & = ln(n) + O(1) $

L'Hopitals:

$ lim_(n -> a) f(n) = 0 = lim_(n -> a) g(n) $
$ lim_(n -> a) f(n) = plus.minus infinity = lim_(n -> a) g(n) $

$ therefore lim_(n -> a) f(n) / g(n) = lim_(n -> a) (f'(n)) / (g'(n)) $

Telescoping:

$ sum_(n=1)^(k) (a_k - a_(k - 1)) = a_n - a_0 $

$ sum_(n=1)^(k) (a_k - a_(k + 1)) = a_0 - a_(n + 1) $

Logarithms:

$ x^a = b <-> log_x b = a $
$ b^(log_b y ) = y $
$ a^(log_b n) = n^(log_b a) $
$ log_a b = (log_c b) / (log_c a) $
$ log (a b) = log a + log b $
$ log (a^b) = b * log a $
$ log (1 / a) = - log(a) $
$ log x < x "for all x" > 0 $
