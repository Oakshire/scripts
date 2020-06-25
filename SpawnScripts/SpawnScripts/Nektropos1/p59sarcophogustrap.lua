--[[
    Script Name    : SpawnScripts/Nektropos1/p59sarcophogustrap.lua
    Script Author  : smash
    Script Date    : 2018.06.07 01:06:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC)
	if GetTempVariable(NPC, "TrapTriggered") ~= "true" then
		SetTempVariable(NPC, "TrapTriggered", "true")
		SpawnByLocationID(GetZone(NPC), 1585015)
		SpawnSet(NPC, "show_command_icon", 0)
	end
end