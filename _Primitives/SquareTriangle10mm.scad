module _squ() {
  union() {
    _tri();
    translate([ 10, 0, 0 ]) mirror([ 1, 1, 0 ]) translate([ -10, 0, 0 ]) _tri();
  }
}

module _tri() {
  w = .8;
  difference() {
    offset(r = w) polygon([ [ 0, 0 ], [ 10, 0 ], [ 0, 10 ] ]);

    offset(w / 2) offset(-w) polygon([ [ 0, 0 ], [ 10, 0 ], [ 0, 10 ] ]);
  }
};
