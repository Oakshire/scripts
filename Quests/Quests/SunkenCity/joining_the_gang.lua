--[[
	Script Name	: Quests/SunkenCity/joining_the_gang.lua
	Script Purpose	: Handles the quest, "Joining the Gang"
	Script Author	: Scatman
	Script Date	    : 2009.08.01
	
	Zone       : Sunken City
	Quest Giver: Manius Galla
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill two Blackshield raiders.", 2, 100, "I need to kill some of the Blackshields in the Sunken City.", 611, 1240123, 1240126, 1240117, 1240098, 1240124, 1240073, 1240067, 1240119, 1240140, 1240081, 1240118)
	AddQuestStepKill(Quest, 2, "I must kill two Blackshield plunderers.", 2, 100, "I need to kill some of the Blackshields in the Sunken City.", 611, 1240129, 1240092, 1240111, 1240095, 1240114, 1240078, 1240068)
	AddQuestStepKill(Quest, 3, "I must kill two Blackshield pillagers.", 2, 100, "I need to kill some of the Blackshields in the Sunken City.", 611, 1240090, 1240142, 1240113, 1240128, 1240069, 1240120, 1240099, 1240085, 1240148)
	AddQuestStepKill(Quest, 4, "I must kill two Blackshield ravagers.", 2, 100, "I need to kill some of the Blackshields in the Sunken City.", 611, 1240094, 1240088, 1240136, 1240077, 1240130, 1240101, 1240100, 1240087, 1240074)
	AddQuestStepKill(Quest, 5, "I must kill two Blackshield pirates.", 2, 100, "I need to kill some of the Blackshields in the Sunken City.", 611, 1240064, 1240093, 1240097, 1240134, 1240143, 1240055, 1240137, 1240089, 1240082, 1240147, 1240121)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledRaiders")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_KilledPlunderers")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_KilledPillagers")
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_KilledRavagers")
	AddQuestStepCompleteAction(Quest, 5, "Step5_Complete_KilledPirates")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/optional5/standard_dark_elf_male/fprt_hood05/quests/tilzaknlim/tilzak_x1_accept.mp3", "", "", 16004203, 2050489897, Player)
	AddConversationOption(conversation, "I'll be back when I have them.", "dlg_3_3")
	StartConversation(conversation, QuestGiver, Player, "OH! You'll help me? Oh thank you so much, friend! I wish to make a nice souffle from the fins of the Dusk Sharks that roam the waters here in the Sunken City.  I need a large fin in order to make this souffle.  I will be eagerly anticipating your return!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledRaiders(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the Blackshield raiders.")
	
	if QuestIsComplete(Player, 278) then
		KilledBlacksields(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_KilledPlunderers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed the Blackshield plunderers.")
	
	if QuestIsComplete(Player, 278) then
		KilledBlacksields(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_KilledPillagers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed the Blackshield pillagers.")
	
	if QuestIsComplete(Player, 278) then
		KilledBlacksields(Quest, QuestGiver, Player)
	end
end

function Step4_Complete_KilledRavagers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have killed the Blackshield ravagers.")
	
	if QuestIsComplete(Player, 278) then
		KilledBlacksields(Quest, QuestGiver, Player)
	end
end

function Step5_Complete_KilledPirates(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have killed the Blackshield pirates.")
	
	if QuestIsComplete(Player, 278) then
		KilledBlacksields(Quest, QuestGiver, Player)
	end
end

function KilledBlacksields(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed all of the Blackshields that were part of my test.")

	AddQuestStepChat(Quest, 2, "I need to speak with Manius.", 1, "I should return to Manius and let him know that I've passed his test.", 0, 1240079)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Manius.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've let Manius know that I've done what it takes to pass his test.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I've killed the raider lackeys like Manius has asked, and completed my test. He said he'll think about letting me join, but hasn't decided yet. Maybe I should check back with him later.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledRaiders(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_KilledPlunderers(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_KilledPillagers(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_KilledRavagers(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5_Complete_KilledPirates(Quest, QuestGiver, Player)
	end
end