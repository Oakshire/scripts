--[[
        Script Name     : SpawnScripts/QueensColony/MorakAttack428890.lua
	Script Purpose	: waypoint to their death
	Script Author	: premierio015
	Script Date	: 2020.04.18
	Script Notes    : 
--]]



function spawn(NPC, Spawn)
        MoveToLocation(NPC, 254.46, -5.10, 65.5, 7, "aggro", false)
        MoveToLocation(NPC, 246.03, -6.98, 83.05, 7, "aggro", false)
        MoveToLocation(NPC, 233.07, -4.19, 148.65, 7, "aggro", false)
        MoveToLocation(NPC, 232.17, -3.42, 152.3, 7, "aggro", false)   
end


function respawn(NPC)
        spawn(NPC)
end



function aggro(NPC)

end
