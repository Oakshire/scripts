--[[
    Script Name    : SpawnScripts/ForestRuins/aBlackfurlswabbie.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.26 05:02:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
   --ChooseMovement(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


