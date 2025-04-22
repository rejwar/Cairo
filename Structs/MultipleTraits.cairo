#[genrate_trait]
impl RectangelCalcImpl of RectangelCalc {
    fn area (self: @Rectangle) -> u64 {
        (*self.width) * (*self.height)
    }
}

#[generate_trait] 
impl RectangelCmpImpl of RectangelCmp {
    fn can_hold(self: @Rectangle, other: @Rectangle) -> bool {
        *self.width > *other.width && *self.height > *other.height
    }

}
