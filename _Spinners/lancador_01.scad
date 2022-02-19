$fn = 50;


difference(){
linear_extrude(34) difference(){
	hull(){
    circle(15);
		translate([80,0]) circle(7);
	}
  circle(3);
}

translate([0,0,5]) linear_extrude(22) circle(21);
translate([5,0,5]) linear_extrude(22) square([30,300], true);

translate([50,0,30]) rotate([0,10,0]) linear_extrude(50) square([200,50],true);
translate([30,-5,-1]) linear_extrude(50) square([45,10]);
}
	