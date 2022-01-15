function onCreate()
	-- background shit
	makeLuaSprite('neostageback', 'neostageback', -500, -300);
	setLuaSpriteScrollFactor('neostageback', 0.9, 0.9);
	
	makeLuaSprite('neostagefront', 'neostagefront', -650, 600);
	setLuaSpriteScrollFactor('neostagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('neostagelight_left', 'neostage_light', -125, -100);
		setLuaSpriteScrollFactor('neostagelight_left', 0.9, 0.9);
		scaleObject('neostagelight_left', 1.1, 1.1);
		
		makeLuaSprite('neostagelight_right', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('neostagelight_right', 0.9, 0.9);
		scaleObject('neostagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('neostagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('neostagecurtains', 'neostagecurtains', -500, -300);
		setLuaSpriteScrollFactor('neostagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('neostageback', false);
	addLuaSprite('neostagefront', false);
	addLuaSprite('neostagelight_left', false);
    addLuaSprite('neostagelight_right', false);
	addLuaSprite('neostagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end