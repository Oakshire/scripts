--[[
    Script Name    : SpawnScripts/CazicThule1/draconicwidget17.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 07:06:47
    Script Purpose : 
                   : 
--]]

local Drag = 5577

function spawn(NPC)
SetRequiredQuest(NPC, Drag, 19)
end


function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'open the scroll' then
    QuestStepIsComplete(Spawn,Drag,19)
end
end

function respawn(NPC)
	spawn(NPC)
end