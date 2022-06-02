--[[
    Script Name    : SpawnScripts/Permafrost/draconicwidget21.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 07:06:46
    Script Purpose : 
                   : 
--]]

local Drag = 5577

function spawn(NPC)
SetRequiredQuest(NPC, Drag, 23)
end


function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'open the rucksack' then
    QuestStepIsComplete(Spawn,Drag,23)
end
end

function respawn(NPC)
	spawn(NPC)
end