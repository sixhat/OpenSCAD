// Spinners
$fn = 100;

module _spinner() {

  difference() {
    difference() {
      hull() {
        circle(25);
        translate([ 0, -45 ]) circle(1);
        square([ 6, 80 ], true);
      }

      translate([ 25, -30 ]) circle(20);
      translate([ 4, 5 ]) square([ 200, 500 ]);
    }
    translate([ -200, -100 ]) square([ 200, 200 ]);
  }
}

difference() {
  rotate_extrude() translate([ 0, 0, 0 ]) _spinner();

  translate([ 0, 10, 25 ]) rotate([ 90, 0, 0 ]) cylinder(20, 1, 1);
}
