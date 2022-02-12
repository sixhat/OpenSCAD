$fn = 64;
ds = [ 11, 15, 19, 34 ]; // Diâmetros


module hex_packing(r, nx,ny , w){
    for(x=[0:nx]){
            for(y=[0:ny]){
                     translate([2*x*(2*r+w),2*sin(60)*y*(2*r+w),0]) hex(r,w);
            }
    }
}

module hex(r,w){
    circ(r,w);
    for(ang=[0:60:360]){
        rotate([0,0,ang]) translate([2*r+w,0,0]) circ(r,w);
    }
}


module circ(r, w){
    difference(){
        circle(r+w);
        circle(r);
    }
}


// Go
union(){
hull(){
    linear_extrude(2) hex_packing(ds[1]/2,2,2,1);
}
    linear_extrude(22) hex_packing(ds[1]/2,2,2,1);
}

//hex(15,1);

//circ(50,10);