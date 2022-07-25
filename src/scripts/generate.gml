///generate(xx/yy)
do {
    randomize()
    var xx, yy
    var m = round(random(8))
    switch m {
    
        case 0:
        xx = 80
        yy = 112
        break
        
        case 1:
        xx = 240
        yy = 112
        break
        
        case 2:
        xx = 400
        yy = 112
        break
        
        case 3:
        xx = 80
        yy = 272
        break
        
        case 4:
        xx = 240
        yy = 272
        break
        
        case 5:
        xx = 400
        yy = 272
        break
        
        case 6:
        xx = 80
        yy = 432
        break
        
        case 7:
        xx = 240
        yy = 432
        break
        
        case 8:
        xx = 400
        yy = 432
        break
        
    }
} until(position_empty(xx,yy))
if argument0 = 0 return xx
if argument0 = 1 return yy