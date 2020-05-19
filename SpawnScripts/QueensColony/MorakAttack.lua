--[[
	Script Name	: SpawnScripts/QueensColony/MorakAttack.lua
	Script Purpose	: waypoint to their death
	Script Author	: premierio015
	Script Date	: 2020.04.18
	Script Notes    : 
--]]

function spawn(NPC)

MoveToLocation(NPC, 236.09, -3.99, 149.36, 7, "aggro", false)

end


function respawn(NPC)
         spawn(NPC)
end

function aggro(NPC)

end