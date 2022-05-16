--[[
    Script Name    : SpawnScripts/Antonica/liftrock.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.15 02:05:10
    Script Purpose : 
                   : 
--]]
local Ages = 5550

function spawn(NPC)
SetRequiredQuest(NPC, Ages, 5)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'Look Under Rock' then
    SetStepComplete(Spawn, Ages, 5)
    end  
end

function respawn(NPC)
	spawn(NPC)
end