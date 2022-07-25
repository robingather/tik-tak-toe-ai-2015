///check(mode,player/enemy)
if argument0 = 1 { //inverted mode

    if position_empty(80,112) one = false else one = true
    if position_empty(240,112) two = false else two = true
    if position_empty(400,112) three = false else three = true
    
    if position_empty(80,272) four = false else four = true
    if position_empty(240,272) five = false else five = true 
    if position_empty(400,272) six = false else six = true 
    
    if position_empty(80,432) seven = false else seven = true
    if position_empty(240,432) eight = false else eight = true
    if position_empty(400,432) nine = false else nine = true
    
    if one && two && three return true
    if four && five && six return true
    if seven && eight && nine return true
    
    if one && four && seven return true
    if two && five && eight return true
    if three && six && nine return true
    
    if one && five && nine return true
    if three && five && seven return true 
    
    return false
    
} else if argument0 = 0 { //regular mode

    if argument1 = 0 {
    
        if position_meeting(80,112,obj_x) one = true else one = false
        if position_meeting(240,112,obj_x) two = true else two = false
        if position_meeting(400,112,obj_x) three = true else three = false
        
        if position_meeting(80,272,obj_x) four = true else four = false
        if position_meeting(240,272,obj_x) five = true else five = false 
        if position_meeting(400,272,obj_x) six = true else six = false 
        
        if position_meeting(80,432,obj_x) seven = true else seven = false
        if position_meeting(240,432,obj_x) eight = true else eight = false
        if position_meeting(400,432,obj_x) nine = true else nine = false
        
        if one && two && three return true
        if four && five && six return true
        if seven && eight && nine return true
        
        if one && four && seven return true
        if two && five && eight return true
        if three && six && nine return true
        
        if one && five && nine return true
        if three && five && seven return true 
        
    } else if argument1 = 1 {
    
        if position_meeting(80,112,obj_aix) one = true else one = false
        if position_meeting(240,112,obj_aix) two = true else two = false
        if position_meeting(400,112,obj_aix) three = true else three = false
        
        if position_meeting(80,272,obj_aix) four = true else four = false
        if position_meeting(240,272,obj_aix) five = true else five = false 
        if position_meeting(400,272,obj_aix) six = true else six = false 
        
        if position_meeting(80,432,obj_aix) seven = true else seven = false
        if position_meeting(240,432,obj_aix) eight = true else eight = false
        if position_meeting(400,432,obj_aix) nine = true else nine = false
        
        if one && two && three return true
        if four && five && six return true
        if seven && eight && nine return true
        
        if one && four && seven return true
        if two && five && eight return true
        if three && six && nine return true
        
        if one && five && nine return true
        if three && five && seven return true 
        
    }
    
    if position_empty(80,112) one = false else one = true
    if position_empty(240,112) two = false else two = true
    if position_empty(400,112) three = false else three = true
    
    if position_empty(80,272) four = false else four = true
    if position_empty(240,272) five = false else five = true 
    if position_empty(400,272) six = false else six = true 
    
    if position_empty(80,432) seven = false else seven = true
    if position_empty(240,432) eight = false else eight = true
    if position_empty(400,432) nine = false else nine = true
    
    if one && two && three && four && five && six && seven && eight && nine {
        var a = instance_create(240,272,obj_end)
        with a image_index = 2
        obj_controller.alarm[1] = 120 * global.spdmod
        exit
    }
    
    return false
    
}