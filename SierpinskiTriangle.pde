public void setup() {
	size(500,500);
	background(0);
	fill(255);
}

public void draw() {
	background(0);
	int len = mouseX;
	sierpinski(0,499,len);
}

public void mouseDragged() { //Optional~

}

public void sierpinski(int x, int y, int len) {
	if (len <= 20) {
		triangle(x,y,x+len,y,x+len/2,y-len);
	}
	else {
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}