--[[
	Script Name	: SpawnScripts/QueensColony/aformidablesparringpartner.lua
	Script Purpose	: a formidable sparring partner 
	Script Author	: John Adams
	Script Date	: 2008.09.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]


function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function CombatReset(NPC)
local hp = GetMaxHP(NPC) * 0.10
SetHP(NPC, hp)
end

function healthchanged(NPC, Spawn)
	local lowhp = GetHP(NPC)
	if lowhp <= 15 then
        Runback(NPC)
        SetInCombat(NPC, false)
        ClearHate(NPC)
        ClearEncounter(NPC)
	end
end

 