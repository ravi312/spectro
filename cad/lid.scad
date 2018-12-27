//lid
module lid(){
    translate([-92,40,0])
    {
        union(){
            translate([0,0,2])cube([90,60,1]);
            translate([2,2,0])cube([86,56,2]);
        }
    }
}
translate([0,0,60])lid();
