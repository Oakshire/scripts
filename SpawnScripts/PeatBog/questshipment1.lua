--[[
    Script Name    : SpawnScripts/PeatBog/questshipment1.lua
    Script Author  : Shatou
    Script Date    : 2020.01.08 09:01:53
    Script Purpose : 
                   : 
--]]

local ON_THE_MOVE_QUEST_ID = 510
local A_GNOLL_MACHINIST_ID = 1980065
local A_GNOLL_GUARD_ID = 1980064
local A_MACHINIST_ASSISTANT_ID = 1980066

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(NPC, Spawn, Message)
	if HasQuest(Spawn, ON_THE_MOVE_QUEST_ID) then
		if GetQuestStep(Spawn, ON_THE_MOVE_QUEST_ID) == 1 then
			if Message == "inspect" then
				SetStepComplete(Spawn, ON_THE_MOVE_QUEST_ID, 1)
			end
		elseif GetQuestStep(Spawn, ON_THE_MOVE_QUEST_ID) == 2 then
			if Message == "inspect" then
				SetStepComplete(Spawn, ON_THE_MOVE_QUEST_ID, 2)
			end
		elseif GetQuestStep(Spawn, ON_THE_MOVE_QUEST_ID) == 3 then
			if Message == "inspect" then
				SetStepComplete(Spawn, ON_THE_MOVE_QUEST_ID, 3)
			end
		end
		
		local new_spawn_1 = SpawnMob(GetZone(Spawn), A_GNOLL_MACHINIST_ID, false, GetX(NPC) + 2.5, GetY(NPC), GetZ(NPC) - 3, 0)
		local new_spawn_2 = SpawnMob(GetZone(Spawn), A_GNOLL_GUARD_ID, false, GetX(NPC) + 2.5, GetY(NPC), GetZ(NPC) + 2.5, 0)
		local new_spawn_3 = SpawnMob(GetZone(Spawn), A_MACHINIST_ASSISTANT_ID, false, GetX(NPC) - 2.5, GetY(NPC), GetZ(NPC) + 2.5, 0)
		
		AddHate(Spawn, new_spawn_1, 100)
		AddHate(Spawn, new_spawn_2, 100)
		AddHate(Spawn, new_spawn_3, 100)
	end
end