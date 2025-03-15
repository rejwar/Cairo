%lang starknet

@event
func LogEventMessage(msg: felt) {
}

@external
func TriggerEventLog(msg: felt) {
    LogEventMessage.emit(msg);
    return ();
}
