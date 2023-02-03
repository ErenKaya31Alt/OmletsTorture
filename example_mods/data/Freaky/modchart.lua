local angle = 1
local angleFuck = 1

function onStepHit()
   if curStep == 1412 then
     setProperty('defaultCamZoom', 1.1)
   end

   if curStep == 1416 then
     setProperty('defaultCamZoom', 1.3)
   end

   if curStep == 1424 then
     setProperty('defaultCamZoom', 0.9)
   end

   if curStep == 1472 then
     setProperty('defaultCamZoom', 1.1)
   end

   if curStep == 1480 then
     setProperty('defaultCamZoom', 1.3)
   end

   if curStep == 1488 then
     setProperty('defaultCamZoom', 0.9)
   end

   
end

function onBeatHit()
   if curBeat % 2 == 0 then
    angleFuck = angle;
  else
    angleFuck = -angle;
  end

  doTweenAngle('turn', 'camHUD', angleFuck, stepCrochet*0.002, 'circIn')
end