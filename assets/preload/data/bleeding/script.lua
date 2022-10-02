local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'breakfast');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end
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