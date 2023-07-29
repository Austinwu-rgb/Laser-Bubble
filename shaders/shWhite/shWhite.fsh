//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//uniform is a value you pass into the shader from outside
uniform float alpha;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	//shaders need to have decimal points in numbers
	gl_FragColor.rgb = 1.0 - (1.0 - gl_FragColor.rgb) * (1.0 - alpha);

}
