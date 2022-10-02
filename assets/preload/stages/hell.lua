function onCreate()
	-- background shit
	makeLuaSprite('hellsky', 'hellsky', -600, -300);
	setScrollFactor('hellsky', 0.9, 0.9);

	makeLuaSprite('hellfront', 'hellfront', -175, -400);
	setScrollFactor('hellfront', 0.9, 0.9);
	scaleObject('hellfront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('hellsatan', 'hellsatan', 150, -250);
		setScrollFactor('hellsatan', 0.9, 0.9);
		scaleObject('hellsatan', 0.9, 0.9);
	end

	addLuaSprite('hellsky', false);
	addLuaSprite('hellsatan', false);
	addLuaSprite('hellfront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end