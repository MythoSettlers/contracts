#[starknet::contract]
mod Farming {
    use dojo::world::{IWorldDispatcher, world_address};
    use super::Position;
    use super::Resource;

    #[storage]
    struct Storage {}

    #[external(v0)]
    fn harvest(world: IWorldDispatcher) {
        let player = get_caller_address();
        world.execute("farming_system", array![player.into()]);
    }
}