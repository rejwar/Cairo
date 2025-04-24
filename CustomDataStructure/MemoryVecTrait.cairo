trait MemoryVevTrait<V, T> {
    fn New() -> V;

    fn Get(ref self: V , Index: usize) -> Option<T>;
    fn Set(ref self: V , Index: usize, Value: T) -> Option<T>;
    fn GetOrSet(ref self: V , Index: usize, Value: T) -> Option<T>;
    fn GetOrSetDefault(ref self: V , Index: usize) -> Option<T>;
    fn GetOrSetDefaultValue(ref self: V , Index: usize, Value: T) -> Option<T>;
    fn GetOrSetDefaultValueWith(ref self: V , Index: usize, Value: T) -> Option<T>;
    fn GetOrSetDefaultValueWithDefault(ref self: V , Index: usize, Value: T) -> Option<T>;
    fn GetOrSetDefaultValueWithDefaultValue(ref self: V , Index: usize, Value: T) -> Option<T>;
    fn GetOrSetDefaultValueWithDefaultValueWith(ref self: V , Index: usize, Value: T) -> Option<T>;
    fn GetOrSetDefaultValueWithDefaultValueWithDefault(ref self: V , Index: usize, Value: T) -> Option<T>;
    fn GetOrSetDefaultValueWithDefaultValueWithDefaultValue(ref self: V , Index: usize, Value: T) -> Option<T>;
    fn GetOrSetDefaultValueWithDefaultValueWithDefaultValueWith(ref self: V , Index: usize, Value: T) -> Option<T>;
    fn GetOrSetDefaultValueWithDefaultValueWithDefaultValueWithDefault(ref self: V , Index: usize, Value: T) -> Option<T>;
    fn GetOrSetDefaultValueWithDefaultValueWithDefaultValueWithDefaultValue(ref self: V , Index: usize, Value: T) -> Option<T>;
    fn GetOrSetDefaultValueWithDefaultValueWithDefaultValueWithDefaultValueWith(ref self: V , Index: usize, Value: T) -> Option<T>;     
}
