
function ScreenShake(_magnitude, _length){
	with(oCamera) {
		if (_magnitude > shakeRemain) {
			shakeMagnitude = _magnitude;
			shakeRemain = _magnitude; 
			shakeLength = _length;
		}
	}
}