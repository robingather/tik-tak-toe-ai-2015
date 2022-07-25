///move(opposite/knightly)

if xx = 80 && yy = 112 one = true else one = false
if xx = 240 && yy = 112 two = true else two = false
if xx = 400 && yy = 112 three = true else three = false

if xx = 80 && yy = 272 four = true else four = false
if xx = 240 && yy = 272 five = true else five = false
if xx = 400 && yy = 272 six = true else six = false 

if xx = 80 && yy = 432 seven = true else seven = false
if xx = 240 && yy = 432 eight = true else eight = false
if xx = 400 && yy = 432 nine = true else nine = false

if argument0 = 0 { //inverted - pick opposite corner

    if one { xx = 400 yy = 432 }
    if two { xx = 240 yy = 432 }
    if three { xx = 80 yy = 432 }
    if four { xx = 400 yy = 272 }
    if six { xx = 80 yy = 272 }
    if seven { xx = 400 yy = 112 }
    if eight { xx = 240 yy = 112 }
    if nine { xx = 80 yy = 112 }
    
} else if argument0 = 1 { //inverted - pick knights move

    if one && !(position_meeting(400,272,obj_x) || position_meeting(400,272,obj_aix)){ xx = 400 yy = 272 }
    else if one && !(position_meeting(240,432,obj_x) || position_meeting(240,432,obj_aix)){ xx = 240 yy = 432 }
    if two && !(position_meeting(80,432,obj_x) || position_meeting(80,432,obj_aix)){ xx = 80 yy = 432 }
    else if two && !(position_meeting(400,432,obj_x) || position_meeting(400,432,obj_aix)){ xx = 400 yy = 432 }
    if three && !(position_meeting(80,272,obj_x) || position_meeting(80,272,obj_aix)){ xx = 80 yy = 272 }
    else if three && !(position_meeting(240,432,obj_x) || position_meeting(240,432,obj_aix)){ xx = 240 yy = 432 }
    if four && !(position_meeting(400,112,obj_x) || position_meeting(400,112,obj_aix)){ xx = 400 yy = 112 }
    else if four && !(position_meeting(400,432,obj_x) || position_meeting(400,432,obj_aix)){ xx = 400 yy = 432 }
    if six && !(position_meeting(80,112,obj_x) || position_meeting(80,112,obj_aix)){ xx = 80 yy = 112 }
    else if six && !(position_meeting(80,432,obj_x) || position_meeting(80,432,obj_aix)){ xx = 80 yy = 432 }
    if seven && !(position_meeting(240,112,obj_x) || position_meeting(240,112,obj_aix)){ xx = 240 yy = 112 }
    else if seven && !(position_meeting(400,272,obj_x) || position_meeting(400,272,obj_aix)){ xx = 400 yy = 272 }
    if eight && !(position_meeting(80,112,obj_x) || position_meeting(80,112,obj_aix)){ xx = 80 yy = 112 }
    else if eight && !(position_meeting(400,112,obj_x) || position_meeting(400,112,obj_aix)){ xx = 400 yy = 112 }
    if nine && !(position_meeting(240,112,obj_x) || position_meeting(240,112,obj_aix)){ xx = 240 yy = 112 }
    else if nine && !(position_meeting(80,272,obj_x) || position_meeting(80,272,obj_aix)){ xx = 80 yy = 272 }
    
} else if argument0 = 2 { //regular - expert

    switch(global.turn){
    
        case 2:
        if position_meeting(240,272,obj_x) { xx = 80 yy = 432 moved = 7}
        else if position_meeting(80,432,obj_x) || position_meeting(240,432,obj_x) || position_meeting(80,272,obj_x) { xx = 400 yy = 112 moved = 1}
        else { xx = 80 yy = 432 moved = 0}
        break
        
        case 4:
        if moved = 0 {
            if position_meeting(240,272,obj_x) && position_meeting(240,432,obj_x) { xx = 240 yy = 112 moved = 8}
            else if position_meeting(240,432,obj_x) && position_meeting(240,112,obj_x) { xx = 240 yy = 272 moved = 10 }
            else if !position_meeting(240,432,obj_x) { xx = 240 yy = 432 }
            else if !position_meeting(80,112,obj_x) { xx = 80 yy = 112 moved = 2}
            else if !position_meeting(400,112,obj_x) { xx = 400 yy = 112 moved = 3}
        } else if moved = 1 {
            if position_meeting(80,272,obj_x) && position_meeting(400,272,obj_x) { xx = 240 yy = 272 moved = 11 }
            else if !position_meeting(400,272,obj_x) { xx = 400 yy = 272 }
            else if !position_meeting(80,112,obj_x) { xx = 80 yy = 112 moved = 4}
        } else if moved = 7 {
            if !position_meeting(240,432,obj_x) { xx = 240 yy = 432 }
            else if !position_meeting(240,112,obj_x) { xx = 240 yy = 112 moved = 8}
        }
        break
        
        case 6:
        if moved = 2 {
            if !position_meeting(80,272,obj_x) { xx = 80 yy = 272 }
            else if !position_meeting(240,272,obj_x) { xx = 240 yy = 272 }
            else if !position_meeting(400,112,obj_x) { xx = 400 yy = 112 moved = 5}
        } else if moved = 3 {
            if !position_meeting(400,272,obj_x) { xx = 400 yy = 272 }
            else if !position_meeting(240,272,obj_x) { xx = 240 yy = 272 }
        } else if moved = 4 {
            if !position_meeting(240,112,obj_x) { xx = 240 yy = 112 }
            else if !position_meeting(240,272,obj_x) { xx = 240 yy = 272 }
            else if !position_meeting(80,432,obj_x) { xx = 80 yy = 432 moved = 6}
        } else if moved = 8 {
            if position_meeting(80,112,obj_x) { xx = 400 yy = 272 }
            else if position_meeting(80,272,obj_x) { xx = 400 yy = 272 }
            else if position_meeting(400,272,obj_x) { xx = 80 yy = 272 }
            else if position_meeting(400,112,obj_x) { xx = 80 yy = 272 }
            moved = 9
        } else if moved = 10 {
            if !position_meeting(400,112,obj_x) { xx = 400 yy = 112 }
            else { wingit(0) exit }
        } else if moved = 11 {
            if !position_meeting(80,112,obj_x) { xx = 80 yy = 112 }
            else { xx = 80 yy = 432 }
        }
        break
        
        case 8:
        if moved = 5 {
            if !position_meeting(240,112,obj_x) { xx = 240 yy = 112 }
            else if !position_meeting(400,272,obj_x) { xx = 400 yy = 272 }
        } else if moved = 6 {
            if !position_meeting(80,272,obj_x) { xx = 80 yy = 272 }
            else if !position_meeting(240,432,obj_x) { xx = 240 yy = 432 }
        } else if moved = 9 || moved = 10 { wingit(0) exit }
        break
        
    }
    
} else if argument0 = 3 || argument0 = 4 { //competent ai

    if argument0 = 3 { //regular - competent check
    
        if argument1 = 0 { //check for player win
                            show_debug_message("check for player win")
            if position_meeting(80,112,obj_x) one = true else one = false
            if position_meeting(240,112,obj_x) two = true else two = false
            if position_meeting(400,112,obj_x) three = true else three = false
            
            if position_meeting(80,272,obj_x) four = true else four = false
            if position_meeting(240,272,obj_x) five = true else five = false 
            if position_meeting(400,272,obj_x) six = true else six = false 
            
            if position_meeting(80,432,obj_x) seven = true else seven = false
            if position_meeting(240,432,obj_x) eight = true else eight = false
            if position_meeting(400,432,obj_x) nine = true else nine = false
            
        } else if argument1 = 1 { //check for enemy win
                            show_debug_message("check for enemy win")
            if position_meeting(80,112,obj_aix) one = true else one = false
            if position_meeting(240,112,obj_aix) two = true else two = false
            if position_meeting(400,112,obj_aix) three = true else three = false
            
            if position_meeting(80,272,obj_aix) four = true else four = false
            if position_meeting(240,272,obj_aix) five = true else five = false 
            if position_meeting(400,272,obj_aix) six = true else six = false 
            
            if position_meeting(80,432,obj_aix) seven = true else seven = false
            if position_meeting(240,432,obj_aix) eight = true else eight = false
            if position_meeting(400,432,obj_aix) nine = true else nine = false
        
        }
    
    } else if argument0 = 4 { //inverted - competent check
    
        safe[1] = true safe[2] = true safe[3] = true safe[4] = true safe[5] = true safe[6] = true safe[7] = true safe[8] = true safe[9] = true
    
        if position_empty(80,112) one = false else { one = true safe[1] = false }
        if position_empty(240,112) two = false else { two = true safe[2] = false }
        if position_empty(400,112) three = false else { three = true safe[3] = false }
        
        if position_empty(80,272) four = false else { four = true safe[4] = false } 
        if position_empty(240,272) five = false else { five = true  safe[5] = false } 
        if position_empty(400,272) six = false else { six = true  safe[6] = false }
        
        if position_empty(80,432) seven = false else { seven = true safe[7] = false }
        if position_empty(240,432) eight = false else { eight = true safe[8] = false }
        if position_empty(400,432) nine = false else { nine = true safe[9] = false } 
        
    }
    
    if (two && three) || (five && nine) || (four && seven) {
        if argument0 = 4 { safe[1] = false } else { if position_empty(80,112) { xx = 80 yy = 112 } }
    }
    
    if (one && three) || (five && eight)  {
        if argument0 = 4 { safe[2] = false } else { if position_empty(240,112) { xx = 240 yy = 112 } }
    }
    
    if (one && two) || (seven && five) || (nine && six)  {
        if argument0 = 4 { safe[3] = false } else { if position_empty(400,112) { xx = 400 yy = 112 } }
    } 
    
    if (five && six) || (one && seven)  {
        if argument0 = 4 { safe[4] = false } else { if position_empty(80,272) { xx = 80 yy = 272 } }
    }
    
    if (one && nine) || (three && seven) || (two && eight) || (four && six)  {
        if argument0 = 4 { safe[5] = false } else { if position_empty(240,272) { xx = 240 yy = 272 } }
    }
    
    if (four && five) || (three && nine)  {
        if argument0 = 4 { safe[6] = false } else { if position_empty(400,272) { xx = 400 yy = 272 } }
    }  
     
    if (eight && nine) || (five && three) || (one && four)  {
        if argument0 = 4 { safe[7] = false } else { if position_empty(80,432) { xx = 80 yy = 432 } }
    }
    
    if (seven && nine) || (two && five)  {
        if argument0 = 4 { safe[8] = false } else { if position_empty(240,432) { xx = 240 yy = 432 } }
    }  
    
    if (seven && eight) || (one && five) || (three && six)  {
        if argument0 = 4 { safe[9] = false } else { if position_empty(400,432) { xx = 400 yy = 432 } }
    }
    
    if argument0 = 4 wingit(1)

    if position_meeting(xx,yy,obj_x) || position_meeting(xx,yy,obj_aix){
        if argument1 = 0 wingit(0)
        exit
    }
    
}   

instance_create(xx,yy,obj_aix)
global.turn += 1
aidone = true
