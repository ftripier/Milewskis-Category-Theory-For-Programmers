1. Look at how ZFC defines function composition
2. derivatives -> linear algebra throigh category theory
3. visitor pattern -> functor
4. addition and multiplication arent functions
  - too many args
  - category theory gives us a generalized framwork for studying relations like this via composition rules

bottom up study of programming language complexity:
- members of same type have total functions defined for them
- category theory, by studying abstraction by narrowing on rules of composition,
allows you to define more complex abstractions than retain totality
- how would you test addition/product/subtraction/division bifunctors?

where do programming language bugs come from?
- incorrect specifcation
  - specification corrections should have 1-1 mapping to code changes
    - this happens if you've properly factored composition
- partial functions