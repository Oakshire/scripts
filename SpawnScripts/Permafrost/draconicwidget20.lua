--[[
    Script Name    : SpawnScripts/Permafrost/draconicwidget20.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 07:06:22
    Script Purpose : 
                   : 
--]]
local Drag = 5577

function spawn(NPC)
SetRequiredQuest(NPC, Drag, 22)
end


function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'open the scroll' then
    QuestStepIsComplete(Spawn,Drag,22)
end
end

function respawn(NPC)
	spawn(NPC)
end