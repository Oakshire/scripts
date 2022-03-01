function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, 0, 0, 0, 50, "Memorial_InRange")

end

function Memorial_InRange(Zone, Player)
	SendPopUpMessage(Player, "Memorial Island: Dedicated to the wonderful people who helped make EverQuest 2 happen.", 244, 66, 134)
end