1. Can we turn the Maybe type constructor into a functor by defining:
fmap _ _ = Nothing
which ignores both of its arguments? (Hint: Check the functor
laws.)

A:

No, because it doesn't respect identity.

fmap id = Nothing

2. Prove functor laws for the reader functor. Hint: it’s really simple.

id = reader(id)
reader(a * b) = reader(a) * reader(b)
reader(a) * reader(b) = a(b)
reader(a(b)) = a(b)
=
a(b)

3. Implement the reader functor in your second favorite language
(the first being Haskell, of course).

const reader = f => ({
  run: g => f(g)
});

4. Prove the functor laws for the list functor. Assume that the laws
are true for the tail part of the list you’re applying it to (in other
words, use induction).

fmap id Nil = Nil
fmap id Cons a List a
id List a = id (induction)
id a = id (def of id)

a :: num -> num
a x = x + 1

b :: num -> num
b x = x + 2

a * b :: num -> num
a * x = x + 3
fmap(a * b) = fmap(a) * fmap(b)
fmap(x + 3) = fmap(x + 1) * fmap(x + 1) a Cons A
just applying it to a follows by definition of compositon.