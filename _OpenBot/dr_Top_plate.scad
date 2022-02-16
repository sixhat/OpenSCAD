
$fn = 64;
include <../_Primitives/SquareTriangle10mm.scad>;


difference(){
import("./STL/body_top.stl");

translate([45,0,-2]) linear_extrude(10) _bbox();
translate([65,0,-2]) linear_extrude(10) _bbox();
translate([85,0,-2]) linear_extrude(10) _bbox();
translate([45,20,-2]) linear_extrude(10) _bbox();
translate([65,20,-2]) linear_extrude(10) _bbox();
translate([85,20,-2]) linear_extrude(10) _bbox();

translate([45,40,-2]) linear_extrude(10) _bbox();
translate([65,40,-2]) linear_extrude(10) _bbox();
translate([85,40,-2]) linear_extrude(10) _bbox();

translate([45,-20,-2]) linear_extrude(10) _bbox();
translate([65,-20,-2]) linear_extrude(10) _bbox();
translate([85,-20,-2]) linear_extrude(10) _bbox();

translate([25,-20,-2]) linear_extrude(10) _bbox();
translate([5,-20,-2]) linear_extrude(10) _bbox();
translate([-15,-20,-2]) linear_extrude(10) _bbox();

translate([25,40,-2]) linear_extrude(10) _bbox();
translate([5,40,-2]) linear_extrude(10) _bbox();
translate([-15,40,-2]) linear_extrude(10) _bbox();

translate([-95,20,-2]) linear_extrude(10) _bbox();
translate([-95,0,-2]) linear_extrude(10) _bbox();
}





//color("red") translate([-15,2,0]) difference(){
//  translate([-93.5,8,14])  
//	hull() {
//		translate([0,17,4]) rotate([0,90,0]) cylinder(2.85, 10, 10, true);
//		translate([0,-17,4]) rotate([0,90,0]) cylinder(2.85, 10, 10, true);
//		cube([2.85,45, 24], true);
//
//	}
//	import("/Users/dr6845/Dropbox/_Code/OpenSCAD/_OpenBot/STL/sonar_voids.stl");
//}






module _bbox(){
	difference(){

hull(){		
mirror([1,0,0]) _squ();
mirror([0,1,0]) _squ();
mirror([1,0,0]) {
	mirror([1,0,0]) _squ();
	mirror([0,1,0]) _squ();
}
}

union(){		
mirror([1,0,0]) _squ();
mirror([0,1,0]) _squ();
mirror([1,0,0]) {
	mirror([1,0,0]) _squ();
	mirror([0,1,0]) _squ();
}
}
}
}