$fn = $preview ? 16 : 64;

include <libs/AluminumExtrusionProfile/AluminumExtrusionProfile.scad>

module extrusion(l, dir = "z", color = "yellow") {
    dir_vec = dir == "x" ? [0, 90, 0] : dir == "y" ? [-90, 0, 0] : [0, 0, 0];
    offset_vec = dir == "x" ? [-15, 15, 0] : dir == "y" ? [15, -15, 0] : [15, 15, 0];
    color(color) rotate(dir_vec) translate(offset_vec) linear_extrude(l) 3030_extrusion_profile(slot = "t");
}

translate([0, 0, 30]) extrusion(700, "z", "red");
translate([485 - 30, 0, 30]) extrusion(700, "z", "red");

translate([0, 30, 0]) extrusion(495, "y", "green");
translate([485 - 30, 30, 0]) extrusion(495, "y", "green");

translate([0, 30, 450]) extrusion(495, "y", "green");
translate([485 - 30, 30, 450]) extrusion(495, "y", "green");

translate([0, 30, 550]) extrusion(495, "y", "green");
translate([485 - 30, 30, 550]) extrusion(495, "y", "green");

translate([0, 30, 700]) extrusion(495, "y", "green");
translate([485 - 30, 30, 700]) extrusion(495, "y", "green");

extrusion(485, "x", "blue");
translate([0, 495 + 30, 0]) extrusion(485, "x", "blue");

translate([0, 495 + 30, 30]) extrusion(450, "z", "yellow");
translate([485 - 30, 495 + 30, 30]) extrusion(450, "z", "yellow");

translate([30, 495 + 30, 450]) extrusion(425, "x", "gray");
translate([30, 495 + 30, 550]) extrusion(425, "x", "gray");
translate([30, 495 + 30, 700]) extrusion(425, "x", "gray");
translate([30, 0, 700]) extrusion(425, "x", "gray");


// color("red") translate([  0,   0, 0]) rotate([ 0,  0,  0]) linear_extrude(700) 3030_extrusion_profile(slot = "t");
// color("red") translate([ 60,   0, 0]) rotate([ 0,  0,  0]) linear_extrude(700) 3030_extrusion_profile(slot = "t");

// color("green") translate([120,   0, 0]) rotate([ 0, 90,  0]) linear_extrude(495) 3030_extrusion_profile(slot = "t");
// color("green") translate([120,  60, 0]) rotate([ 0, 90,  0]) linear_extrude(495) 3030_extrusion_profile(slot = "t");
// color("green") translate([120, 120, 0]) rotate([ 0, 90,  0]) linear_extrude(495) 3030_extrusion_profile(slot = "t");
// color("green") translate([120, 180, 0]) rotate([ 0, 90,  0]) linear_extrude(495) 3030_extrusion_profile(slot = "t");
// color("green") translate([120, 240, 0]) rotate([ 0, 90,  0]) linear_extrude(495) 3030_extrusion_profile(slot = "t");
// color("green") translate([120, 300, 0]) rotate([ 0, 90,  0]) linear_extrude(495) 3030_extrusion_profile(slot = "t");
// color("green") translate([120, 360, 0]) rotate([ 0, 90,  0]) linear_extrude(495) 3030_extrusion_profile(slot = "t");
// color("green") translate([120, 420, 0]) rotate([ 0, 90,  0]) linear_extrude(495) 3030_extrusion_profile(slot = "t");


// color("yellow") translate([780,   0, 0]) rotate([0,  0, 0]) linear_extrude(450) 3030_extrusion_profile(slot = "t");
// color("yellow") translate([840,   0, 0]) rotate([0,  0, 0]) linear_extrude(450) 3030_extrusion_profile(slot = "t");

// color("gray") translate([900,   0, 0]) rotate([90,  0, 0]) linear_extrude(425) 3030_extrusion_profile(slot = "t");
// color("gray") translate([960,   0, 0]) rotate([90,  0, 0]) linear_extrude(425) 3030_extrusion_profile(slot = "t");
// color("gray") translate([1020,   0, 0]) rotate([90,  0, 0]) linear_extrude(425) 3030_extrusion_profile(slot = "t");
// color("gray") translate([1080,   0, 0]) rotate([90,  0, 0]) linear_extrude(425) 3030_extrusion_profile(slot = "t");
