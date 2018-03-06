1. Show that the two functions phi and psi that form the Yoneda
isomorphism in Haskell are inverses of each other.

One can show that
```
psi phi x = x
and
phi psi x = x
```
Simply by reasoning about their types (their signatures are naturally inverses). I should show this with a specific example, but I'm having trouble realizing the types.

