--[[
    Script Name    : SpawnScripts/Castleview/inspecttop01innbookcase.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.29 03:01:15
    Script Purpose : Quest Lost Book of Arbos
                   : 
--]]

local Arbos = 5468

function spawn(NPC)
SetRequiredQuest(NPC, Arbos, 3)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'inspect' then
    SetStepComplete(Spawn, Arbos, 3)
    end  
end
	    
function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end