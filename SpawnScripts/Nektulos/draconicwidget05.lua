--[[
    Script Name    : SpawnScripts/Nektulos/draconicwidget05.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 07:06:08
    Script Purpose : 
                   : 
--]]

local Drag = 5577

function spawn(NPC)
SetRequiredQuest(NPC, Drag, 7)
end


function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'open the chest' then
    QuestStepIsComplete(Spawn,Drag,7)
end
end

function respawn(NPC)
	spawn(NPC)
end