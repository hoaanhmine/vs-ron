function onCreate()
	-- background shit
	makeLuaSprite('pissedRon_sky', 'pissedRon_sky', -600, -300);
	setScrollFactor('pissedRon_sky', 0.9, 0.9);

	makeLuaSprite('pissedRon_ground', 'pissedRon_ground', -175, -400);
	setScrollFactor('pissedRon_ground', 0.9, 0.9);
	scaleObject('pissedRon_ground', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('pissedRon_clouds', 'pissedRon_clouds', 150, -250);
		setScrollFactor('pissedRon_clouds', 0.9, 0.9);
		scaleObject('pissedRon_clouds', 0.9, 0.9);
	end

	addLuaSprite('pissedRon_sky', false);
	addLuaSprite('pissedRon_clouds', false);
	addLuaSprite('pissedRon_ground', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end