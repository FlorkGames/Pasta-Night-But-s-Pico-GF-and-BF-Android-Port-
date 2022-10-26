--script by modiey base by script vCherry.kAI.16

local Notes_Texture_2 = 'lul'

function onUpdatePost(elapsed)
  for i = 0, getProperty('opponentStrums.length')-1 do
    setPropertyFromGroup('opponentStrums', i, 'texture', Notes_Texture_2);
    
  end
end


