$fn = 64;
difference() {
  translate([ -93.5, 10, 14 ]) cube([ 2.9, 50, 24 ], true);
  import("./STL/body_bottom.stl");
}
