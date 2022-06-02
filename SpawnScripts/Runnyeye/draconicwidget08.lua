--[[
    Script Name    : SpawnScripts/Runnyeye/draconicwidget08.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 07:06:27
    Script Purpose : 
                   : 
--]]

local Drag = 5577

function spawn(NPC)
SetRequiredQuest(NPC, Drag, 10)
end


function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'open the scroll' then
    QuestStepIsComplete(Spawn,Drag,10)
end
end

function respawn(NPC)
	spawn(NPC)
end