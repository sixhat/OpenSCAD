$fn = 50;
module _squ() {
  union() {
    _tri();
    translate([ 10, 0, 0 ]) mirror([ 1, 1, 0 ]) translate([ -10, 0, 0 ]) _tri();
  }
}

module _tri() {
  w = 0.75;
  difference() {
    offset(r = w) polygon([ [ 0, 0 ], [ 10, 0 ], [ 0, 10 ] ]);

    offset(w / 2.5) offset(-w) polygon([ [ 0, 0 ], [ 10, 0 ], [ 0, 10 ] ]);
  }
};

module _bbox() {
  difference() {
    hull() {
      mirror([ 1, 0, 0 ]) _squ();
      mirror([ 0, 1, 0 ]) _squ();
      mirror([ 1, 0, 0 ]) {
        mirror([ 1, 0, 0 ]) _squ();
        mirror([ 0, 1, 0 ]) _squ();
      }
    }
    union() {
      mirror([ 1, 0, 0 ]) _squ();
      mirror([ 0, 1, 0 ]) _squ();
      mirror([ 1, 0, 0 ]) {
        mirror([ 1, 0, 0 ]) _squ();
        mirror([ 0, 1, 0 ]) _squ();
      }
      circle(3);
      translate([ 10, 0, 0 ]) circle(3);
      translate([ -10, 0, 0 ]) circle(3);
      translate([ 0, 10, 0 ]) circle(3);
      translate([ 0, -10, 0 ]) circle(3);
    }
  }
  // unComment this for wide holes
  //     rotate([0,0,45]) square(13, true);
  circle(1.5);
  translate([ 10, 0, 0 ]) circle(1.5);
  translate([ -10, 0, 0 ]) circle(1.5);
  translate([ 0, 10, 0 ]) circle(1.5);
  translate([ 0, -10, 0 ]) circle(1.5);
}

_bbox();

//_squ();
