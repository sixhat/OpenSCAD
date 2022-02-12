
$fn = 64;
cylinder (2, 80, 80);

difference(){
union(){
linear_extrude(60) {
difference(){
    offset(2) circle(80);
    offset(0) circle(80);
}
}
linear_extrude(80) {
difference(){
    offset(2) circle(10);
    offset(0) circle(10);
} 


translate([0,10,0]) square([2, 140], true);
for(i=[0:45:360]){
    
rotate(i) translate([0,10,0]) square([2,140], true);
}
}
}
translate([0,0,2]) cylinder(80,10,10);
}

