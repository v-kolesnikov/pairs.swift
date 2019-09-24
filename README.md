# Pairs

[Church pairs](https://en.wikipedia.org/wiki/Church_encoding#Church_pairs) Swift implementation.

Pair   := λx.λy.λƒ.ƒ x y
First  := λp.p(λx.λy.x)
Second := λp.p(λx.λy.y)

```swift
import Pairs

let pair = pair("answer", 42)
let key = first(pair) // "answer"
let val = second(pair) // 42
```

### Notice

I wanted to write it something like that:

```swift
struct Pairs {
  let cons = { left, right in { fun in fun(left, right) } }
  let car = { pair in { pair { left, _ in left } } }
  let cdr = { pair in { pair { _, right in right } } }
}
```

But I didn't succeed in this.
