function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.008);
	end
end
function opponentNoteHit(id,data,type,sus)
    triggerEvent('Screen Shake','0.02, 0.02','0.5, 0.015')
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
