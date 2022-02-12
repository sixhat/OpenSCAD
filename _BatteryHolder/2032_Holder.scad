$fn = 64;
d = 10.5;
h = 3.3;
w = 1;


difference(){
//cylinder(h+2*w,d+w,d+w, true);
translate([0,-d-w*2,-d-2*w]) cube([11*(h+2*w)+3*w,2*d+4*w,d+2*w]); 
	
translate([w*4,0,0]) for(x = [0:10]) {
	translate([x*(h+2*w),0,0]) rotate([0,90,0]) cylinder(h,d,d,true);
}
}