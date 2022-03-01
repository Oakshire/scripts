--[[
	Quest Template
	Script Name	: repairing_the_ward.lua
	Script Purpose	: Handles the quest, "Repairing the Ward"
	Script Author	: Scatman
	Script Date	: 2009.07.12

        Zone            : The Graveyard
        Quest Giver     : Custodian Zaddar Sullissia
        Preceded by     : The Book of the Dead (the_book_of_the_dead.lua)
        Followed by     : Reporting to the Ruins (reporting_to_the_ruins.lua)
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Recite the incantations with Zaddar.", 1, "Recite the magical incantations with Zaddar to reseal the ward upon the graveyard.", 0, 1250014)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeWithZaddar")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar100.mp3", "", "", 1431969198, 4289355071, Player)
	AddConversationOption(conversation, "Very well, I'll let you prepare.")
	StartConversation(conversation, QuestGiver, Player, "I must read the words from the pages of parchment that are now within the Book of the Dead. They are difficult to decipher, even with my skills. Give me a moment to study them.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeWithZaddar(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Zaddar and I were not able to repair the ward. Now I must determine why.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've attempted to reseal the ward by reciting the incantations with Custodian Zaddar but something was wrong.")
	
	AddQuestStepChat(Quest, 2, "I must check the tombs of the Knights of Truth to see which one is not sealed.", 1, "Determine what is preventing the ward from being resealed.", 0, 1250014)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SealedTomb")
end

function Step2_Complete_SealedTomb(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Sir Haligan's tomb is sealed so the ritual can now be completed.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've found the tomb of Sir Haligan and resealed it.")
	
	AddQuestStepChat(Quest, 3, "I should go back to Zaddar and attempt the ritual once more.", 1, "Seek out Zaddar once again and make another attempt at resealing the ward.", 0, 1250014)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've recited the arcane words with Zaddar and repaired the ward!")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've found Zaddar and reattempted to seal the ward.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I've come a long way with Zaddar here in the graveyard and it's been an interesting adventure. I hope that by repairing the ward and keeping the undead bound to the graveyard, the Overlord will take notice of my actions and maybe reward me one day.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeWithZaddar(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SealedTomb(Quest, QuestGiver, Player)
	end
end