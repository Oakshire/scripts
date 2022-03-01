--[[
	Script Name		:	<script-name>
	Script Purpose	:	<purpose>
	Script Author	:	Jabantiz
	Script Date		:	6/15/2018
	Script Notes	:	<special-instructions>
--]]

-- Quest ID's
local CONFRONTATION = 321

-- Item ID's
local SOUL_SPIKE = 13134

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if HasItem(Spawn, SOUL_SPIKE) and HasQuest(Spawn, CONFRONTATION) and GetQuestStep(Spawn, CONFRONTATION) == 2 then
		local heading = GetHeading(NPC) + 180
		if heading >= 360 then
			heading = heading - 360
		end
		
		SpawnMob(GetZone(Spawn), 2340127, false, GetX(NPC), GetY(NPC) + 0.69, GetZ(NPC), heading)
		
		while HasItem(Spawn, SOUL_SPIKE, 1) do
			RemoveItem(Spawn, SOUL_SPIKE)
		end
	end
end