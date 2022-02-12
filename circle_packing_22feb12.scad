$fn = 50;

r1 = 15 / 2;
r2 = 19 / 2;
altura = 20;
wall = 1;

rp = 2 * 3.14159 * r1 + r2 + wall;
ang = floor(360 / (rp / (r1 +  wall)));

pack3(r1,r2, wall, altura);

module pack3(rs, rl, w, h){
difference(){
    union(){
        cylinder(h, rl+w,rl+w);
        translate([-rl-rs-w, 0,0]) cylinder(h, rs+w,rs+w);
        translate([+rl+rs+w, 0,0]) cylinder(h, rs+w,rs+w);
    }
    translate([0,0,w])   cylinder(h, rl,rl);
    translate([-rl-rs-w, 0,w]) cylinder(h, rs,rs);
    translate([+rl+rs+w, 0,w]) cylinder(h, rs,rs);
    }
}
