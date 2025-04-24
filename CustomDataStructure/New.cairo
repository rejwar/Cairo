impl UserDatabaseDestruct<T , +Drop<T> , +Felt252DictValue<T>> of Destruct<UserDatabase<T>>{
    fn Destruct() {
        // Deallocate the memory for the UserDatabase
        let user_database = self.get();
        let user_database_ptr = user_database as *mut UserDatabase<T>;
        unsafe {
            // Call the destructor for each element in the database
            for i in 0..user_database.size {
                let user = &mut (*user_database_ptr).users[i];
                user.destruct();
            }
            // Free the memory allocated for the UserDatabase
            free(user_database_ptr);
        }
    }
}
