local easeType = 'backOut'
local update = false

function onCreatePost()
     makeLuaText('timeTxtNew', 'BROKEN', 1000, 550, -650)
     setProperty('timeTxt.visible', false)
     setTextSize('timeTxtNew', 22.5)
     setTextBorder('timeTxtNew', 1.5, '000000')
     setProperty('timeBar.visible', false)
     setProperty('timeBarBG.visible', false)
     setProperty('timeTxtNew.y', getProperty('healthBar.y') + 30)
     addLuaText('timeTxtNew')

     makeLuaSprite('timeIcon', 'timeIcon', 1150, 650)
     setObjectCamera('timeIcon', 'hud')
     scaleObject('timeIcon', 0.5, 0.5)
     addLuaSprite('timeIcon')

     makeLuaText('theNewScoreTextBITCH', 'Score: ', 1000, -400, 575)
     setTextSize('theNewScoreTextBITCH', 20)
     setProperty('theNewScoreTextBITCH.y', getProperty('healthBar.y') + 30)
     setProperty('theNewScoreTextBITCH.x', getProperty('timeTxtNew.x') - 400)
     setProperty('scoreTxt.visible', false)
     setTextBorder('theNewScoreTextBITCH', 1.5, '000000')
     addLuaText('theNewScoreTextBITCH')

     setProperty('healthBar.x', 650)
     setProperty('healthBar.y', 620)
end

function onUpdatePost()
    local  timeElapsed = math.floor(getProperty('songTime')/1000)
    local  timeTotal = math.floor(getProperty('songLength')/1000)
    local timeElapsedFixed = string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60)
    local timeTotalFixed = string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60)

    setTextString('timeTxtNew', timeElapsedFixed .. ' / ' .. timeTotalFixed)

   screenCenter('timeBar', 'x')
   setObjectOrder('timeBarBG', 2)
   setObjectOrder('timeBar', 1)
   
   setProperty('timeBar.color', getIconColor('dad'))

   setObjectOrder('healthBarBG', 2)
   setObjectOrder('healthBar', 1)


     setProperty('iconP2.x', getProperty('healthBar.x') + 300)
     setProperty('iconP1.y', 500)
     setProperty('iconP2.y', 500)
     setProperty('iconP2.flipX', true)
     setProperty('iconP1.x', getProperty('healthBar.x') + 450)

     if update then
       setTextString('theNewScoreTextBITCH', 'Score: ' .. score .. ' // Misses: ' .. misses .. ' // Accuracy: ' .. floorInDecimal(rating*100, 2) .. '% [' .. ratingFC .. ']')
     else
       setTextString('theNewScoreTextBITCH', 'Score: 0 // Misses: 0 // Accuracy: ?%')       
     end
end

function formatTime(millisecond)
    local seconds = math.floor(millisecond / 1000)

    return string.format("%.2d:%.2d", (seconds / 60) % 60, seconds % 60)  
end

function getIconColor(chr)
	local chr = chr or "dad"
	return getColorFromHex(rgbToHex(getProperty(chr .. ".healthColorArray")))
end

function rgbToHex(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end

function goodNoteHit()
     update = true
end

function floorInDecimal(number, decimals)
    return math.floor(number * (10^decimals)) / (10^decimals)
end