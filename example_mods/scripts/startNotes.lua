local strums = {
92, --dad strums
204,
316,
428,

732, --bf strums
844,
956,
1068
}

function onCreate()
	setProperty('skipArrowStartTween', true)
end

function onCreatePost()
     for i = 0, 3 do
       setPropertyFromGroup('strumLineNotes', i, 'x', -200)
     end

     for i = 4, 7 do
       setPropertyFromGroup('strumLineNotes', i, 'x', 1500)
     end
end

function onSongStart()
     noteTweenX('goBackTheSameCPU0', 0, defaultOpponentStrumX0, 1, 'backOut')
     noteTweenX('goBackTheSameCPU1', 1, defaultOpponentStrumX1, 1, 'backOut')
     noteTweenX('goBackTheSameCPU2', 2, defaultOpponentStrumX2, 1, 'backOut')
     noteTweenX('goBackTheSameCPU3', 3, defaultOpponentStrumX3, 1, 'backOut')

     noteTweenX('goBackTheSamePLY0', 4, defaultPlayerStrumX0, 1, 'backOut')
     noteTweenX('goBackTheSamePLY1', 5, defaultPlayerStrumX1, 1, 'backOut')
     noteTweenX('goBackTheSamePLY2', 6, defaultPlayerStrumX2, 1, 'backOut')
     noteTweenX('goBackTheSamePLY3', 7, defaultPlayerStrumX3, 1, 'backOut')
end