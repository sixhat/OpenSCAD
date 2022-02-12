$fn = 64;
// You can adjust these variables.
ds = [ 11, 15, 19 ];

width = 8;     // number of horizontal cups
thickness = 1; // thickness of wall
// don't adjust stuff below here
wall = thickness * 2;

difference() {
  hull() {
    for (p = [0:width]) {
      translate([ p * (ds[2] + wall), 0, 0 ])
        cylinder(ds[2], ds[2]/2 + wall, ds[2]/2 + wall);
      translate([ p * (ds[2] + wall) , ds[2], 0 ])
        cylinder(ds[1], ds[1]/2 + wall, ds[1]/2 + wall);
      translate([ p * (ds[2] + wall), ds[2] * 2, 0 ])
        cylinder(ds[1], ds[1]/2 + wall, ds[1]/2 + wall);
      translate(
        [ p * (ds[2] + wall), ds[2] * 2.9, 0 ])
        cylinder(ds[0], ds[0]/2 + wall, ds[0]/2 + wall);
      translate([ p * (ds[2] + wall) , ds[2] * 3.7, 0 ])
        cylinder(ds[0], ds[0]/2 + wall, ds[0]/2 + wall);
    }
  }

    for (p = [0:width]) {
      translate([ p * (ds[2] + wall), 0, wall ])
        cylinder(ds[2], ds[2]/2 , ds[2]/2 );
      translate([ p * (ds[2] + wall) , ds[2], wall ])
        cylinder(ds[2], ds[1]/2 , ds[1]/2 );
      translate([ p * (ds[2] + wall), ds[2] * 2, wall ])
        cylinder(ds[2], ds[1]/2 , ds[1]/2 );
      translate(
        [ p * (ds[2] + wall), ds[2] * 2.9, wall ])
        cylinder(ds[2], ds[0]/2 , ds[0]/2 );
      translate([ p * (ds[2] + wall) , ds[2] * 3.7, wall ])
        cylinder(ds[2], ds[0]/2 , ds[0]/2 );
    }
  
}