function onCreate()
	makeLuaSprite('skynight', 'kdjHousen/theWeatherlol', -420, -380)
        setLuaSpriteScrollFactor('sky', 0.7, 0.7)

	makeLuaSprite('mountain2', 'kdjHousen/theMountain2', -420, -380)
        setLuaSpriteScrollFactor('mountain2', 0.5, 0.5)

	makeLuaSprite('mountain1', 'kdjHousen/theMountainkdjhouse', -420, -380)
        setLuaSpriteScrollFactor('mountain1', 0.7, 0.7)

	makeLuaSprite('kdjshouse', 'kdjHousen/ground', -420, -380)

    makeLuaSprite('theOverlayBITCH', 'dontputanythingherelmfaoooooooooooooooooooooooooooooooo', -100, -200) -- change the offsets fucker /j
    makeGraphic('theOverlayBITCH', 1280 * 4, 720 * 4, '000000') -- the hexcodeyyyyyyy
    setProperty('theOverlayBITCH.alpha', 0.6)
    setObjectOrder('theOverlayBITCH', 999)
    addLuaSprite('theOverlayBITCH') -- adds the fucking shade lmfaooooooooooo
	    

        addLuaSprite('skynight')
        addLuaSprite('mountain2')
        addLuaSprite('mountain1')
        addLuaSprite('kdjshouse')
        addLuaSprite('thegroundlol')
end