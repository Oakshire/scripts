--[[
    Script Name    : SpawnScripts/FallenGate/adeadexplorer.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.20 04:05:55
    Script Purpose : 
                   : 
--]]

local NarinHeirloom = 5227

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Search Remains' then
		     SendMessage(Spawn, "You take the small lockbox from the dead explorer",   20) 
end
end

function targeted(NPC, Spawn)
 if GetQuestStep(Spawn, NarinHeirloom) == 1 then
SetStepComplete(Spawn, NarinHeirloom, 1)
end
  end