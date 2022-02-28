--[[
    Script Name    : SpawnScripts/ForestRuins/deaddeer.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.27 05:02:59
    Script Purpose : 
                   : 
--]]

local Deer = 5494

function spawn(NPC)
SetRequiredQuest(NPC, Deer, 1,1,0)
end

function casted_on(NPC, Player, SpellName)
	if SpellName == 'inspect' then
	SetStepComplete(Player, Deer, 1)
    end  
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end