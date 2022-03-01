--[[
	Script Name	: SpawnScripts/QueensColony/MorakAttack.lua
	Script Purpose	: waypoint to their death
	Script Author	: premierio015
	Script Date	: 2020.04.18
	Script Notes    : 
--]]

function spawn(NPC)
        MoveToLocation(NPC, 259.49, -4.74, 62.4, 7, "aggro", false)
        MoveToLocation(NPC, 257.61, -5.86, 68.2, 7, "aggro", false)
        MoveToLocation(NPC, 246.66, -7.01, 86.54, 7, "aggro", false)
end


function respawn(NPC)
        spawn(NPC)
end

function aggro(NPC)

end