translate([0,100,0])
resize([100,50,30])
rotate([90,0,0])
rotate_extrude(angle=90)
    intersection() {
        translate([0,-25,0])
        square(size=[50,50]);
        resize([100,50,0])
        circle(r=100);
    }


resize([100,50,30])
intersection() {
    translate([0,-100,0]) cube([200,200,200]);
    sphere(r = 100);
}