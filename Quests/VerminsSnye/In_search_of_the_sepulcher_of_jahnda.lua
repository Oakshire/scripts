--[[
    Script Name    : Quests/VerminsSnye/In_search_of_the_sepulcher_of_jahnda.lua
    Script Author  : premierio015
    Script Date    : 2020.05.25 10:05:18
    Script Purpose : 

    Zone       : Vermin's Snye
    Quest Giver: Gillin Blackfis
    Preceded by: None
    Followed by: None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Mirf Guinders", 1, "I need to find a religious zealot of small stature. An area with a number of tinkerers may be a good place to begin my search.", 11, 2380029, 5890275)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will leave you to your insanity. Farewell.")
	StartConversation(conversation, QuestGiver, Player, "Huh? Yer not Ronicus! Blast! I told them that password was too obvious! Ronicus and his Red Raiders are gonna' have me head if this happens again. Ehem ... forget what I said, if you know what's best.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke to Mirf Guinders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Mirf Guinders in the Qeynos Capitol District.")

	AddQuestStepKill(Quest, 2, "Hunt the undead lurking in Vermin's Snye", 3, 100, "I need to collect three jade golem crystals from the Vermin's Snye. I hear that the undead guardians there have often been animated by use of these gems.", 769, 2000027, 2000018, 2000011, 2000010, 2000012, 2000020, 2000022)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected three jade golem crystals from Vermin's Snye.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have collected the three jade golem crystals.")

	AddQuestStepChat(Quest, 3, "Speak to Mirf Guinders", 1, "I must go back to the capitol district of Qeynos to deliver the jade golem crystals to Mirf Guinders.", 11, 2380029, 5890275)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Spoke to Mirf Guinders.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I gave three jade golem crystals to Mirf Guinders in the Qeynos Capitol District.")

	AddQuestStepKill(Quest, 4, "Slay Ayamia the Rat Queen", 1, 100, "I must go back to Vermin's Snye and slay Ayamia the Rat Queen.", 1009, 2000028)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I slew Ayamia the Rat Queen.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I slew Ayamia the Rat Queen and collected a sarcophagus key from her.")
    GiveQuestItem(Quest, Player, "I slew Ayamia the Rat Queen and collected a sarcophagus key from her.", 7984)  
	AddQuestStepZoneLoc(Quest, 5, "Go to the Central Stairwell", 10, "I must go to the Central Stairwell and Drain in Vermin's Snye.", 11, 120, 0, -109, 200)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I went to the Central Stairwell.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I went to the Central Stairwell and Drain in Vermin's Snye.")

	AddQuestStepZoneLoc(Quest, 6, "Go to the Coldwind Coast Cliff painting", 10, "I must search for the alcove containing a painting of the Coldwind Coast Cliffs.", 11, 184, -5.11, -91.3, 200)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I went to the Coldwind Coast Cliff painting.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I found the alcove containing a painting of the Coldwind Coast Cliffs.")

	AddQuestStepZoneLoc(Quest, 7, "Go to the Sepulcher of the Prime Healer", 10, "I must search for the main mausoleum called the Sepulcher of the Prime Healer.", 11, 237, -7, -81, 200)

	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I went to the Sepulcher of the Prime Healer.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I found the main mausoleum called the Sepulcher of the Prime Healer.")

	AddQuestStepLocation(Quest, 8, "Go to the Tomb of Lord Tonmerk", 1, "I must go to the Tomb of Lord Tonmerk in Vermin's Snye. He was Priestess Jahnda's greatest personal guard, but one of the most humble souls.", 11, 252, -6, -119)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "I went to the Tomb of Lord Tonmerk.")
	UpdateQuestTaskGroupDescription(Quest, 8, "I found Lord Tonmerk's sarcophagus.")

	UpdateQuestDescription(Quest, "I discovered the Tomb of Lord Tonmerk. It is rumored to be the secret entrance into the hidden mausoleum called the Sepulcher of Jahnda. ")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end