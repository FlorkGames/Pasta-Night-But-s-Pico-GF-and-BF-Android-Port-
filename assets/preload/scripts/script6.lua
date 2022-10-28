function onCreate()
	setPropertyFromClass("openfl.Lib", "application.window.title", "pasta night | " .. (songName))
end
function onDestroy()
	setPropertyFromClass("openfl.Lib", "application.window.title", "pasta night")
end
