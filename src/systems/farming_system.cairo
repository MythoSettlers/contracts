#[dojo::system]
mod FarmingSystem {
    use super::{Position, Resource};
    use dojo::world::{IWorldDispatcher};
    use starknet::{ContractAddress, get_caller_address, block_timestamp};

    #[execute]
    fn execute(world: IWorldDispatcher) {
        let player = get_caller_address();

        let position = get!(world, player, Position);
        let mut resource = get!(world, player, Resource);

        assert(block_timestamp() - resource.last_harvest >= 86400, 'Espera 24h');

        if position.y < 100 {
            resource.olives += 10;
        } else {
            resource.wheat += 15;
        }
        resource.last_harvest = block_timestamp();

        set!(world, resource, player);
    }
}