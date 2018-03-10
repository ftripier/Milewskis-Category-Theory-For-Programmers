- If we condider the hom-functor as parametrized over A, we can rederive another functor from locally small categories to the category of functors, where objects are functors and morphisms are natural transformations.
- In trying to define this parameterized functor, we need to map morphisms to natural transformatioms. That's where the yoneda lemma comes in, because it establishes a one-to-one correspondence between elements of set-valued functors and natural transformations between the hom-functor and said set-valued functor.
- precisely, for the function f: a -> b, we are interested in natural transformations between C(a, -) and C(b, -).
- using the yoneda lemma, we get [C, Set](C(a, -), C(b, -)) = C(b, a)
- that means the functor we're looking for to represent our transformations is contravariant.
- a faithful functor is an injective fmap on homsets. No coalescing!
- a full functor is surjective on homsets, meaning it covers its codomain.
- a fully faithful functor is bijective on homsets(one-to-one/invertible)
- our functor is fully faithful

- the functor that maps objects to hom-set functors, and the one whose natural transformations we defined via contravariant functor, describes the yoneda embedding.

