--[[
	Script Name	: Quests/ScaleYard/report_to_enforcer_kurdek.lua
	Script Purpose	: Quest 344, Report To Enforcer Kurdek
	Script Author	: Xanibunib
	Script Date	: 4.10.2009
	
	Zone       : Scale Yard
	Quest Giver: Brood Matron Vrim Malthyk
	Preceded by: Report To Enforcer Kurdek
	Followed by: 
--]]


function Init(Quest)


	AddQuestStepChat(Quest, 1, "I need to speak to Enforcer Kurdek in the Sprawl.", 1, "", 0, 1260017)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Kurdek")



end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Kurdek(Quest, QuestGiver, Spawn)
	UpdateQuestDescription(Quest, "I have spoken to Enforcer Kurdek.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Kurdek(Quest, QuestGiver, Player)
	end
end