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

function healthchanged(NPC, Spawn)
	local hp_percent = GetPCTOfHP(NPC, pctHealMin)
	if hp_percent <= 0.50
	if spoke == true then
        Runback(NPC)
        SetInCombat(NPC, false)
        ClearHate(NPC)
        ClearEncounter(NPC)
	SetHP(NPC, GetPCTofHP(NPC, pctHealMin))
	end
end
end

 