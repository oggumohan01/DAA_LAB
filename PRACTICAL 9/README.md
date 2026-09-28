# Implementation of Prim's Algorithm

## Practical Title

**Implement Prim's Algorithm**

## Aim

To implement **Prim's Algorithm** in Python to find the **Minimum Spanning Tree (MST)** of a weighted undirected graph.

## Introduction

Prim's Algorithm is a greedy algorithm used to find the **Minimum Spanning Tree** of a connected, weighted and undirected graph.

A Minimum Spanning Tree is a tree that:

* Connects all vertices.
* Contains exactly `V - 1` edges.
* Does not contain any cycle.
* Has the minimum possible total edge weight.

## Algorithm

1. Start with any vertex.
2. Mark the starting vertex as selected.
3. Find the minimum-weight edge connecting a selected vertex to an unselected vertex.
4. Add this edge to the Minimum Spanning Tree.
5. Mark the newly connected vertex as selected.
6. Repeat until all vertices are selected.
7. Calculate the total cost of the selected edges.

## Graph Used

The program uses the following weighted graph:

```text
      2
  1 ----- 2
  | \     |
 6|  \    |3
  |   \   |
  4    5--3
   \  9   |7
    \     |
      5
```

The adjacency matrix used in the program is:

```text
0  2  0  6  0
2  0  3  8  5
0  3  0  0  7
6  8  0  0  9
0  5  7  9  0
```

## Program Description

The Python program:

* Represents the graph using an adjacency matrix.
* Starts from vertex `1`.
* Selects the minimum-weight edge at each step.
* Adds the selected edge to the Minimum Spanning Tree.
* Calculates and displays the minimum total cost.

## Output

```text
Edges in Minimum Spanning Tree:
1 - 2 : 2
2 - 3 : 3
1 - 4 : 6
2 - 5 : 5
Minimum Cost: 16
```

## Time Complexity

The time complexity of this implementation is:

**O(V²)**

where `V` is the number of vertices.

## Space Complexity

The space complexity is:

**O(V²)**

because the graph is represented using an adjacency matrix.

## Applications

Prim's Algorithm can be used in:

* Computer network design
* Road network planning
* Electrical grid design
* Telephone network design
* Minimum-cost connection problems

## Result

Thus, **Prim's Algorithm was successfully implemented in Python**, and the Minimum Spanning Tree with minimum total cost was obtained.
