--[[
	Script Name		:	SpawnScripts/Darklight/wellspringremainstoss.lua
	Script Purpose	:	For the quest, "Thexian Taint"
	Script Author	:	Cynnar
	Script Date		:	8/18/2015
	Script Notes	:	PlayAnimation is not set properly yet.
	Script Notes	:	Object wellspring_remains_toss (340748)
--]]

local ThexianTaint = 135

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
    spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	
	if HasQuest(Spawn, ThexianTaint) and GetQuestStep(Spawn, ThexianTaint) == 2 then
		AddSpawnAccess(NPC, Spawn)
	else
		RemoveSpawnAccess(NPC, Spawn)
	end
end

function casted_on(NPC, Spawn, SpellName)
    if SpellName == "Toss Remains in the Well" then
	    if HasQuest(Spawn, ThexianTaint) and HasItem(Spawn, 14387) then
			--if GetQuestStep(Spawn, ThexianTaint) == 2 then
			RemoveItem(Spawn, 14387)
			PlayAnimation(NPC, 22403)
			SendMessage(Spawn, "You toss the vex-runed remains in the well!", "white")
		    SetStepComplete(Spawn, ThexianTaint, 2)
			--end
		end
		
	end
end