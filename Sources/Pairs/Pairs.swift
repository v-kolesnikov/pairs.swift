struct Pairs {
  func cons<A, B>(_ x: A, _ y: B) -> (@escaping (A) -> (B) -> Any) -> Any {
    return { f in f(x)(y) }
  }
}
