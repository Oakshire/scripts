--[[
        Script Name     : SpawnScripts/QueensColony/MorakAttack428874.lua
	Script Purpose	: waypoint to their death
	Script Author	: premierio015
	Script Date	: 2020.04.18
	Script Notes    : 
--]]

function spawn(NPC)
        MoveToLocation(NPC, 248.48, -6.99, 84.62, 7, "aggro", false)
        MoveToLocation(NPC, 233.27, -3.06, 155.58, 7, "aggro", false) 
--        MoveToLocation(NPC, 235.88, -4.05, 149.17, 7, "aggro", true)
end


function respawn(NPC)
        spawn(NPC)
end

function aggro(NPC)

end