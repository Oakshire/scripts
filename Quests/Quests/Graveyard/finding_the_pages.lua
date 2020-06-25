--[[
	Script Name	: finding_the_pages.lua
	Script Purpose	: Handles the quest, "Finding the Pages"
	Script Author	: Scatman
	Script Date	: 2009.07.11
	Scripts Notes   : 21.05.2020  by premierio015: MISSING ITEMS IN DB NEEDED FOR FURTHER QUEST STEP COMPLETION
	Zone       : The Graveyard
	Quest Giver: Custodian Zaddar Sullissia
	Preceded by: Paying a Visit (paying_a_visit.lua)
	Followed by: Testing the Ward (testing_the_ward.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I must destroy some of the undead to see if they have any of the pieces of parchment.", 5, 100, "I should search near the ruins of the Tower of Marr. Others pages might have been taken by the local undead. I should also search near the tombs of the fallen Knights of Truth.", 2180, 1250024, 1250028, 1250035, 1250042, 1250080, 1250068, 1250059, 1250021, 1250029, 1250063, 1250057, 1250081, 1250055, 1250043, 1250064, 1250053, 1250036, 1250087, 1250060, 1250041, 1250056, 1250046, 1250052, 1250049, 1250038, 1250091, 1250026, 1250006, 1250016, 1250037, 1250075, 1250012, 1250019, 1250020, 1250017, 1250097, 1250090, 1250079, 1250066, 1250034, 1250031)
	AddQuestStepObtainItem(Quest, 2,  "I must search the Tower of Marr ruins for one of the pages.", 1, 100,  "I should search near the ruins of the Tower of Marr. Others pages might have been taken by the local undead. I should also search near the tombs of the fallen Knights of Truth.", 2180,  2315) -- a tattered piece of paper

	AddQuestStepObtainItem(Quest, 3,  "I should search beneath the elevated tombs near Zaddar for one of the pages.", 1, 100,  "I should search near the ruins of the Tower of Marr. Others pages might have been taken by the local undead. I should also search near the tombs of the fallen Knights of Truth.", 2180,  2315) -- a tattered piece of paper

	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledSkeletons")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SearchedTower")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_SearchedTombs")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "thank", 0, 0, Player)
	AddConversationOption(conversation, "I shall return.")
	StartConversation(conversation, QuestGiver, Player, "Thank you for your help! Please let me know when you have found them.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledSkeletons(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found one of the seven missing pieces of parchment.")
	
	if QuestIsComplete(Player, 233) then
		FoundAllPages(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_SearchedTower(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found one of the seven missing pieces of parchment.")
	
	-- a tattered piece of paper
	while HasItem(Player, 2660) do
		RemoveItem(Player, 2660)
	end
	
	if QuestIsComplete(Player, 233) then
		FoundAllPages(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_SearchedTombs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've found one of the seven missing pieces of parchment.")
	
	-- a tattered piece of paper
	while HasItem(Player, 2660) do
		RemoveItem(Player, 2660)
	end
	
	if QuestIsComplete(Player, 233) then
		FoundAllPages(Quest, QuestGiver, Player)
	end
end

function FoundAllPages(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I should return to Varacus with the pages I found.")
	
	AddQuestStepChat(Quest, 4, "I should return to Varacus and prove that I found the pages.", 1, "Return to Varacus T`Kur and scold him for not looking after the pages.", 0, 1250070)
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_SpokeToVaracus")
end

function Step4_Complete_SpokeToVaracus(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have returned to Varacus with the pages.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Varacus was like putty in my hands, the fool.")
	
	-- Ethernere Ledger
	-- TODO: Display quest reward popup
	if not HasItem(Player, 6016) then
		SummonItem(Player, 6016)
	end
	
	AddQuestStepChat(Quest, 5, "I should return to Zaddar with the pages he needs.", 1, "I must return to Zaddar and tell him of my findings.", 0, 1250014)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- Ethernere Ledger
	while HasItem(Player, 6016) do
		RemoveItem(Player, 6016)
	end
	
	UpdateQuestStepDescription(Quest, 5, "I've returned to Zaddar and gave him the pieces of parchment.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've returned to Zaddar with the lost documents.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I was able to track down all seven pieces of parchment and successfully delivered them to Zaddar.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledSkeletons(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SearchedTower(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_SearchedTombs(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_SpokeToVaracus(Quest, QuestGiver, Player)
	end
end
