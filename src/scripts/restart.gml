///restart()
with obj_end instance_destroy()
with obj_x instance_destroy()
with obj_aix instance_destroy()
obj_controller.aidone = true
obj_controller.delayed = false
instance_create(240,272,obj_begin)
global.turn = 0
if global.mode = 0 && global.ai = 2 {
    obj_begin.image_index = 1
    obj_controller.start = 1
    obj_controller.alarm[0] = 120 * global.spdmod
} else {  
    randomize()
    if round(random(1)) = 1 {
        obj_begin.image_index = 1
        obj_controller.start = 1
        obj_controller.alarm[0] = 120 * global.spdmod
    } else {
        obj_begin.image_index = 0
        obj_controller.start = 0
        obj_controller.alarm[2] = 120 * global.spdmod
    }
}