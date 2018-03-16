Co-Yoneda:
[𝐂, 𝐒𝐞𝐭](𝐂(−, 𝑎), 𝐂(−, 𝑏)) ≅ 𝐂(𝑎, 𝑏)

Yoneda in haskell:
(a -> x) -> (b -> x) ≅ b -> a

btoa :: b -> a

fromY :: (a -> x) -> b -> x
fromY f b = f (btoa b)


1. Express the co-Yoneda embedding in Haskell.

(x -> a) -> (x -> b) ≅ a -> b

atob :: a -> b
fromY :: (x -> a) -> x -> b
fromY f x = atob (f x)

2. Show that the bijection we established between fromY and btoa is an isomorphism (the two mappings are the inverse of each other).

fromY :: (a -> x) -> b -> x
fromY f b = f (btoa b)
this takes you from btoa to fromY.

fromY id :: b -> a
Takes you to btoa.


3. Work out the Yoneda embedding for a monoid. What functor corresponds to the monoid’s single object? What natural transformations correspond to monoid morphisms?

The functor would directly embed the monoid as a monoid set. Natural transfomations correspond to multiplications.

4. What is the application of the covariant Yoneda embedding to
preorders? (Question suggested by Gershom Bazerman.)

I don't understand, wasn't this just covered in the text?

Well, here it is:
[𝐂, 𝐒𝐞𝐭](𝐂(−, 𝑎), 𝐂(−, 𝑏)) ≅ 𝐂(a, b)

the right side is either a one element set if a <= b or the empty set if b >= a.

the left hand side represents natural transformations between homsets to a and b. the homset of a is everything that is <= to a, and the homset of b is everything that is <= b. Natural transformations from homset A to homset B represent <= relationships between elements that are less than A and those that are less than b. There is exactly one natural transformation is all elements that are less than a are less than b, which is equivalent to the number of morphisms from a to b (one if a <= b). This yoneda embedding helps us reason about the transitive property of posets more directly.


5. Yoneda embedding can be used to embed an arbitrary functor
category [𝐂, 𝐃] in the functor category [[𝐂, 𝐃], 𝐒𝐞𝐭]. Figure out
how it works on morphisms (which in this case are natural transformations).

It reverses them, as it would for any embedded category, as a fully faithful contravariant functor. I'm not sure of what the significance of the category of origin being a functor category is.