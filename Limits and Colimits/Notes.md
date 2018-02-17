- The art of universal construction can be thought of in more first-order category theoretic terms.
- Specifically, in the universal construction of a product, one can think of "selecting objects" as a functor from the selected objects to the original category.
- There's a second functor that maps the selected objects to the candidate object
- There's a natural transformation between these functors!
- The natural transformations map to the "projections" in the universal construction version.
- A generalization of this category theoretic construction is called a cone. The image of the candidate object functor forms the apex of the cone, the image of the selected objects functor forms the base, the natural transformations decide the geometry.
- To form a cone, we start with a cagtegory I that defines the pattern. There is a functor D from I to C (original category) - its image is called the diagram. Some object c in C is selected as the apex. Then the constant functor ∆c is defined from I to C (collapses to the apex). The natural transformation from ∆c to D defines the cone.
- Naturality demands that all "walls" of the cone commute.
- One can fine a universal construction for cones themselves, via the fascinating recursive abstraction of category theory.
- morphisms between cones in the category of cones are factoring relationships between cone apexes
- therefore the universal cone is the terminal object
- in establishing a neturality condition for the factoring relationship between cones it becomes important to study a cone of cones wherein one tries to identify the special morphism that factors candidate cones to the universal cone
- the terminal object is a limit of the empty category I - both the ∆ and D functors would select no objects, and so the cone would just be the apex. the universal apex would be the factored version of all candidate apexes, which is tantamount to the non-limit definition of the terminal object.
- an interesting example of using a limit is in the equalizer construction, a category theoretic examintation of point equality.
- seeing categoric constructions is giving me a much better idea for the utility of category theory
- thinking about it, set constructions are really the interesting part

- In defining the limit, we had an intuitive notion that the factoring relationship between cones must contain a commuting triangle.
  - To give this relationship more rigour, we can define the factoring relationship in terms of constraints imposed by naturality condition.
  - So, we need to define this factoring as a natural transformation between two functors.
  - The first functor is the mapping of cone apexes to the hom-set of that cone apex to the limit. This functor is contravariant.
  - The second functor is also a mapping from cone to Set. It is also contravariant. It goes from c to Nat(∆c, D). It works by showing that components of the natural transformation reduce to
  c -> Dcom where com is a component. If you precompose the facotring morphism with this functor, you define contramap.

- A functor 𝐷 from 𝐈 to 𝐂 has a limit Lim𝐷 if and only if there is a natural isomorphism between the two functors I have just defined:
  𝐂(𝑐, Lim𝐷) ≃ 𝑁𝑎𝑡(Δ𝑐, 𝐷)
