// Escolher da bateria 
// 0 - AAA 
// 1 - AA
// 2 - 18650
// 3 - D type
bat = 2; 

$fn = 64;
ds = [ 11, 15, 19 , 34];             // Diâmetros
hs = ds[bat]; // Altura da tampa igual ao diâmetro

// Tenta ocupar um quadrado ligeiramente acima de 10cms
//width = ceil(100/ds[bat]); 
//height = ceil(100/ds[bat]);

// Define o n. de celulas manualmente
width = 4; 
height = 1;

// Tamanho das paredes em mm.
wall = 1 ; 
base = 2 ;

for (y = [0:height]) {
  for (x = [0:width]) {
    translate([ x * (ds[bat] + wall), y * (ds[bat] + wall), 0 ]) 
      cap(hs, ds[bat], wall, base);
  }
}

module cap(h, d, w, b){
    difference() {
        color("red") cylinder(h+b, d / 2 + w, d / 2 + w);
        color("red") union(){
            translate([ -3.5-bat,0,0]) cylinder(h, 0.5, 0.5, center=true);  
            translate([ 3.5+bat,0,0]) cylinder(h, 0.5, 0.5, center=true);  
            cube([3,6,3*b], center=true);
            translate([ 0, 0, b ]) cylinder(h+b, d / 2, d / 2);  
        }
    }
}