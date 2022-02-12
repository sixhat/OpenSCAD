// Escolher da bateria
// 0 - AAA
// 1 - AA
// 2 - 18650
// 3 - D type
bat = 2;

$fn = 64;
ds = [ 11, 15, 19, 34 ]; // Diâmetros
hs = ds[bat];            // Altura da tampa igual ao diâmetro

// Tenta ocupar um quadrado ligeiramente acima de 10cms
// width = ceil(100/ds[bat]);
// height = ceil(100/ds[bat]);

// Define o n. de celulas manualmente
width = 1;
height = 1;

// Tamanho das paredes em mm.
wall = 1;
base = 2;

for (y = [0:height]) {
  for (x = [0:width]) {
    translate([ x * (ds[bat] + wall), y * (ds[bat] + wall), 0 ])
      cap(hs, ds[bat], wall, base);
  }
}

module cap(h, d, w, b) {
  union() {
    difference() {
      color("blue") cylinder(h + b, d / 2 + w, d / 2 + w);
      color("red") union() {
        translate([ -2, 2, 0 ]) cylinder(h, 0.5, 0.5, center = true);
        translate([ 2, 2, 0 ]) cylinder(h, 0.5, 0.5, center = true);

        translate([ -2, -2, 0 ]) cylinder(h, 0.5, 0.5, center = true);
        translate([ 2, -2, 0 ]) cylinder(h, 0.5, 0.5, center = true);

        translate([ -2, 0, 0 ]) cylinder(h, 0.5, 0.5, center = true);
        translate([ 2, 0, 0 ]) cylinder(h, 0.5, 0.5, center = true);
        translate([ -d / 2 - w, -w / 2, b ]) cube([ 4 * w, w, w ]);
        translate([ d / 2 - w, -w / 2, b ]) cube([ 4 * w, w, w ]);
        rotate(90) translate([ -d / 2 - w, -w / 2, b ]) cube([ 4 * w, w, w ]);
        rotate(90) translate([ d / 2 - w, -w / 2, b ]) cube([ 4 * w, w, w ]);
        translate([ 0, 0, b ]) cylinder(h + b, d / 2, d / 2);
      }
    }
  }
  color("yellow") translate([ 0, 2.5, base ]) rotate([ 90, 90, 0 ])
    cylinder(5, 1, 1);
}