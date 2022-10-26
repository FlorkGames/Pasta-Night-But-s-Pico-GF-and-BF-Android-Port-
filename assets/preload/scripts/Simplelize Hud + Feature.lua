                  --settings--
local healthdrain = true; --- everytime opponent hit notes your health get drained like boyfriend do to opponent [default: true]
--[dont worry about getting blueballed because healthdrain if your health low enough it will stop draining]--

-- more coming


                --the thing lolollolololol--[pls dont mess up this thing]
function onCreatePost()
  setProperty('timeBarBg.y', -9999)
 setProperty('timeBar.y', -9999)
   if downscroll then
  setProperty('scoreTxt.y', 1*690)
  setProperty('timeTxt.y', getProperty('scoreTxt.y')+ -9999)
  setProperty('timeTxt.x', getProperty('scoreTxt.x')+ 440)
  end
   if not downscroll then
  setProperty('scoreTxt.y', 1*20)
  setProperty('timeTxt.y', getProperty('scoreTxt.y')+ -9999)
  end
end

function onUpdate()
   if getProperty('health') > 1.6 then
     setTextColor('scoreTxt', '00DB45')
  elseif getProperty('health') < 0.4 then
     setTextColor('scoreTxt', 'FF0000')
  else
     setTextColor('scoreTxt', 'FFFFFF')
   end
end