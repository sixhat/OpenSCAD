$fn = 64;
// You can adjust these variables.
width = 4;      // number of horizontal cups
height = 5;     // number of vertical cups
depth = 51 / 4; // internal depth of cups
diameter = 15;  // diameter of cylinder AA=15 AAA=11
thickness = 1;  // thickness of wall
base = 1;       // thickness of cup bases
// don't adjust stuff below here
columns = width - 1;
rows = height - 1;
wall = thickness * 2;
dia = diameter + thickness;
dh = dia * sin(60) - dia;
cup = depth + base;
difference() {
  union() {
    // main body
    for (y = [0:rows]) {

      if (y % 2 == 1) {
        for (x = [-1:columns]) {
          translate([ x * dia + dia / 2, y * dia + dh * y, 0 ])
            cylinder(h = cup, d = diameter + wall);
        }
      } else {
        for (x = [0:columns]) {
          translate([ x * dia, y * dia + dh * y, 0 ])
            cylinder(h = cup, d = diameter + wall);
        }
      }
    }
  }
  // hollow cores

  for (y = [0:rows]) {

    if (y % 2 == 1) {
      for (x = [-1:columns]) {
        translate([ x * dia + dia / 2, y * dia + dh * y, base ])
          cylinder(h = cup, d = diameter);
      }
    } else {
      for (x = [0:columns]) {
        translate([ x * dia, y * dia + dh * y, base ])
          cylinder(h = cup, d = diameter);
      }
    }
  }
}