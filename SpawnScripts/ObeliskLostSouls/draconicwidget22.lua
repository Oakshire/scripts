--[[
    Script Name    : SpawnScripts/ObeliskLostSouls/draconicwidget22.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 08:06:31
    Script Purpose : 
                   : 
--]]

local Drag = 5577

function spawn(NPC)
SetRequiredQuest(NPC, Drag, 24)
end


function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'open the scroll' then
    QuestStepIsComplete(Spawn,Drag,24)
end
end

function respawn(NPC)
	spawn(NPC)
end