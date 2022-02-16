module _squ() {
    union() {
        _tri();
        translate([10, 0, 0]) 
            mirror([1, 1, 0]) 
            translate([-10, 0, 0]) 
            _tri();
    }
}

module _tri() {
    w = 0.8;
    difference() {
        offset(r = w) 
            polygon([[0, 0], [10, 0], [0, 10]]);
        
        offset(w / 2) 
            offset(-w) 
            polygon([[0, 0], [10, 0], [0, 10]]);
    }
}
;

module _bbox() {
    difference() {
        hull() {
            mirror([1, 0, 0]) _squ();
            mirror([0, 1, 0]) _squ();
            mirror([1, 0, 0]) {
                mirror([1, 0, 0]) _squ();
                mirror([0, 1, 0]) 
                    _squ();
            }
        }
        union() {
            mirror([1, 0, 0]) _squ();
            mirror([0, 1, 0]) _squ();
            mirror([1, 0, 0]) {
                mirror([1, 0, 0]) _squ();
                mirror([0, 1, 0]) 
                    _squ();
            }
        }
    }
    // unComment this for wide holes
//     rotate([0,0,45]) square(13, true);
}

_bbox();

