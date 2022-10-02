function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.25 then
       setProperty('health', health- 0.001);
	end
end
