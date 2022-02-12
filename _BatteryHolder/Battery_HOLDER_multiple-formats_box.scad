$fn = 64;
// You can adjust these variables.
ds = [ 11, 15, 19 ];

width = 4;     // number of horizontal cups
thickness = 1; // thickness of wall
// don't adjust stuff below here
wall = thickness * 2;

difference() {

translate([-ds[2]-wall,-ds[2]-wall,0]) cube([ds[2]*width*3, ds[2]*6.5, ds[0]], center=false);
//  union() {
//    for (p = [0:width]) {
//      translate([ p * (ds[2] + thickness) * 2, 0, 0 ])
//        cylinder(ds[2], ds[2] + wall, ds[2] + wall);
//      translate(
//        [ p * (ds[2] + thickness) * 2.0 + ds[2] + thickness, ds[2] * 1.6, 0 ])
//        cylinder(ds[1], ds[1] + wall, ds[1] + wall);
//      translate([ p * (ds[2] + thickness) * 2, ds[2] * 2.95, 0 ])
//        cylinder(ds[1], ds[1] + wall, ds[1] + wall);
//      translate(
//        [ p * (ds[2] + thickness) * 2 + ds[2] + thickness, ds[2] * 4.0, 0 ])
//        cylinder(ds[0], ds[0] + wall, ds[0] + wall);
//      translate([ p * (ds[2] + thickness) * 2, ds[2] * 4.7, 0 ])
//        cylinder(ds[0], ds[0] + wall, ds[0] + wall);
//    }
//  }
  for (p = [0:width]) {
    translate([ p * (ds[2] + thickness) * 2, 0, wall ])
      cylinder(ds[2], ds[2], ds[2]);
    translate(
      [ p * (ds[2] + thickness) * 2.0 + ds[2] + thickness, ds[2] * 1.6, wall ])
      cylinder(ds[1], ds[1], ds[1]);
    translate([ p * (ds[2] + thickness) * 2, ds[2] * 2.95, wall ])
      cylinder(ds[1], ds[1], ds[1]);
    translate(
      [ p * (ds[2] + thickness) * 2 + ds[2] + thickness, ds[2] * 4.0, wall ])
      cylinder(ds[0], ds[0], ds[0]);
    translate([ p * (ds[2] + thickness) * 2, ds[2] * 4.7, wall ])
      cylinder(ds[0], ds[0], ds[0]);
  }
}