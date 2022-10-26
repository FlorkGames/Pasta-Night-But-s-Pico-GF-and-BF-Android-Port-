                        --feature?--
local emote = true; --- bf do animation. press SPACE to emote  [default: true]
local healthdrain = true; --- everytime opponent hit notes your health get drained like boyfriend do to opponent [default: true]
-- more coming
                        --Config--
    daemote = ""  -- put the name of bf animation. [leave blank for hey/peace sign. if the bf is not the original one it will not playing]
	
                        --settings--
local camfollow = false;    -- maybe doesnt work properly on some mod/song --
local songBarr = true;
local statSong = true; 
local bopHead = false; 
local hideP2Notes = false; 
local sideHealthbar = false; 
local Fullstat = true;

                       --randomness--
local funnybf = false; --- what the fuck is wrong with bf [default: false]  [known as Squishable Boyfriend]  [credit to 4k_funny on youtube]

-----------------------------------[[Settings Info]]---------------------------------------
--[[ camfollow = the camara follow the direction of notes [default: false]
    
   	 songBarr : a bar that will show up showing the song and bpm [default: true]
     
	 statSong : show the stats of song like difficulty and song name [!!WILL FORCE TIME BAR TYPE TO TIME ELAPSED!!] [cant detect different/custom difficulty] [default: true]
	 
	 bopHead : chars bopping on the beat [default: false]   [credit to bbpanzu]
	 
	 hideP2Notes : hide the opponent notes [default: false]
	 
	 sideHealthbar : make the healthbar on right side [osu healthbar thing] [default: false]
	 
	 Fullstat : show how many you have sicks,goods,bads,and shits [default: false]    [credit to  Batata  on discord/youtube]         
                                                                                                                            ]]--
                --the thing lolollolololol--
-- form bbpanzu
local dadsingL = 4
local bfsingL = 4
realAnimdad = 'idle'
realAnimbf = 'idle'
function getAnim(char,prop)
prop = prop or 'name'
	return getProperty(char .. '.animation.curAnim.' .. prop)

end
----------------------
--form batata
cmoffset = -4
cmy = 20
tnhx = -10
---------------------
function onCreate()
 if sideHealthbar then
	makeLuaText("youv", 'Opponent -->' ,  2090, 10, 300);
	makeLuaText("youe", 'You -->' ,  2200, 10, 365);
	
	setTextSize('youe', 40);
	addLuaText('youe');
	setTextSize('youv', 40);
	addLuaText('youv');
   end
 if Fullstat then
    makeLuaText("tnh", '', 250, tnhx, 259);
    makeLuaText("cm", '', 200, -getProperty('tnh.x') + cmoffset, getProperty('tnh.y') + cmy);
    makeLuaText("sick", 'Sicks!: 0', 200, getProperty('cm.x'), getProperty('cm.y') + 30);
    makeLuaText("good", 'Goods: 0', 200, getProperty('cm.x'), getProperty('sick.y') + 30);
    makeLuaText("bad", 'Bads: 0', 200, getProperty('cm.x'), getProperty('good.y') + 30);
    makeLuaText("shit", 'Shits: 0', 200, getProperty('cm.x'), getProperty('bad.y') + 30);
	
    setTextSize('sick', 20);
    addLuaText("sick");
    setTextAlignment('sick', 'left')
    setTextSize('good', 20);
    addLuaText("good");
    setTextAlignment('good', 'left')
    setTextSize('bad', 20);
    addLuaText("bad");
    setTextAlignment('bad', 'left')
    setTextSize('shit', 20);
    addLuaText("shit");
    setTextAlignment('shit', 'left')
	end
end

woosh = -69420
function onCreatePost()
  if statSong then
	if getPropertyFromClass('ClientPrefs', 'timeBarType') == 'Song Name' or getPropertyFromClass('ClientPrefs', 'timeBarType') == 'Disabled' or getPropertyFromClass('ClientPrefs', 'timeBarType') == 'Time Elapsed' then
	    setTextSize('timeTxt', 30);
	    setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Left')
	  end
  end
  if hideP2Notes then
  	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums',i,'visible',false)
		setPropertyFromGroup('opponentStrums',i,'y', woosh)
		setPropertyFromGroup('opponentStrums',i,'x', woosh)
	end
end
  if sideHealthbar then
    setProperty('scoreTxt.alpha', 1*1)
   setProperty('healthBar.angle', 1*90)
    setProperty('healthBar.x', 1* 930)
   setProperty('healthBar.y', 1* 350)
    setProperty('iconP1.alpha', 1* 0)
   setProperty('iconP2.alpha', 1* 0)
    setTextSize('scoreTxt', 26)	
   setProperty('timeTxt.x',1 * 760)
end

 setProperty('timeBarBG.visible', false)
 setProperty('timeBar.visible', false)
   if downscroll then
  setProperty('scoreTxt.y', 1*690)
  setProperty('timeTxt.y', getProperty('iconP1.y')+ 5)
  setProperty('timeTxt.x', getProperty('scoreTxt.x')+ 440)
  end
   if not downscroll then
   setProperty('scoreTxt.y', 1*20)
  setProperty('timeTxt.y', getProperty('iconP1.y')+ 100)
   end
 end

-- form 4k_funny
accel_x = 0
accel_x2 = 0
bounce = 0
bf_flip = 1
pos_x = 800
--------------

	
function onUpdate()
 if downscroll then
  if keyJustPressed('left') then
     setPropertyFromGroup('strumLineNotes', 4, 'y', 0 + 550)
	 noteTweenY('lol', 4, 570, 0.1 ,"linear")
   elseif keyJustPressed('down') then
     setPropertyFromGroup('strumLineNotes', 5, 'y', 0 + 550)
	 noteTweenY('lol2', 5, 570, 0.1 ,"linear")
   elseif keyJustPressed('up') then
     setPropertyFromGroup('strumLineNotes', 6, 'y', 0 + 550)
	 noteTweenY('lol3', 6, 570, 0.1 ,"linear")
   elseif keyJustPressed('right') then
     setPropertyFromGroup('strumLineNotes', 7, 'y', 0 + 550)
	 noteTweenY('lol4', 7, 570, 0.1 ,"linear")
	 end
   end
if emote then
 if daemote == '' then
     if keyJustPressed('z') then
        triggerEvent('Hey!','BF', '0.6')
	end
	else
	  if keyJustPressed('z') then
    triggerEvent('Play Animation',daemote, 'BF')
   end
  end
end
if songBarr then
   	setProperty('wtf.y', getProperty('wot.y') + 90)
    setProperty('wtf.x', getProperty('wot.x') + 70)
    setProperty('wtf2.y', getProperty('wot.y') + 10)
	setProperty('wtf2.x', getProperty('wot.x') + 60)
	setProperty('wtf.alpha', getProperty('wot.alpha'))
    setProperty('wtf2.alpha', getProperty('wot.alpha'))
end
if Fullstat then
    setTextString('sick', 'Sick!: ' .. getProperty('sicks'))
    setTextString('good', 'Goods: ' .. getProperty('goods'))
    setTextString('bad', 'Bads: ' .. getProperty('bads'))
    setTextString('shit', 'Shits: ' .. getProperty('shits'))
end
if funnybf then
  if keyPressed("left") then
		bounce = (1 - math.abs(accel_x)/5)
		bf_flip = 1
	elseif keyPressed("up") then
		bounce = bounce*0.8 + 0.25
	elseif keyPressed("down") then
		bounce = bounce*0.7 + 0.25
	elseif keyPressed("right") then
		bounce = (1 - math.abs(accel_x)/5)
		bf_flip = -1
	else
		accel_x2 = accel_x2 + (1 - bounce)/5
		bounce = (bounce*0.8 + 0.2) + accel_x2
	end
 
	if keyPressed("left") then
		accel_x = accel_x*0.75 - 1*0.25
	elseif keyPressed("right") then
		accel_x = accel_x*0.75 + 1*0.25
	else
		accel_x = (accel_x)*0.8
	end
 
	pos_x = pos_x + accel_x*6
	setProperty('boyfriend.x', pos_x - 1/bounce * 150)
    setProperty('boyfriend.y', 100 + 1/bounce * 350)
	scaleObject('boyfriend', bf_flip/bounce, bounce)
end
if curStep == 1 and songBarr then
  	doTweenAlpha('wota', 'wot', 1 , 0.8, 'quadInOut')
	doTweenX('wote', 'wot', 0 , 0.8, 'quadInOut')
end
    if curStep == 25 and songBarr then 
	doTweenAlpha('wota', 'wot', 0 , 1, 'quadInOut')
	doTweenX('wote', 'wot', -600 , 0.8, 'quadInOut')
	doTweenAlpha('shog', 'sogn', 1 , 1, 'quadInOut')
	end
    if curStep == 10 and sideHealthbar then
	doTweenAlpha('youz', 'youe',0, 2, 'linear')
	doTweenAlpha('youx', 'youv',0, 2, 'linear')
    end

   if getProperty('health') > 1.6 then
     setTextColor('scoreTxt', '00DB45')
  elseif getProperty('health') < 0.4 then
     setTextColor('scoreTxt', 'FF0000')
  else
     setTextColor('scoreTxt', 'FFFFFF')
   end
end


function onBeatHit()
  if bopHead then
		if getAnim("dad") == "idle"..getProperty('dad.idleSuffix') then
			characterPlayAnim("dad","idle"..getProperty('dad.idleSuffix'),true)
		end
		if getAnim("boyfriend") == "idle"..getProperty('boyfriend.idleSuffix') then
			characterPlayAnim("boyfriend","idle"..getProperty('boyfriend.idleSuffix'),true)
		end
	end
	if getProperty('curBeat') % 1 == 0 then
	        setProperty('timeTxt.angle',1*-10)
			doTweenAngle('ho','timeTxt', 0, 0.2, 'quadInOut')
		if getProperty('health') > 1.6 then
		elseif getProperty('health') < 0.4 then

		else
	    end
	end

	if getProperty('curBeat') % 2 == 0 then
	        setProperty('timeTxt.angle',1*10)
			doTweenAngle('ho','timeTxt', 0, 0.2, 'quadInOut')
	    if getProperty('health') > 1.6 then
		elseif getProperty('health') < 0.4 then
		else
		end
   end
end