--[[
	Script Name	: testing_the_ward.lua
	Script Purpose	: Handles the quest, "Testing the Ward"
	Script Author	: Scatman
	Script Date	: 2009.07.11
	
	Zone       : The Graveyard
	Quest Giver: Custodian Zaddar Sullissia
	Preceded by: Finding the Pages (finding_the_pages.lua)
	Followed by: Obtaining an Ancient Staff (obtaining_an_ancient_staff.lua)
--]]


function Init(Quest)


	AddQuestStepChat(Quest, 1, "I must speak with Zaddar in the graveyard and obtain the relic from him.", 1, "I must speak with Zaddar and obtain the relic needed.", 0, 1250014)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeToZaddar")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar052.mp3", "", "", 3643355771, 3506584636, Player)
	AddConversationOption(conversation, "Is something bad going to happen if I take it there?", "dlg_4_16")
	AddConversationOption(conversation, "I can't help you with this.")
	StartConversation(conversation, QuestGiver, Player, "Yes, the remains of that tower still serve as a tribute to Mithaniel Marr. Such a relic would be seen as an abomination to him.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SpokeToZaddar(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Zaddar and obtained the relic.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke with Zaddar and obtained the relic needed.")
	
	AddQuestStep(Quest, 2, "I must take this relic to the Tower of Marr in the graveyard.", 1, 100, "Zaddar has given me an ancient relic seeping with unholy power to take to the tower of Marr in the graveyard. He claims that by placing this relic in the doorway of the tower, it will trigger any residual energy of Marr that might still remain. Zaddar feels that if the relic is placed and nothing happens, then the ward has not lost its potency.", 0)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_PlacedRelic")
end

function Step2_Complete_PlacedRelic(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've taken the relic to the Tower of Marr as instructed by Zaddar.")
	UpdateQuestTaskGroupDescription(Quest, 2, "By placing the unholy relic within the doorway to the tower of Marr, the long-dormant residual energy of the diety Mithaniel Marr was stirred, smiting me in the process. This indication was enough for Zaddar to know that the ward is in fact weakening after four centuries and something must be done.")
	
	AddQuestStep(Quest, 3, "Retrieve the relic.", 1, 100, "I've placed the relic and been smited for doing so! I need to retrieve the relic!", 0)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_GotRelic")
end

function Step3_Complete_GotRelic(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've picked-up the relic and put it in my bag.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've collected the relic.")
	
	AddQuestStepChat(Quest, 4, "I must speak with Zaddar at once!", 1, "I must return to Zaddar and tell him of what has happened immediately!", 0, 1250014)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- Relic of Unholy Power
	while HasItem(Player, 9901) do
		RemoveItem(Player, 9901)
	end
	
	UpdateQuestStepDescription(Quest, 4, "I've spoken with Zaddar and told him what has happened.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've spoken with Zaddar.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I found out firsthand that the ward is weakening. It seems the residual power of Marr still holds sway here.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_SpokeToZaddar(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_PlacedRelic(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_GotRelic(Quest, QuestGiver, Player)
	end
end
