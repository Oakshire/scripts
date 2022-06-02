--[[
    Script Name    : SpawnScripts/Rivervale/draconicwidget10.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 07:06:08
    Script Purpose : 
                   : 
--]]

local Drag = 5577

function spawn(NPC)
SetRequiredQuest(NPC, Drag, 12)
end


function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'open the book' then
    QuestStepIsComplete(Spawn,Drag,12)
end
end

function respawn(NPC)
	spawn(NPC)
end