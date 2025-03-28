#[dojo::component]
struct Position {
    #[key]
    player: ContractAddress,
    x: u32,
    y: u32,
}
