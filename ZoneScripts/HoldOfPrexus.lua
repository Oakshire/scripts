--[[
	Script Name	: ZoneScripts/HoldOfPrexus.lua
	Script Purpose	: Base Functions
	Script Author	: TyroneSWG
	Script Date	: 6/12/2020
	Script Notes	: Guide zone
--]]

function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, 670, -36, 1490, 50, "Guide_InHall")
	SetLocationProximityFunction(zone, 0, 0, 0, 0, "Guide_Out")

end

function Guide_InHall(Zone, Player)
	SendPopUpMessage(Player, "The Hold of Prexus blesses you with immunity.", 244, 66, 134)
	AddImmunitySpell()
end

function Guide_Out(Zone, Player)
    RemoveImmunitySpell()
    SendPopUpMessage(Player, "Your immunity has been removed.")
    Zone(GetZoneID(antonica))
end