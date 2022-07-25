///wingit(move/generate)
if argument0 = 1 { show_debug_message("safe[1] = "+string(safe[1])) show_debug_message("safe[2] = "+string(safe[2])) show_debug_message("safe[3] = "+string(safe[3])) show_debug_message("safe[4] = "+string(safe[4])) show_debug_message("safe[5] = "+string(safe[5])) show_debug_message("safe[6] = "+string(safe[6])) show_debug_message("safe[7] = "+string(safe[7])) show_debug_message("safe[8] = "+string(safe[8])) show_debug_message("safe[9] = "+string(safe[9])) }
if argument0 = 1 && safe[1] = false && safe[2] = false && safe[3] = false && safe[4] = false && safe[5] = false && safe[6] = false && safe[7] = false && safe[8] = false && safe[9] = false { wingit(0) exit }
do {
    randomize()
    var xx, yy
    var m = round(random(8))
    switch m {
    
        case 0:
        if (argument0 = 1 && safe[1]) || argument0 = 0 { xx = 80 yy = 112 } else { xx = 0 yy = 0 }
        break
        
        case 1:
        if (argument0 = 1 && safe[2]) || argument0 = 0 { xx = 240 yy = 112 } else { xx = 0 yy = 0 }
        break
        
        case 2:
        if (argument0 = 1 && safe[3]) || argument0 = 0 { xx = 400 yy = 112 } else { xx = 0 yy = 0 }
        break
        
        case 3:
        if (argument0 = 1 && safe[4]) || argument0 = 0 { xx = 80 yy = 272 } else { xx = 0 yy = 0 }
        break
        
        case 4:
        if (argument0 = 1 && safe[5]) || argument0 = 0 { xx = 240 yy = 272 } else { xx = 0 yy = 0 }
        break
        
        case 5:
        if (argument0 = 1 && safe[6]) || argument0 = 0 { xx = 400 yy = 272 } else { xx = 0 yy = 0 }
        break
        
        case 6:
        if (argument0 = 1 && safe[7]) || argument0 = 0 { xx = 80 yy = 432 } else { xx = 0 yy = 0 }
        break
        
        case 7:
        if (argument0 = 1 && safe[8]) || argument0 = 0 { xx = 240 yy = 432 } else { xx = 0 yy = 0 }
        break
        
        case 8:
        if (argument0 = 1 && safe[9]) || argument0 = 0 { xx = 400 yy = 432 } else { xx = 0 yy = 0 }
        break
        
    }
} until(position_empty(xx,yy)) && xx != 0 && yy != 0

instance_create(xx,yy,obj_aix)
global.turn += 1
aidone = true

