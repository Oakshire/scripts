--[[
	Script Name	: Quests/Nettleville/looking_for_work_is_hard_work.lua
	Script Purpose	: Handles the quest, "Looking for Work is Hard Work"
	Script Author	: Scatman
	Script Date	: 2009.08.10
	
	Zone       : Nettleville
	Quest Giver: Helain Conyers
	Preceded by: Wind Blown Brell Serilis (wind_blown_brell_serilis.lua)
	Followed by: Crate and Barrel (crate_and_barrel.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should find Amazu Kharliko hanging out in Market Row near the bank.", 1, "I should find her friends within Nettleville.", 0, 2330015)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_TalkedToAmazu")
end

function Accepted(Quest, QuestGiver, Player)
	 FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/helain_conyers/qey_village01/helainconyers023.mp3", "", "", 455340576, 611384116, Player)
	AddConversationOption(conversation, "Good day to you!")
	StartConversation(conversation, QuestGiver, Player, "I do not have anything for you to do, but perhaps others do! Amazu Kharliko, Andret Surtees, Bahati Linnxar, and Laudine Shardalow are great friends of mine. I suggest you speak to each of them. May Quellious bless your journey, mighty one!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_TalkedToAmazu(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Amazu Kharliko did not have anything for me to do.")
	
	AddQuestStepChat(Quest, 2, "Andret Surtees can be found with the scribes in the northern most building.", 1, "I should find her friends within Nettleville.", 0, 2330035)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_TalkedToAndret")
end


function Step2_Complete_TalkedToAndret(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Andret Surtees didn't have any work for me, either.")
	
	AddQuestStepChat(Quest, 3, "The armorsmith building in the southeast corner is where I can find Bahati Linnxar.", 1, "I should find her friends within Nettleville.", 0, 2330040)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_TalkedToBahati")
end

function Step3_Complete_TalkedToBahati(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I wasn't able to find work with Bahati Linnxar.")
	
	AddQuestStepChat(Quest, 4, "Luadine Shardalow should be found at the bank in the southwest building.", 1, "I should find her friends within Nettleville.", 0, 2330013)
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_TalkedToLuadine")
end

function Step4_Complete_TalkedToLuadine(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "None of Helain's friends had work for me, but Luadine has a lead for me.")
	UpdateQuestTaskGroupDescription(Quest, 1, "None of Helain's friends had work for me, but Luadine has a lead for me.")
	
	AddQuestStepChat(Quest, 5, "Luadine Shardalow has sent me to speak with Johfrit Gythell.", 1, "He is in the southern area of town, near The Golden Scabbard armoy.", 0, 2330033)
	AddQuestStepCompleteAction(Quest, 5, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "None of Helain's friends had work for me, but Luadine had a lead for me.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_TalkedToAmazu(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_TalkedToAndret(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_TalkedToBahati(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_TalkedToLuadine(Quest, QuestGiver, Player)
	end
end