1.
Show that the data type:
```

data Pair a b = Pair a b

```
is a bifunctor. For additional credit implement all three methods
of Bifunctor and use equational reasoning to show that
these definitions are compatible with the default implementations
whenever they can be applied.

A:

class Bifunctor f where
  bimap :: (a -> c) -> (b -> d) -> f a b -> f c d
  bimap g h = first g . second h
  first :: (a -> c) -> f a b -> f c b
  first g = bimap g id
  second :: (b -> d) -> f a b -> f a d
  second = bimap id

instance Bifunctor (,) where
  bimap f g (x, y) = (f x, g y)

pair constuctor is functorial in both args as

bimap id _ (x, y) = (x, _)
bimap _ id = (_, y)

bimap (f . g) _ = (fmap f . fmap g x, _)
bimap _ (f . g) = (_, fmap f . fmap g x)

holds by trivial equational reasoning

2. Show the isomorphism between the standard definition of Maybe
and this desugaring:
type Maybe' a = Either (Const () a) (Identity a)
Hint: Define two mappings between the two implementations.
For additional credit, show that they are the inverse of each other
using equational reasoning.

A:

Standard definition of Maybe -

data Maybe a = Nothing | Just a

Either definition -
instance Bifunctor Either where
  bimap f _ (Left x) = Left (f x)
  bimap _ g (Right y) = Right (g y)


