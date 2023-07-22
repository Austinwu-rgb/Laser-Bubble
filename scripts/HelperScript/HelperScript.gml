/// @desc Moves "value" towards "target" by "amount"
/// @param {real} value The default value.
/// @param {real} target The desired value that we approach but never exceed.
/// @param {real} Amount The increment
/// @return {real} 

function Approach(_value, _target, _amount) {
	//check if value is less than target, else it returns the 
	if (_value < _target) return min(_value+_amount, _target)
	return max(_value-_amount,_target);
}