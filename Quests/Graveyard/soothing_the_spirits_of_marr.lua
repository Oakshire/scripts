--[[
	Quest Template
	Script Name	: soothing_the_spirits_of_marr.lua
	Script Purpose	: Handles the quest, "Soothing the Spirits of Marr"
	Script Author	: Scatman
	Script Date	: 2009.07.25

        Zone            : The Graveyard
        Quest Giver     : An Ethernere Guard
        Preceded by     : None
        Followed by     : None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "In order to appease the restless Knights of Marr, I must recover their holy relics from the graverobbers here in the Graveyard.", 4, 100, "I must hunt the graverobbers in the Graveyard in order to recover the relics of Marr they have purloined.", 368, 1250093, 1250094, 1250092, 1250096)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledGraverobbers")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "an_ethernere_guard/fprt_adv02_graveyard/ethernere_keeper004.mp3", "", "", 2575556836, 1434752042, Player)
	AddConversationOption(conversation, "I will fulfill my duty to the Overlord.")
	StartConversation(conversation, QuestGiver, Player, "You must recover these holy relics and return them to the graves of the awakened spirits for them to find rest again.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledGraverobbers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I was able to gather the stolen relics of Marr from the graverobbers in the Graveyard.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have recovered the four stolen relics of Marr.")
	
	AddQuestStep(Quest, 2, "I must take these relics to the tomb of Sir Ackmin.", 1, 100, "I should return to an Ethernere guard and let them know of my success.", 0)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_BroughRelics")
end

function Step2_Complete_BroughRelics(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned the relics to the tomb of Sir Ackmin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "It would seem that the return of the relics has put Sir Ackmin's soul to rest.")
	
	AddQuestStepChat(Quest, 3, "I should let an Ethernere guard know of my success.", 1, "I must return the relics to the tomb of Sir Ackmin.", 0, 1250074, 1250032, 1250084, 1250044)
	AddQuestStepCompleteAction(Quest, 3, "Step2_Complete_BroughRelics")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "The Keepers of Ethernere were pleased to hear of my efforts.")
	UpdateQuestTaskGroupDescription(Quest, 3, "The Keepers of Ethernere were pleased with my success")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "Having appeased the Spirits of Marr, things have returned to their normal level of danger here in the Graveyard.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledGraverobbers(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_BroughRelics(Quest, QuestGiver, Player)
	end
end