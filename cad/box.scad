
$fn=30;
module box(box_x,box_y,box_z,box_t,win_y,win_z,cyl_r,cyl_h,cyl_t){
    difference(){
        union(){
            difference(){
                cube([box_x,box_y,box_z]);
                union(){
                            //
                            translate([box_t,box_t,box_t])
                            cube([box_x-(2*box_t),box_y-(2*box_t),box_z-box_t]);
                            translate([box_x-box_t,box_y/2-win_y/2,box_z/2-win_z/2])
                            cube([box_t,win_y,win_z]);        
                }    
            }
            translate([box_x/2,box_y/2,0])cylinder(r=cyl_r,h=cyl_h);
        }
        translate([box_x/2,box_y/2,0])cylinder(r=cyl_r-cyl_t,h=cyl_h-cyl_t);
    }
    translate([0,0,box_z/2]){
        translate([(box_x-(2*box_t))-2-2,0,0])slot(2,4,6,2,box_x,box_y,box_z,box_t);
        translate([(box_x-(2*box_t))-2-2-12,0,0])slot(2,4,6,2,box_x,box_y,box_z,box_t);
        translate([(box_x-(2*box_t))-2-2-12-4,0,0])slot(2,4,6,2,box_x,box_y,box_z,box_t);
        translate([(box_x-(2*box_t))-2-2-12-4-48-2,0,0])slot(2,4,6,2,box_x,box_y,box_z,box_t);
        translate([(box_x-(2*box_t))-2-2-12-4-48-2-4,0,0])slot(2,4,6,2,box_x,box_y,box_z,box_t);
    }
}
//cube - spacing - thickness of material
//cylinder height taken from the base of the cube
//slot(x,y,z,spacing)
//box(box x,box y, box z,thickness,window x,window y,cylinder radius,height, thickness)
box(90,60,46,2,40,25,4,6,1);

module slot(slot_x,slot_y,slot_z,slot_s,box_x,box_y,box_z,box_t){
    translate([box_t,box_t,box_t]){
        cube([slot_x,slot_y,slot_z]);
        translate([0,(box_y-(box_t*2))-slot_y,0]){cube([slot_x,slot_y,slot_z]);}
    }
}