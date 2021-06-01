--[[
    Script Name    : SpawnScripts/Freeport/TomeWardenKNarn.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.31 07:05:23
    Script Purpose :  A Tour of the Commonlands dialogue needed
                   : 
--]]


local ATouroftheCommonlands = 5248
function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, ATouroftheCommonlands) == 16 then
	SetStepComplete(Spawn, ATouroftheCommonlands)
end
end


function respawn(NPC)
	spawn(NPC)
end