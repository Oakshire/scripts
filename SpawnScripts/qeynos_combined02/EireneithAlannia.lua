--[[
    Script Name    : SpawnScripts/qeynos_combined02/EireneithAlannia.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 10:06:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetFactionID(Spawn) == 12 then
	PlayFlavor(NPC, "", "And what do you think you're doing in our fair city?", "", 1689589577, 4560189, Spawn)
end
end

function respawn(NPC)
	spawn(NPC)
end