function onCreate()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'plr3' then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'b3');
        end
    end
end