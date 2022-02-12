$fn = 64;

rotate_extrude(angle=180){
translate([10,0,0]) union(){
translate([0,-2]) square([2,80]);
rotate(-10) rotate(-90) square([2,80]);
rotate(-10) translate([30,0]) square([2,80]);
rotate(-10) translate([78,0]) square([2,60]);
    }
}

pts = [
[10,-2],
[9+80*cos(10), -15],
[20+80*cos(10), 45],
[55, 74],
[10,78]
];

module parede(){
    rotate([90,0,0]) linear_extrude(2) difference() {
        polygon(pts);
        translate([15,10]) circle(2);
        translate([15,60]) circle(2);
        translate([82,-5]) circle(2);
        translate([90,35]) circle(2);

    }
}
    
color("red") translate([0,2,0]) parede();
rotate(180) color("red") translate([0,0,0]) parede();
rotate(90) color("red") translate([0,1,0]) parede();
rotate(45) color("red") translate([0,1,0]) parede();
rotate(135) color("red") translate([0,1,0]) parede();