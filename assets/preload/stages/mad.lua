function onCreate()
	-- background shit
	makeLuaSprite('veryAngreRon_sky', 'veryAngreRon_sky', -600, -300);
	setScrollFactor('veryAngreRon_sky', 0.9, 0.9);

	makeLuaSprite('veryAngreRon_ground', 'veryAngreRon_ground', -175, -400);
	setScrollFactor('veryAngreRon_ground', 0.9, 0.9);
	scaleObject('veryAngreRon_ground', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('veryAngreRon_clouds', 'veryAngreRon_clouds', 150, -250);
		setScrollFactor('veryAngreRon_clouds', 0.9, 0.9);
		scaleObject('veryAngreRon_clouds', 0.9, 0.9);
	end

	addLuaSprite('veryAngreRon_sky', false);
	addLuaSprite('veryAngreRon_clouds', false);
	addLuaSprite('veryAngreRon_ground', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end