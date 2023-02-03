function onCreatePost()
   makeLuaSprite('bar', 'AAAAAAAAAAAAAAAAAAAAAAAAA', -500, 275)
   makeGraphic('bar', 450, 150, '000000')
   setObjectCamera('bar', 'other')

   makeLuaText('songTeller', 'broken script fuck off', 600, -500, 300)
   setTextSize('songTeller', 25)
   setTextColor('songTeller', '000000')
   setTextBorder('songTeller', 1.5, 'FFFFFF')
   setObjectCamera('songTeller', 'other')
   addLuaText('songTeller')

   addLuaSprite('bar')
end

function onSongStart()
   doTweenX('barMove0', 'bar', 0, 1, 'backOut')
   doTweenX('textMove0', 'songTeller', -80, 1, 'backOut')

   runTimer('byeBye', 4, 1)
end

function onUpdatePost()
    local  timeElapsed = math.floor(getProperty('songTime')/1000)
    local  timeTotal = math.floor(getProperty('songLength')/1000)
    local timeElapsedFixed = string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60)
    local timeTotalFixed = string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60)

   setTextString('songTeller', 'Song: ' .. songName .. '\nDifficulty: ' .. getProperty('hard') .. '\nBPM: ' .. bpm .. '\nLength: ' .. timeTotalFixed)
end

function formatTime(millisecond)
    local seconds = math.floor(millisecond / 1000)

    return string.format("%.2d:%.2d", (seconds / 60) % 60, seconds % 60)  
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'byeBye' then
   doTweenX('barMove0', 'bar', -500, 1, 'backIn')
   doTweenX('textMove0', 'songTeller', -500, 1, 'backIn')
   end
end