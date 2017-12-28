data Const c a = Const c deriving (Show)
instance Functor (Const c) where
  fmap _ (Const v) = Const v

unConst :: Const c a -> c
unConst (Const x) = x

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:xs) = Just x

length' :: [a] -> Const Int a
length' [] = Const 0
length' (x:xs) = Const (1 + unConst (length' xs))

newtype Reader' e a = Reader' (e -> a)
instance Functor (Reader' e) where
  fmap f (Reader' g) = Reader' (\x -> f (g x))

-- a _ = 3
-- obvious (Reader g) = Just (g ())
-- obvious (Reader' a)
-- -> Just 3

-- -- newtype Op r a = Op(a -> r)
-- class Contravariant f where
--   contramap :: (b -> a) -> (f a -> f b)
-- instance Contravariant (Op r) where
--   -- (b -> a) -> Op r a -> Op r b
--   contramap = flip (.)

-- natural transformation from maybe functor to list functor
makeList :: Maybe a -> [a]
makeList Nothing = []
makeList (Just a) = [a]

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