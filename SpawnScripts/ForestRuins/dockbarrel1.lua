--[[
    Script Name    : SpawnScripts/ForestRuins/dockbarrel1.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.11 03:02:01
    Script Purpose : Quest Clearing Remmy's Name
                   : 
--]]

local Barrel = 533

function spawn(NPC)
SetRequiredQuest(NPC, Barrel, 1)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'inspect' then
    SetStepComplete(Spawn, Barrel, 1)
    end  
end

function spawn(NPC)
end


function respawn(NPC)
	spawn(NPC)
end