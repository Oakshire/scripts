--[[
    Script Name    : SpawnScripts/ForestRuins/smashedbarrelfoodshed.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.22 09:02:20
    Script Purpose : for Redemeing Remmy Tumbum quest
                   : 
--]]

local Barrel = 533

function spawn(NPC)
SetRequiredQuest(NPC, Barrel, 1)
end

function casted_on(NPC, Player, SpellName)
	if SpellName == 'inspect' then
	SetStepComplete(Player, Barrel, 1)
    SendPopUpMessage(Player, "Patches of fur are scattered about the barrel.", 255, 255, 0)
    end  
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end