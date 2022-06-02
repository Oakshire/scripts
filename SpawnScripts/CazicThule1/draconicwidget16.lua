--[[
    Script Name    : SpawnScripts/CazicThule1/draconicwidget16.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 07:06:19
    Script Purpose : 
                   : 
--]]

local Drag = 5577

function spawn(NPC)
SetRequiredQuest(NPC, Drag, 18)
end


function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'open the book' then
    QuestStepIsComplete(Spawn,Drag,18)
end
end

function respawn(NPC)
	spawn(NPC)
end