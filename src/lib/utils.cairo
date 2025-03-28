#[starknet::library]
mod Utils {
    use starknet::ContractAddress;

    #[inline(always)]
    fn next_harvest_time(last_harvest: u64) -> u64 {
        last_harvest + 86400 
    }
}
