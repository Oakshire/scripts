--[[
    Script Name    : SpawnScripts/Antonica/questbindingfirewidget.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.12 06:05:38
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC, 1, 1,0)
end


function respawn(NPC)
	spawn(NPC)
end