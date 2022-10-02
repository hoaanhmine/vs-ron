function onCreatePost()
    setProperty('timeBarBG.visible', false);
    setProperty('scoreTxt.visible', false);
    setProperty('waterTxt.visible', false);
    setProperty('timeBar.visible', false);
    setTextFont('score', 'vcr.ttf')
    setTextFont('defaultWatermark', 'vcr.ttf')
    end
function onCreate()
  --gapple score
  makeLuaText('score', '', getProperty('healthBarBG.width'), 500, 690)
  setTextSize('score', 20);
  addLuaText('score')
  
  --gapple defaultWatermark
  makeLuaText('defaultWatermark',songName..'-'..difficultyName..' | '..'Tristan Engine (KE 1.2)'.."", 0, 0,690)
  setTextSize('defaultWatermark', 20);
  addLuaText('defaultWatermark')
  
  --boyfriend credit
  makeLuaText('boyfr1end', "", 0, 110, 700)
  setTextSize('boyfr1end', 15)
  addLuaText('boyfr1end')
  end
function onUpdate()
  setTextString('score', 'Score: ' .. score .. ' | Combo Breaks: ' .. misses .. ' | Accuracy: ' .. getProperty('ratingPercent') * 100, 1)
  end
  -- Credits to a disappointment and Pambi