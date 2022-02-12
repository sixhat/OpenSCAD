$fn = 50;

// Parametros
r1 = 15 / 2;
r2 = 19 / 2;
altura = 20;
wall = 1;
tamanho = 100;

// Chamada
//pack_in_cube(tamanho,r1,r2, wall, altura);

pack_in_square(tamanho,r1,r2, wall);



// Modulo
module pack_in_cube(size,rs, rl, w, h){
    
    
difference(){
    union(){
        translate([0,0,h/2])   cube([size,size,h], true);
    }
    
    translate([0,0,w])   cylinder(h, rl,rl);
    translate([-rl-rs-w, 0,w]) cylinder(h, rs,rs);
    translate([+rl+rs+w, 0,w]) cylinder(h, rs,rs);
    }
}


module pack_in_square(size,rs, rl, w){
   
difference(){
    r = [rs, rl];
        px = rands(-size/2, size/2, floor(size / rl)) ;
        py = rands(-size/2, size/2, floor(size / rl)) ;
    union(){
        square(size, true);
    }

    echo(px);
    for(x = px){
        for(y=py){
        translate([x,y,0])        circle(rs);
        }
    }
    
}   
}
