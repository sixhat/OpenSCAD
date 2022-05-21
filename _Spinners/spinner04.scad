$fn = 100;

color("red") sphere(5.5);


rotate_extrude(angle = 360) 
translate([5,0,0]) rotate([0,0,-50]) square([2,12], false);

color("blue") cylinder(35, 5,5);



color("gray")
translate([0,0,6]) rotate_extrude(angle = 360, $fn=3) 
translate([15,0,6]) polygon([[0,0],[16,4],[0,7] ]);

color("gray")
rotate(180)
translate([0,0,6]) rotate_extrude(angle = 360, $fn=3) 
translate([15,0,6]) polygon([[0,0],[16,4],[0,7] ]);

difference(){
translate([0,0,12]) cylinder(6, 18,20);
//translate([-11,6,18]) text("picada", font="NovaMono for Powerline:style=Regular", size=5);
//translate([-11,-10,18]) text("manuel", font="NovaMono for Powerline:style=Regular", size=5);

}