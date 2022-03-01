--[[
    Script Name    : SpawnScripts/LongshadowAlley2/ArasaiTortureInstruments.lua
    Script Author  : Premierio015
    Script Date    : 2020.06.11 11:06:28
    Script Purpose : 
                   : 
--]]
local TeirDalTurncoats = 566

function spawn(NPC)
SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
AddSpawnAccess(NPC, NPC)
end




function casted_on(NPC, Spawn, SpellName)
	if  GetQuestStep(Spawn, TeirDalTurncoats) == 1 then
		if SpellName == 'gather' then
			AddStepProgress(Spawn, TeirDalTurncoats, 2, 1)  
			Despawn(NPC)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if GetQuestStep(Spawn, TeirDalTurncoats) == 1 then
		AddSpawnAccess(NPC, Spawn)
        else
                RemoveSpawnAccess(NPC, Spawn)
	end
end

function respawn(NPC)
         spawn(NPC)
end
