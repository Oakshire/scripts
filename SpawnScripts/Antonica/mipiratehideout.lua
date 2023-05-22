--[[
    Script Name    : SpawnScripts/Antonica/mipiratehideout.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.21 01:05:37
    Script Purpose : 
                   : 
--]]
Brass1 = 5813


function spawn(NPC)
SetRequiredQuest(NPC,Brass1,1)
end



function respawn(NPC)
	spawn(NPC)
end