since SCHEME is a applicative order interpreter it evaluates sqrt-iter which in turn calls a new-id with a sqrt-iter wich woould make an infinite loop.

Since if is a spetial procedure, it does not evaluate all it's arguments first.

