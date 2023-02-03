function onCreatePost()
     makeLuaSprite('someGOOFYtimeBar', nil, 0, 0)
     setProperty('someGOOFYtimeBar.y', getProperty('timeBar.y'))
     makeGraphic('someGOOFYtimeBar', getProperty('timeBar.width'), getProperty('timeBar.height'), '828282')
     setObjectCamera('someGOOFYtimeBar', 'hud')
     addLuaSprite('someGOOFYtimeBar')

     makeLuaSprite('someGREENtimeBar', nil, 343, 0)
     setProperty('someGREENtimeBar.y', getProperty('timeBar.y'))
     makeGraphic('someGREENtimeBar', getProperty('timeBar.width'), getProperty('timeBar.height'), '00FF00')
     setObjectCamera('someGREENtimeBar', 'hud')
     addLuaSprite('someGREENtimeBar')

     screenCenter('someGOOFYtimeBar', 'x')
     screenCenter('timeBar', 'x')

     makeLuaSprite('timeBarMF', 'timeBar', 0, 0)
     setProperty('timeBarMF.y', getProperty('timeBarBG.y'))
     setObjectCamera('timeBarMF', 'hud')
     screenCenter('timeBarMF', 'x')
     addLuaSprite('timeBarMF')

     setProperty('timeBar.visible', false)
     setProperty('timeBarBG.visible', false)
end

function onUpdatePost()
    scaleObject('someGREENtimeBar', getProperty('songPercent'), 1)
end