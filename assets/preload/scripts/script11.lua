function onCreate()

    makeLuaSprite('Intro1','Intro1',-1000,165)
    setObjectCamera('Intro1','other')
    setProperty('Intro1.alpha',0.7)


    makeLuaText('songtext',songName,400,0,200)
    setTextSize('songtext',40)
    setObjectCamera('songtext','other')
    setTextAlignment('songtext','center')


end
function onBeatHit()
	if curBeat == 1 then
    doTweenX('songtweenin','Intro1',0,1,'cubeOut')
    addLuaSprite('Intro1')
    addLuaText('songtext')
end
end

function onUpdate()
    setProperty('songtext.x',getProperty('Intro1.x'))
    setProperty('authortext.x',getProperty('Intro1.x'))
end

function onTweenCompleted(tag)
    if tag == 'songtweenin' then
        runTimer('tweentimer',5)
    end
    if tag == 'songtweenout' then
        removeLuaText('authortext')
        removeLuaText('songtext')
        removeLuaSprite('intro1')
    end
end

function onTimerCompleted(tag)
    if tag == 'tweentimer' then
        doTweenX('songtweenout','Intro1',-1000,1,'cubeIn')
    end
end