--[[
	Script Name	: obtaining_an_ancient_staff.lua
	Script Purpose	: Handles the quest, "Obtaining an Ancient Staff"
	Script Author	: Scatman
	Script Date	: 2009.07.12
	
	Zone       : The Graveyard
	Quest Giver: Custodian Zaddar Sullissia
	Preceded by: Testing the Ward (testing_the_ward.lua)
	Followed by: The Book of the Dead (the_book_of_the_dead.lua)
--]]


function Init(Quest)


	AddQuestStepChat(Quest, 1, "I must get the Staff of Ethernere from Varacus.", 1, "I've been instructed by Zaddar to obtain the ancient Staff of the Ethernere from Varacus. Zaddar feels that this relic will be a necessary component when attempting to reseal the ward.", 0, 1250070)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeToVaracus")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar064.mp3", "", "", 2541220824, 746144364, Player)
	AddConversationOption(conversation, "Why do we need this staff?", "dlg_5_8")
	AddConversationOption(conversation, "Enough of this story.")
	StartConversation(conversation, QuestGiver, Player, "This staff has runes carved along its length that ward off the undead. It is often used by the Keepers of Ethernere during purifying rituals.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeToVaracus(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've obtained the Staff of Ethernere.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've managed to talk that fool Varacus out of his staff, let's hope it was worth it.")
	
	AddQuestStepChat(Quest, 2, "I must take the Staff of Ethernere to Zaddar.", 1, "I must take this staff to Zaddar with haste, there is little time and much work to be done.", 0, 1250014)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The Staff of Ethernere
	while HasItem(Player, 12438) do
		RemoveItem(Player, 12438)
	end
	
	UpdateQuestStepDescription(Quest, 2, "I've given the staff to Zaddar.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I must take the Staff of Ethernere to Zaddar in the graveyard so he can begin the arcane spell to reseal the ward.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I've obtained the ancient staff used by the Keepers of Ethernere and passed it along to Zaddar.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeToVaracus(Quest, QuestGiver, Player)
	end
end
