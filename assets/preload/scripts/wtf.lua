function onGameOverStart()

	makeLuaSprite('flash1', '', 0, 0);
        makeGraphic('flash1',1280,720,'8a00ff')
	      addLuaSprite('flash1', true);
	      setLuaSpriteScrollFactor('flash1',0,0)
              setObjectCamera('flash1', 'other')
	      setProperty('flash1.scale.x',2)
	      setProperty('flash1.scale.y',2)
	      setProperty('flash1.alpha',0)
		setProperty('flash1.alpha',1)
		doTweenAlpha('flTw2','flash1',0,2,'linear')
end