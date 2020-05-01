length=150;
track_width=15;
track_height=20;

coil_outer_radius=15.5;
coil_inner_radius=15.5 - 7;
coil_length=18;

cutout_width=11;

sensor_length = 17.8 + 0.2;
sensor_width = 5 + 0.4;

translate([0,0,track_height/2])
difference() {
    $fn=360;
    cube([length,track_width,track_height],center=true);

    // track 1deg slope
    translate([0,0,track_height/2]) {
        rotate([91,0,90])
            cylinder(h=length+1,r=cutout_width/2,center=true);
    }
    
    // sensor
    translate([-18.5,0,0]) {
        cube([sensor_length,sensor_width,track_height],center=true);
    }
    
    // coil
    translate([0,0,track_height/2 + 3.3]) {
        rotate([90,0,90]) {
            cylinder(h=coil_length+1,r=coil_outer_radius+0.5,center=true);
        }
    }  
    
}