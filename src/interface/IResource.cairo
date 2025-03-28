#[starknet::interface]
trait IResource<T> {
    fn harvest(resource_type: u64);
    fn get_balance(player: ContractAddress, resource_type: u64) -> u64;
}
