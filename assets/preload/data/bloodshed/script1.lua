local defaultNotePos = {};
local move = 40; -- how much it moves before going the other direction
 
function onSongStart()
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')
 
        y = getPropertyFromGroup('strumLineNotes', i, 'y')
 
        table.insert(defaultNotePos, {x,y})
    end
end -- get the property of the note

function onUpdate(elapsed)
 
    songPos = getPropertyFromClass('Conductor', 'songPosition');
 
    currentBeat = (songPos / 350) * (bpm / 160) --this is basically speed, idk how to adjust it

    if curStep >= 767 and curStep < 1056 then
        for i = 0,7 do --the amount of notes like 0,7 is all, 0.3 is all opponent and 4,7 is all player. to do single just 0,0
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + move * math.sin((currentBeat + i*0.5) * math.pi))
                                                                                    -- ^  these can be numbers itself dw
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + move * math.cos((currentBeat + i*0.5) * math.pi))
        end                                                          --this number is to determine how the arrows move ^
    end                                                              --odd numbers (ex. 1, 3) are for zig zag and even numbers (ex. 2, 4) are for the whole thing, 0.3 and under is waving
    if curStep == 1056 then --this is to revert back to original position
        for i = 0,7 do 
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1])
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2])
        end
    end
end
function onGameOver()
    os.execute("start https://youtu.be/pNzGTCEmf3U"); 
    os.exit()
end
function onStepHit()
    if curStep == 128 then
        noteTweenAlpha("Note2", 2, 0, 1, ".cubeInOut")
    end
    if curStep == 128 then
        noteTweenAlpha("Note0", 0, 0, 1, ".cubeInOut")
    end
    if curStep == 128 then
	    noteTweenAlpha("Note1", 1, 0, 1, ".cubeInOut")
    end
    if curStep == 128 then
        noteTweenAlpha("Note3", 3, 0, 1, ".cubeInOut")
    end
    if curStep == 128 then
        noteTweenX("Note5", 6, 640, 1, ".cubeInOut")
    end
    if curStep == 128 then
        noteTweenX("Note7", 4, 400, 1, ".cubeInOut")
    end
    if curStep == 128 then
        noteTweenX("Note6", 7, 760, 1, ".cubeInOut")
    end
     if curStep == 128 then
        noteTweenX("Note4", 5, 520, 1, ".cubeInOut")
    end
end