- Type Constructors correspond to mappings between objects in a category
- How can type consturctors be extended to functors (which implement fmap)
- (trying to remember what fmap is)
          fmap :: (a -> b) -> (f a -> f b)
  boom, got it:
          class Functor f where
          fmap :: (a -> b) -> f a -> f b

- functors are morphisms in Cat

-
  class Bifunctor f where
  bimap :: (a -> c) -> (b -> d) -> f a b -> f c d
  bimap g h = first g . second h
  first :: (a -> c) -> f a b -> f c b
  first g = bimap g id
  second :: (b -> d) -> f a b -> f a d
  second = bimap id

- use of id proves in bifunctor proves its abstract utility
- example of a bifunctor - if a product exists between two types, the mapping from those
types to their pair is a bifunctor.

  instance Bifunctor (,) where
    bimap f g (x, y) = (f x, g y)

- set is a monoidal category with respect to cartesian product

- It is a requirement for monoidal categories that the binary operator be a bifunctor.

- Identity functor and Const functor. Everything else in algebraic data types is a product and coproduct composition of those two.