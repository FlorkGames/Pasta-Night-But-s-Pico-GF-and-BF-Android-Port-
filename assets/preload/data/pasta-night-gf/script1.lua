function onCreate()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'bf' then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'lul');
        end
    end
end