--[[
	Script Name      :    SpawnScripts/everfrost_frostfell_new01/ahoarfrostattacker.lua
	Script Purpose   :    A Hoarfrost Attacker
	Script Author    :    vo1d
	Script Date      :    2019.10.29
	Script Notes     :    
--]]

local ADeepiceMystery = 486

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 60, "InRange", "OutRange")	
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function InRange(NPC, Spawn)
	if HasQuest(Spawn, ADeepiceMystery) and GetQuestStep(Spawn, ADeepiceMystery) == 15 then
		SetStepComplete(Spawn, ADeepiceMystery, 15)
    end
 end

function OutRange(NPC, Spawn)
end