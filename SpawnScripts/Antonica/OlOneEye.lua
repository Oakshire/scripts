--[[
    Script Name    : SpawnScripts/Antonica/OlOneEye.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.13 07:08:33
    Script Purpose : 
                   : 
--]]

local TheOneThatGotAway = 5338


function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "InRange", Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end


function InRange(NPC, Spawn)
if GetQuestStep(Spawn, TheOneThatGotAway) == 1 then
SetStepComplete(Spawn, TheOneThatGotAway, 1)
end
	end


function respawn(NPC)
	spawn(NPC)
end