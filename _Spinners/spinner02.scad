$fn = 100;

difference(){
union(){
difference(){
cylinder(15,25,25);
translate([0,0,5]) cylinder(15,15,15);
}
translate([0,0,-10]) 
cylinder(50,3,3);
translate([0,0,-10]) 
sphere(3);
}

    translate([0, 10, 30]) 
        rotate([90, 0, 0]) 
        cylinder(20, 1, 1);
}