--[[
    Script Name    : SpawnScripts/Antonica/MagnonBaelvurn.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.22 08:08:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetAlignment(Spawn) ~= 1  then
	PlayFlavor(NPC, "", "I dun' want to speak with ya!", "", 1689589577, 4560189, Spawn)
	else
	PlayFlavor(NPC, "", " I don't think I eat as much as I should", "", 1689589577, 4560189, Spawn)
end
   end

function respawn(NPC)
	spawn(NPC)
end