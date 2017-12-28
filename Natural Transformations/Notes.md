- natural transformations operate between functions
- natural transformations are a way of defining morphisms between functors
- a natural transformation releis on morphisms present in the embedded category
- natural transformations map objects in the image by relying on morphisms present between them.
- natural transformations map morphisms [my understanding here needs some refinement]
- functors correspond to type constructors that map types to other types. They must also map the object's morphisms (function to function), and therefore must implement fmap.
- paramtrically polymorphic functions between two functors are always natural transformations. In Haskell, this means any polymorphic functions between types is a natural transformation.
- the naturality condition:

Between functors G and F, for any morphism f between objects a and b, with natural transformation 𝛼, with components 𝛼𝑎 and 𝛼𝑏 where:
𝛼𝑎 ∷ 𝐹𝑎 → 𝐺𝑎
𝛼𝑏 ∷ 𝐹𝑏 → 𝐺𝑏

Gf . 𝛼𝑎 = 𝛼𝑏 . Ff

Or, expressed in Haskell

fmap f . alpha = alpha . fmap f

where type inference arranges for functors to be specialized:
f :: a -> b
fmap::G f . alpha::a = alpha::b . fmap::F f

>The naturality condition becomes the statement that it doesn’t matter
whether we modify the items first, through the application of fmap,
and repackage later; or repackage first, and then modify the items in
the new container, with its own implementation of fmap. These two actions,
repackaging and fmapping, are orthogonal. “One moves the eggs,
the other boils them.”