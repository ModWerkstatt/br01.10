local soundsetutil = require "::/scripts/soundsetutil.lua"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01
(data, "br01_10/idle.wav", 25.0,
		{
		{ 0.0, 1.0 },
		{ 0.05, 0.0 } },
		{
		{ .0, 1.0 },
		{ 1.0, 1.0 } },
		{"vehicle", "speed01"})

soundsetutil.addTrackParam01
(data, "br01_10/ventil.wav", 25.0,
		{
		{ 0.0, 0.0 },
		{ 0.1, 4.0 },
		{ 0.2, 0.0 } },
		{
		{ .0, 1.0 },
		{ 1.0, 1.0 } },
		{"vehicle", "speed01"})

soundsetutil.addTrackParam01
(data, "br01_10/10_drive.wav", 25.0,
		{
		{ 0.0, 0.0 },
		{ 0.01, 0.8 },--gain lautstärke
		{ 0.5, 0.9 },
		{ 1.0, 1.0 } },
		{
		{ .0, 0.6 },--pitch speedtone
		{ 1.0, 1.1 } },
		{"vehicle", "speed01"})


soundsetutil.addEvent(data, "horn", { "br01_10/pfiff_01.wav" }, 50.0)
soundsetutil.addTrackSqueal(data, "br01_10/kurve.wav", 25.0)
soundsetutil.addTrackBrake(data, "br01_10/bremse_alt.wav", 25.0, 1.0)


return data

end
