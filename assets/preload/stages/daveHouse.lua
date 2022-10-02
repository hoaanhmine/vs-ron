function onCreate()
	-- background shit
	makeLuaSprite('sky', 'sky', -200, 0);
	setScrollFactor('sky', 0.9, 0.9);
	scaleObject('sky', 1.2, 1.2);
	
	makeLuaSprite('hills', 'hills', -130, 70);
	setScrollFactor('hills', 0.9, 0.9);
	scaleObject('hills', 1.3, 1.3);

	makeLuaSprite('gate', 'gate', -130, 0);
	setScrollFactor('gate', 0.9, 0.9);
	scaleObject('gate', 1.3, 1.3);
	
	makeLuaSprite('grass', 'grass', -130, -18);
	setScrollFactor('grass', 0.9, 0.9);
	scaleObject('grass', 1.3, 1.3);

	addLuaSprite('sky', false);
	addLuaSprite('hills', false);
	addLuaSprite('gate', false);
	addLuaSprite('grass', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end