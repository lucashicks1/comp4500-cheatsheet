= Graphs

== Intro

- Edge $(u,v)$ is incident from vertex $u$ and incident on $v$
- Simple cycle: Can't repeat vertices
- Forest: Acyclic graph, Tree: Forest that is fully connected

*Adjacency List (Sparse Graphs)*:
- Space: $Theta(V + E)$
- Time (`isAdjacent`): $Theta(V)$
- Time (`listAdjPairs`): $Theta(V + E)$

*Adjacency Matrix (Dense Graphs)*:
- Space: $V^2$
- Time (`isAdjacent`): $Theta(1)$
- Time (`listAdjPairs`): $Theta(V^2)$

*Topological Sort*:

1. Init empty linked list of vertices
2. Run DFS on Graph
3. As each vertex finishes, insert onto front of linked list
i.e., return vertices in descending order of their DFS finish time

== Minimum Spanning Tree

*Prims Algorithm*:

1. Initially choose 1 vertex from $G.V$ to be in $T$
2. At each iteration, choose least weight edge leaving $T$
3. Stop when have reached $V-1$ edges (i.e., is spanning)

Use a priority queue

$Theta(V) * T_("EXTRACT") + Theta(E) * T_("DECREASE_KEY")$
- Array: $O(V^2)$
- Binary Heap: $O(E lg V)$
- Fib Heap: $O(E + V lg V)$

*Kruskals Algorithm*:

1. Each vertex is a disjoint set
2. At each step, pick smallest edge that joins two sets
Uses path compression heuristic of disjoint set DS

$ O(E lg E) $ - Dominated by sorting

*Djikstras*:

$ O(V T_("EXTRACT") + E dot T_("DECREASE_KEY")) $

*Bellman-Ford*:

- Single source shortest path
- Handles negative edges
- Returns $#false$ if negative weight cycle

1. Init shortest path graph (i.e., distances to inf)
2. Relax each edge $V-1$ times
3. Check if 1 more relax causes distance to change $therefore$ neg. cycle

$ O(E V) $
