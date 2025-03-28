#[derive(Drop, Serde)]
struct Resource {
    #[key]
    olives: u64,
    grapes: u64,
    wheat: u64,
    divine_favor: u64
}
