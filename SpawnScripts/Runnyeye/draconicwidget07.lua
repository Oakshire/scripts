--[[
    Script Name    : SpawnScripts/Runnyeye/draconicwidget07.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 07:06:44
    Script Purpose : 
                   : 
--]]

local Drag = 5577

function spawn(NPC)
SetRequiredQuest(NPC, Drag, 9)
end


function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'open the book' then
    QuestStepIsComplete(Spawn,Drag,9)
end
end

function respawn(NPC)
	spawn(NPC)
end