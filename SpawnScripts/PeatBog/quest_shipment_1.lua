--[[
	Script Name	: SpawnScripts/PeatBog/quest_shipment_1.lua
	Script Purpose	: quest_shipment_1
	Script Author	: Scatman
	Script Date	: 2009.05.11
	Script Notes	: 
--]]

local QUEST_4 = 218

function spawn(NPC)
	--SetRequiredQuest(NPC, QUEST_4)
end

function respawn(NPC)
	Spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, QUEST_4) then
		if IsBox1(Target) == true and not QuestStepIsComplete(Caster, QUEST_4, 1) then
			SendMessage(Caster, "Charges set for 5 seconds.")
			SetStepComplete(Caster, QUEST_4, 1)
			AddTimer(Target, 5000, "BlowUpBox")
		elseif IsBox2(Target) == true and not QuestStepIsComplete(Caster, QUEST_4, 2) then
			SendMessage(Caster, "Charges set for 5 seconds.")
			SetStepComplete(Caster, QUEST_4, 2)
			AddTimer(Target, 5000, "BlowUpBox")
		elseif IsBox3(Target) == true and not QuestStepIsComplete(Caster, QUEST_4, 3) then
			SendMessage(Caster, "Charges set for 5 seconds.")
			SetStepComplete(Caster, QUEST_4, 3)
			AddTimer(Target, 5000, "BlowUpBox")
		end
	end
end

function IsBox1(Box)
	if math.floor(GetX(Box)) == 688 and math.floor(GetY(Box)) == -35 and math.floor(GetZ(Box)) == 600 then
		return true
	else
		return false
	end
end

function IsBox2(Box)
	if math.floor(GetX(Box)) == 753 and math.floor(GetY(Box)) == -33 and math.floor(GetZ(Box)) == 604 then
		return true
	else
		return false
	end
end

function IsBox3(Box)
	if math.floor(GetX(Box)) == 797 and math.floor(GetY(Box)) == -33 and math.floor(GetZ(Box)) == 580 then
		return true
	else
		return false
	end
end

function BlowUpBox(Box)
	-- make box go boom. need visual
	Despawn(Box)
end