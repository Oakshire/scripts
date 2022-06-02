--[[
    Script Name    : SpawnScripts/ThunderingSteppes/draconicwidget06.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 07:06:50
    Script Purpose : 
                   : 
--]]
local Drag = 5577

function spawn(NPC)
SetRequiredQuest(NPC, Drag, 8)
end


function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'open the backpack' then
    QuestStepIsComplete(Spawn,Drag,8)
end
end

function respawn(NPC)
	spawn(NPC)
end