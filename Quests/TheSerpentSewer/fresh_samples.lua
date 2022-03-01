--[[
	Script Name		:	fresh_samples.lua
	Script Purpose	:	Handles the quest, "Fresh Samples"
	Script Author	:	premierio015
	Script Date		:	30.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	Marcus Puer
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	local RandomChoice = MakeRandomInt(1, 4)
	if RandomChoice == 1 then
	AddQuestStepKill(Quest, 1, "Get ten samples from a refuse toad.", 10, 100, "I'm helping Marcus Puer with his research down here in the Serpent Sewers.  He needs me to gather fresh samples from the creatures down here.", 343, 1550000, 1550037)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete_RefuseToad")
	elseif RandomChoice == 2 then
	AddQuestStepKill(Quest, 1, "Get ten samples from an immature sludgewater.", 10, 100, "I'm helping Marcus Puer with his research down here in the Serpent Sewers.  He needs me to gather fresh samples from the creatures down here.", 344, 1550006, 1550043)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete_ImmatureSludgewater")
	elseif RandomChoice == 3 then
	AddQuestStepKill(Quest, 1, "Get ten samples from a sift dasher.", 10, 100, "I'm helping Marcus Puer with his research down here in the Serpent Sewers.  He needs me to gather fresh samples from the creatures down here.", 342, 1550023, 1550060)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete_SiftDasher")
	elseif RandomChoice == 4 then
	AddQuestStepKill(Quest, 1, "Get ten samples from a drudge globule.", 10, 100, "I'm helping Marcus Puer with his research down here in the Serpent Sewers.  He needs me to gather fresh samples from the creatures down here.", 345, 1550001, 1550038)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete_DrudgeGlobule")
	end
end

function Step1Complete_RefuseToad(Quest, QuestGiver, Player)
UpdateQuestStepDescription(Quest, 1, "I've got the refuse toad samples.")
AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step1Complete_ImmatureSludgewater(Quest, QuestGiver, Player)
UpdateQuestStepDescription(Quest, 1, "I've got the immature sludgwater samples.")
AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step1Complete_SiftDasher(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've got the sift dasher samplers.")
AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step1Complete_DrudgeGlobule(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 4, "I've got the drudge globule samples.")
AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end




function Accepted(Quest, QuestGiver, Player)
    if GetQuestCompleteCount(Player, Quest) == 0 then
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	PlayFlavor(QuestGiver, "voiceover/english/marcus_puer/fprt_sewer02/marcuspuer006.mp3", "", "", 2102514737, 183908223, Player)
	AddConversationOption(conversation, "Alright then. ")
	StartConversation(conversation, QuestGiver, Player, "Well I need samples from the creatures down here, of course! You can handle this small request, right?  Of course you can!  Splendid!  Now off with you, off with your adventuring.")
	elseif GetQuestCompleteCount(Player, QUest) > 0 then
	PlayFlavor(QuestGiver, "voiceover/english/marcus_puer/fprt_sewer02/marcuspuer007.mp3", "", "", 794343, 2060215246, Player)
local conversation = CreateConversation()
AddConversationOption(conversation, "I'm on it.")
StartConversation(conversation, QuestGiver, Player, "I need more of the same, really, just bits and pieces, bits and pieces of the creatures down here. Now hop to it.  Remember, they need to be fresh!  The fresher, the more potent, that's what mom always said.")
end
   end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered the fresh samples Marcus needed.")
	AddQuestStepChat(Quest, 2, "I should return to Marcus with the samples.", 1, "I've gathered the samples Marcus needs, I should return them to him.", 11, 1550056)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end




function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've given Marcus the samples.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given Marcus the samples he asked for.")
	UpdateQuestDescription(Quest, "I've returned to Marcus and he was pleased with the samples that I brought him.  Perhaps I will help him again.  He seems to be a useful character to know.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    local RandomChoice = MakeRandomInt(1, 4)
	    if RandomChoice == 1 then
	    Step1Complete_RefuseToad(Quest, QuestGiver, Player)
	    elseif RandomChoice == 2 then
	    Step1Complete_ImmatureSludgewater(Quest, QuestGiver, Player)
	    elseif RandomChoice == 3 then
	   Step1Complete_SiftDasher(Quest, QuestGiver, Player)
	   elseif RandomChoice == 4 then
	    Step1Complete_DrudgeGlobule(Quest, QuestGiver, Player)
	    end 
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	end
end


