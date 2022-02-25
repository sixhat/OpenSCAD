$fn = 50;

union() {
  difference() {
    union() {
      difference() {
        cylinder(15, 25, 25);
        translate([ 0, 0, 5 ]) cylinder(15, 15, 15);
      }
      translate([ 0, 0, -10 ]) cylinder(50, 3, 3);
      translate([ 0, 0, -10 ]) sphere(3);
    }

    translate([ 0, 10, 30 ]) rotate([ 90, 0, 0 ]) cylinder(20, 1, 1);
  }

  translate([ 0, 0, -10 ]) cylinder(10, 3, 15);
  for (a = [0:20:360]) {
    rotate([ 0, 0, a ]) translate([ 21, 0, 7 ]) rotate([ 0, 90, 0 ])
      cylinder(10, 5, 0);
    rotate([ 0, 0, a + 10 ]) translate([ 22, 0, 10 ]) rotate([ 0, 60, 0 ])
      cylinder(10, 5, 0);
    rotate([ 0, 0, a + 10 ]) translate([ 22, 0, 3 ]) rotate([ 0, 120, 0 ])
      cylinder(7, 5, 0);
    rotate([ 0, 0, a ]) translate([ 20, 0, 15 ]) rotate([ 0, 0, 0 ])
      cylinder(6, 3, 0);
  }
}

translate([ 0, 0, -5 ]) cube([ 20, 5, 5 ], true);
rotate(90) translate([ 0, 0, -5 ]) cube([ 20, 5, 5 ], true);
