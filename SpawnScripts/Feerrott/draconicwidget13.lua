--[[
    Script Name    : SpawnScripts/Feerrott/draconicwidget13.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 07:06:18
    Script Purpose : 
                   : 
--]]

local Drag = 5577

function spawn(NPC)
SetRequiredQuest(NPC, Drag, 15)
end


function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'open the scroll' then
    QuestStepIsComplete(Spawn,Drag,15)
end
end

function respawn(NPC)
	spawn(NPC)
end