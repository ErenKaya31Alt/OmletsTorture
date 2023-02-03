local xx = 720;
local yy = 550;
local xx2 = 1250;
local yy2 = 550;
local ofs = 10;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	makeLuaSprite('skynight', 'kdjHouse/theWeatherlol', -420, -380)
        setLuaSpriteScrollFactor('sky', 0.7, 0.7)

	makeLuaSprite('mountain2', 'kdjHouse/theMountain2', -420, -380)
        setLuaSpriteScrollFactor('mountain2', 0.5, 0.5)

	makeLuaSprite('mountain1', 'kdjHouse/theMountainkdjhouse', -420, -380)
        setLuaSpriteScrollFactor('mountain1', 0.7, 0.7)

	makeLuaSprite('kdjshouse', 'kdjHousen/ground', -420, -380)
	    
	
        addLuaSprite('skynight')
        addLuaSprite('mountain2')
        addLuaSprite('mountain1')
        addLuaSprite('kdjshouse')
        addLuaSprite('thegroundlol')
end

function onUpdate()
    if del > 0 then
        del = del - 1
    end
    if del2 > 0 then
        del2 = del2 - 1
    end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
        if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
   
end