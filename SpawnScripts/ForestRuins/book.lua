--[[
    Script Name    : SpawnScripts/ForestRuins/book.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.27 04:02:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC, 522, 2)
end


function casted_on(NPC, Player, SpellName)
	if SpellName == 'search book' then
	SetStepComplete(Player, 522, 2)
end
end

function respawn(NPC)
	spawn(NPC)
end