--[[
    Script Name    : SpawnScripts/Commonlands/aDervishcraftsman.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.19 04:05:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end


function InRange(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "", "This is Dervish territory. Leave while you still can.", "brandish", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "", "I only do business with Dervs. Go away!", "no", 0, 0, Spawn)
	else
	PlayFlavor(NPC, "", "Who would ever think that a Smithson would end up being an evil pounder to the bandits", "whome", 0, 0, Spawn)
end
   end
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end
   

function respawn(NPC)
	spawn(NPC)
end