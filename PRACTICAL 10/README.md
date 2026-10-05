Detailed Summary – Kruskal’s Algorithm

Kruskal’s Algorithm is a greedy algorithm used to find the Minimum Spanning Tree (MST) of a connected, weighted, and undirected graph. A Minimum Spanning Tree is a set of edges that connects all the vertices of a graph with the minimum possible total edge weight and without forming any cycles.

The algorithm works by first arranging all the edges of the graph in ascending order according to their weights. It then examines each edge one by one, starting with the edge having the smallest weight. An edge is added to the Minimum Spanning Tree only if adding that edge does not create a cycle.

To efficiently check whether an edge creates a cycle, Kruskal’s Algorithm commonly uses the Disjoint Set (Union-Find) data structure. The find() operation determines which set or group a vertex belongs to, while the union() operation combines two different sets after an edge is selected.

The algorithm continues selecting the smallest available edges until the Minimum Spanning Tree contains exactly V − 1 edges, where V represents the number of vertices in the graph. Since a spanning tree with V vertices always contains V − 1 edges, the algorithm can stop at this point.

For example, in the given program, the vertices are a, b, c, and d. The edges are sorted according to their weights. The algorithm first selects the edge with weight 4, followed by the edges with weights 5 and 10. These edges connect all four vertices without forming a cycle. Therefore, the resulting Minimum Spanning Tree has a total cost of 19.

Steps of the Algorithm
Create a list containing all the vertices and edges of the graph.
Sort all edges in ascending order of their weights.
Create a separate set for every vertex.
Select the edge with the smallest weight.
Check whether the selected edge creates a cycle.
If it does not create a cycle, add the edge to the MST.
Use the Union-Find operation to combine the sets of the connected vertices.
Continue selecting edges in increasing order of weight.
Stop when V − 1 edges have been added to the MST.
Display the selected edges and calculate their total weight.
Advantages
It is simple and easy to implement.
It works efficiently for sparse graphs.
It guarantees the minimum total weight for the spanning tree.
Union-Find makes cycle detection efficient.
It is useful for network and infrastructure design problems.
Time Complexity

The main operation is sorting the edges, which takes O(E log E) time, where E is the number of edges.

The Union-Find operations are very efficient, so the overall time complexity is:

O(E log E)

Space Complexity

The algorithm requires space for storing vertices, edges, and the Union-Find data structure.

Space Complexity: O(V + E)

Conclusion

Kruskal’s Algorithm provides an efficient method for finding the Minimum Spanning Tree of a weighted undirected graph. By using a greedy approach, it always selects the lowest-weight edge that does not produce a cycle. The use of the Union-Find data structure makes cycle detection efficient. Therefore, Kruskal’s Algorithm is widely used in problems involving minimum-cost network connections, such as computer networks, road networks, electrical grids, and communication systems.
