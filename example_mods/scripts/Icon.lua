local turn = 90

function onBeatHit()
     if curBeat % 2 == 0 then
    setProperty('iconP1.angle', -turn)
    setProperty('iconP2.angle', turn)

                doTweenAngle('boop0', 'iconP1', 0, stepCrochet*0.02, 'backOut')
                doTweenAngle('boop1', 'iconP2', 0, stepCrochet*0.02, 'backOut')
     end

     if curBeat % 4 == 0 then
    setProperty('iconP1.angle', turn)
    setProperty('iconP2.angle', -turn)

                doTweenAngle('boop0', 'iconP1', 0, stepCrochet*0.02, 'backOut')
                doTweenAngle('boop1', 'iconP2', 0, stepCrochet*0.02, 'backOut')
     end
end