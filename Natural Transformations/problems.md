1. Define a natural transformation from the Maybe functor to the
list functor. Prove the naturality condition for it.

makeList :: Maybe a -> [a]
makeList Nothing = []
makeList Just a = [a]

fmap f . alpha = alpha . fmap f

fmap id (makeList Nothing) = []
makeList (fmap id Nothing) = []
makeList (fmap id Just 3) = [3]
fmap id (makeList (Just 3)) = [3]

2. Define at least two different natural transformations between
Reader () and the list functor. How many different lists of ()
are there?
```
-- natural transformation from Reader () functor to list functor
putElementInList :: Reader' () a -> [a]
putElementInList (Reader' g) = [g()]
-- im super original
-- a _ = 3
-- putElementInList (Reader' a)
-- [3]

-- another natural transformation from Reader () functor to list functor 
doubleElement :: Reader' () a -> [a]
doubleElement (Reader' g) = [g(), g()]
```
there are infinite because we can just inductively apply the pattern established above.

3. Continue the previous exercise with Reader Bool and Maybe.
```
-- natural transformation from Reader Bool to Maybe
makeItJust :: Reader' Bool a -> Maybe a
makeItJust (Reader' g) = Just (g True)

ifItsWrongIDontWannaBeRight :: Reader' Bool a -> Maybe a
ifItsWrongIDontWannaBeRight (Reader' g) = Just (g False)

itsNothing :: Reader' Bool a -> Maybe a
itsNothing (Reader' _) = Nothing

-- *Main> a tf = if tf then 4 else 5
-- *Main> itsNothing (Reader' a)
-- Nothing
-- *Main> ifItsWrongIDontWannaBeRight  (Reader' a)
-- Just 5
-- *Main> makeItJust  (Reader' a)
-- Just 4
```

4. Show that horizontal composition of natural transformation satisfies
the naturality condition (hint: use components). It’s a good
exercise in diagram chasing.

𝛽 ∘ 𝛼 ∷ 𝐺 ∘ 𝐹 → 𝐺′∘ 𝐹′

So the two functors of interest are:

G' . F' and G . F

which I'll call GF' and GF.

which have natural transformations:

let 𝛽G' = G'𝛼a . 𝛽Fa
let G𝛽 = 𝛽F'a . G𝛼a

So we want to prove the naturality of horizontal composition, which makes either 𝛽G' or G𝛽 𝛼, and GF F, and GF' G.

let 𝛼 = 𝛽G'
let F = GF
let GF' = G

𝛼a :: Fa -> Ga
𝛼b :: Fb -> Gb

Gf . 𝛼𝑎 = 𝛼𝑏 . Ff

Gf . 𝛼𝑎 = Gf . G'𝛼a . 𝛽Fa

