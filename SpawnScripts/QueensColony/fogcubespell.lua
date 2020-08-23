--[[
    Script Name    : SpawnScripts/QueensColony/fogcubespell.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.22 06:08:35
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
         AnimationLoop(NPC)
end

function respawn(NPC)
         spawn(NPC)
end

function AnimationLoop(NPC)
PlayAnimation(NPC, 4012)
	AddTimer(NPC, 7000, "AnimationLoop")
end