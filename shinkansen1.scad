module engine1(x,y,z) {
    translate([x,y,z]) {
        scale([2,1,.6])
        rotate([90,0,0])
        rotate_extrude(angle=90)
        intersection() {
            translate([0,-25,0])
            square(size=[50,50]);
            resize([100,50,0])
            circle(r=100);
        }
        scale([1,0.25,0.3])
        translate([-50,0,0])
        intersection() {
            translate([0,-100,0]) cube([200,200,200]);
            rotate([0,90,0])
            cylinder(r1=100,r2=100,h=50);
        }
    }
}

module engine2(x,y,z) {
    translate([x,y,z]) {
        scale([1,0.25,0.3])
        intersection() {
            translate([0,-100,0])
            cube([200,200,200]);
            sphere(r=100);
        }

        scale([1,0.25,0.3])
        translate([-50,0,0])
        intersection() {
            translate([0,-100,0])
            cube([200,200,200]);
            rotate([0,90,0])
            cylinder(r1=100,r2=100,h=50);
        }
    }
}

engine1(0,100,0);
engine2(0,0,0);