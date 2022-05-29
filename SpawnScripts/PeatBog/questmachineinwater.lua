--[[
    Script Name    : SpawnScripts/PeatBog/questmachineinwater.lua
    Script Author  : Shatou
    Script Date    : 2020.01.08 08:01:54
    Script Purpose : 
                   : 
--]]

local MYSTERIOUS_MACHINE_QUEST_ID = 508
local A_GNOLL_MACHINIST_ID = 1980062

function spawn(NPC)
SetRequiredQuest(NPC, MYSTERIOUS_MACHINE_QUEST_ID, 1, 1,0,1)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(NPC, Spawn, Message)
	if HasQuest(Spawn, MYSTERIOUS_MACHINE_QUEST_ID) then
		if GetQuestStep(Spawn, MYSTERIOUS_MACHINE_QUEST_ID) == 1 then
			if Message == "inspect" then
				SetStepComplete(Spawn, MYSTERIOUS_MACHINE_QUEST_ID, 1)
				local new_spawn = SpawnMob(GetZone(Spawn), A_GNOLL_MACHINIST_ID, false,GetX(NPC) + 2.5, GetY(NPC), GetZ(NPC) + 2.5, 0)
				
				AddHate(Spawn, NPC, 100)
			end
		end
	end
end