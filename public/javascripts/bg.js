$(document).ready(function() {
	var w_img=2000, h_img=1037;
	var w,new_w,h, new_h, num;
	setWidth();
	setHeight();
	w=new_w;h=new_h;
	setSize();
	function setWidth(){
		new_w=$(window).width();
	}
	function setHeight(){
		new_h=$(window).height();
	}
	function setSize(){
		if ((w/w_img) > (h/h_img)) {
			w_img_new=w+20;
			h_img_new=~~((w+20)*h_img/w_img);
		} else {
			h_img_new=h+20;	
			w_img_new=~~((h+20)*w_img/h_img);
		}
		$('#bgSlider img').css({width:w_img_new, height:h_img_new});
	}
	setInterval(setNew,1);
	function setNew(){
		setWidth();
		setHeight();
		if ((w!=new_w)|(h!=new_h)) {
			w=new_w;h=new_h;
			setSize();
		}
	}
})