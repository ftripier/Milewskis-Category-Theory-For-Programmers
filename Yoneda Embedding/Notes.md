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

- Crucially, its important to realize that in the functor category, natural transformations are morphisms, and the hom-set functor itself can be embedded in Set via the hom-set functor by taking its natural transformations as the hom-set.

- Yoneda embedding is important because it maps a categories functors to set into a category. You can study natural transformations directly as morphisms. That means you could easily discern which functors are representable by studying morphisms.

- Generally, it seems important in category theory to study categories in various levels of "scoping". Set is the most zoomed in level of categoric examination because it allows you to study functions pointwise. The functor category is very zoomed out, but is more appropriate to examine how the categories functor's behave (like if they're representable).

