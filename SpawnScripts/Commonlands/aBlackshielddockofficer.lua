--[[
    Script Name    : SpawnScripts/Commonlands/aBlackshielddockofficer.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.17 05:04:03
    Script Purpose : 
                   : 
--]]

local QUEST = 409

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "The Blackshield Shipping Company has been in the business for years. We know our way around near-every ocean on Norrath!", "", 1689589577, 4560189, Spawn)
	if GetQuestStep(Spawn, QUEST) == 2 then
	SummonItem(Spawn, 2513, 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end