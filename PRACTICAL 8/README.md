# Implementation of Graph and Searching (DFS and BFS)

## Practical Title

**Implementation of Graph and Searching (DFS and BFS)**

## Aim

To implement a graph using Python and perform graph traversal using:

1. Breadth First Search (BFS)
2. Depth First Search (DFS)

## Introduction

A graph is a data structure consisting of **vertices (nodes)** and **edges** that connect the vertices.

Graph traversal is the process of visiting all the nodes of a graph systematically.

Two commonly used graph traversal techniques are:

* **BFS (Breadth First Search)**
* **DFS (Depth First Search)**

## Algorithm

### BFS Algorithm

1. Start from the selected node.
2. Create an empty set called `visited`.
3. Add the starting node to a queue.
4. Remove a node from the front of the queue.
5. If the node has not been visited, mark it as visited.
6. Add all unvisited neighboring nodes to the queue.
7. Repeat until the queue becomes empty.

### DFS Algorithm

1. Start from the selected node.
2. Mark the node as visited.
3. Store the node in the result.
4. Visit an unvisited neighboring node.
5. Continue recursively until there are no unvisited neighbors.
6. Backtrack and visit the remaining unvisited nodes.

## Graph Used

The following graph is represented using an adjacency list:

```text
A → B, C
B → A, D, E
C → A, F
D → B
E → B, F
F → C, E
```

## Program Description

The Python program:

* Creates a graph using a dictionary.
* Implements BFS using a queue.
* Implements DFS using recursion.
* Starts both searches from node `A`.
* Displays the graph and traversal results.

## Output

```text
Graph:
A -> ['B', 'C']
B -> ['A', 'D', 'E']
C -> ['A', 'F']
D -> ['B']
E -> ['B', 'F']
F -> ['C', 'E']

BFS Traversal: ['A', 'B', 'C', 'D', 'E', 'F']
DFS Traversal: ['A', 'B', 'D', 'E', 'F', 'C']
```

## Time Complexity

For a graph with `V` vertices and `E` edges:

* **BFS:** O(V + E)
* **DFS:** O(V + E)

## Space Complexity

* **BFS:** O(V)
* **DFS:** O(V)

## Difference Between BFS and DFS

| BFS                                             | DFS                                       |
| ----------------------------------------------- | ----------------------------------------- |
| Uses a queue                                    | Uses recursion/stack                      |
| Visits nodes level by level                     | Goes deep before backtracking             |
| Useful for shortest path in an unweighted graph | Useful for exploring connected components |
| Requires a queue                                | Requires a stack or recursion             |

## Result

Thus, the graph was successfully implemented in Python, and **BFS and DFS graph searching techniques** were successfully performed.
