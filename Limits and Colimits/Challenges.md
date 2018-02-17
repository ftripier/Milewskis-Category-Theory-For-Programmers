1. How would you describe a pushout in the category of C++ classes?

A pushout in the category of C++ classes is somehow a sum type of a pair of C++ classes. I think perhaps this algebraic structure represents an interface? Need to stew on it.

2. Show that the limit of the identity functor Id ∷ 𝐂 → 𝐂 is the
initial object.

LimId
𝐂(𝑐, LimId) ≃ 𝑁𝑎𝑡(Δ𝑐, Id)

As a hand-wavy proof, the initial object is the only object that all objects in the image of Id would have a morphism to _if_ there is a limit and C(c, LimId) = Nat(∆c, Id).

3. Subsets of a given set form a category. A morphism in that category
is defined to be an arrow connecting two sets if the first is
the subset of the second. What is a pullback of two sets in such
a category? What’s a pushout? What are the initial and terminal
objects?

The pullback in the category of subsets appears to be the union of the two sets because the apex d would have to be the smallest possible superset (as defined by the factoring relationship from other possible supersets).

The pushout appears to be the intersection of two sets (again, as defined by the factoring relationship - the apex d would have to be the largest possible mutual subset of the two sets).

The initial object is the empty set, because it is the superset of no set, and the terminal object is the largest set, because it is the subset of no set.



