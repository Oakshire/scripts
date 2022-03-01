--[[
	Script Name	: SpawnScripts/ScaleYard/aShissarianvase.lua 
	Script Purpose	: Spawn Shissarian asp
	Script Author	: Xanibunib
	Script Date	: 2009.03.31
	Script Notes	: 
--]]

-- Quest ID's
local QUEST_3 = 342 --152 --Paying homage to the past--

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_3, 1)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end

function death(NPC, Spawn)
	local asp = SpawnMob(GetZone(Spawn), 1390059, false, GetX(NPC), GetY(NPC), GetZ(NPC), GetHeading(NPC))
	if asp ~= nil then
		Attack(asp, Spawn)
	end
end