--[[
	Script Name		:	SpawnScripts/FrostfangSea/avelinoidseeker.lua
	Script Purpose	:   for the spawn "a velinoid seeker"
	Script Author	:   theFoof
	Script Date		:	2013.6.13
	Script Notes	:	
--]]

local GoodDistraction = 61

function spawn(NPC)
end

function death(NPC, Spawn)
	if not IsAlive(GetTempVariable(NPC, "linked")) then
		if GetQuestStep(Spawn, GoodDistraction) == 2 then
		    SetStepComplete(Spawn, GoodDistraction, 2)
		elseif GetQuestStep(Spawn, GoodDistraction) == 4 then
			SetStepComplete(Spawn, GoodDistraction, 4)
		end
	end
	SetTempVariable(NPC, "linked", nil)
end