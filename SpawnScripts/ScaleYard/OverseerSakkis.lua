--[[
    Script Name    : SpawnScripts/ScaleYard/OverseerSakkis.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.03 07:10:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, 5758)==2 then
	    SetStepComplete(Spawn, 5758,2)
	end
end

function respawn(NPC)
	spawn(NPC)
end