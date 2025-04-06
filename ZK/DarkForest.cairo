#[starknet::contract]
mod DarkForest {
    #[storage]
    struct Storage {
        player_positions: LegacyMap<ContractAddress, (u256, u256)>,
    }

    #[external(v0)]
    fn MovePlayer(
        ref self: ContractState,
        new_x: u256,
        new_y: u256,
        zk_proof: felt252  // প্রুফ যে মুভটি ভ্যালিড
    ) {
        assert(zk_proof == 1, 'Invalid move');
        let player = get_caller_address();
        self.player_positions.write(player, (new_x, new_y));
    }
}
