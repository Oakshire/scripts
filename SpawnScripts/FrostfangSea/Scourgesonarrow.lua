--[[
	Script Name		:	SpawnScripts/FrostfangSea/Scourgesonarrow.lua
	Script Purpose	:	for the spawn "Scourgeson arrow"
	Script Author	:	theFoof
	Script Date		:	2013.6.16
	Script Notes	:   
--]]

local WhirlingTime = 70

function spawn(NPC)
	SetRequiredQuest(NPC, WhirlingTime, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'apply draught' then
		if GetQuestStep(Spawn, WhirlingTime) == 1 then
			if HasItem(Spawn, 6556) then
		    	SpawnMob(GetZone(Spawn), 4701138, 0, GetX(NPC), GetY(NPC), GetZ(NPC), GetHeading(NPC))
			    AddStepProgress(Spawn, WhirlingTime, 1, 1)
			    Despawn(NPC)
			else
				SendMessage(Spawn, "You must have the Draught of Whirling Ice to use it!", "yellow")
			end
		end
	end
end