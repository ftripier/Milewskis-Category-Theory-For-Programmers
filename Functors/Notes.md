- A functor maps objects and morphisms in one category to objects and morphisms in another

- F :: C -> D

- if a is an object in C, F a is the resulting object in D, the image of a in D under F.

- morphism f in C
  f :: a -> b
  the image of f in D under F
  Ff :: Fa -> Fb

- but what about composition rules?
  composition h in C
  h = g . f
  F h = F g . F f

- what about identity morphisms?
  all identity motphisms in C mapped to morphisms in D
  F id(a) = id(F a)

- Functors must preserve the stucture of a category
  - THE FUNCTOR LAWS
    - must preserve identity (is this equivalent to mapping obejcts?)
    - must preserve composition
  - can be proved with equational reasoning
     - fmap is the morphism lifting part of a functor
        fmap :: (C a -> C b) -> (D a -> D b)
     - prove the preservation of id
     - fmap id = id
     fmap id Nothing
     = { definition of fmap }
      Nothing
    = {definition of id}
      id Nothing

    fmap id (Just x)
    = { definition of fmap }
      Just (id x)
    = { definition of id }
      Just x
    = { definition of id }
      id (Just x)

    - prove that maintains composition
      fmap (g . f) = fmap g . fmap f
    - in haskell, fmap abstractly defined as:
        class Functor f where
          fmap :: (a -> b) -> f a -> f b
        
        for maybe defined as:
          instance Functor Maybe where
            fmap _ Nothing = Nothing
            fmap f (Just x) = Just (f x)

    