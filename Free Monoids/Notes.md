- When thinking about how to do the free monoid construction in category theory, one naturally turns to some sort of universal construction.

- In order for us to have a universal consturction in the first place, we need to represent monoids as a category. One possible representation uses sets as objects, and monoid-respecting "homorphisms" as morphisms. These homomorphisms need to map unit object to unit object, and need to ensure linearity of multiplication.

h(a * b) = h(a) * h(b)

If we forget about this structure, we can construct a category where we pick only the sets and morphisms that obey the laws above, and have monoids as objects, and homomorphisms as morphisms.

The name "forgetful functor" is a useful way to label the functor from Monoid to Set, because the functor _forgets_ about the importance of the mathematical structure of monoids (multiplciation and unit) by taking you to Set.

For any random set of generators, we want to find the free monoid. We know the set of generators will have a homomorphism to it. So, our query for the universal construction looks for all homomorphisms to sets in the image of the forgetful functor applied to objects in the Monoid category. The homomorphism _to the free monoid_ is _p_.

let x = set of generators for free monoid
let U = forgetful functor from Monoid to Set
let m = the free monoid in Monoid
p :: x -> U m

We are ranking all homomorphisms of the form
let n = some monoid in Monoid
q :: x -> U n

where the factoring morphism h is
h :: m -> n

with the corresponding image in Set through U:

q = U h . p