--[[
	Script Name	: Quests/Ruins/identifying_the_lonetusk_ally.lua
	Script Purpose	: Handles the quest, \\\"Identifying the Lonetusk Ally\\\"
	Script Author	: Scatman
	Script Date	: 2009.08.20
	
	Zone       : The Ruins
	Quest Giver: Captain Arellius
	Preceded by: Vengeance for Shoreside (vengeance_for_shoreside.lua)
	Followed by: File a Final Report (file_a_final_report.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must interrogate the orc prisoner to find out the identity of the Lonetusk weapon supplier.", 1, "I must interrogate the orc prisoner to find out the identity of the Lonetusk\\\'s new benfactor.", 0, 1270104)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SpokeWithOrc")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus018.mp3", "", "", 1717970804, 3719629105, Player)
	AddConversationOption(conversation, "I'll return when I have the information you need, lieutenant.")
	StartConversation(conversation, QuestGiver, Player, "I knew we could rely on you! Take any measures necessary to get the beast to talk. ANY measures... got it?")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledSentries(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "The prisoner didn't know who is supplying the weapons and armor, but told me of a hidden document that might.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have questioned the orc prisoner and found out that the Lonetusk are hiding a document that may reveal the identity of their supplier.")
	
	AddQuestStepChat(Quest, 2, "I should tell the lieutenant that the orcs have a hidden document that may reveal the identity of their benefactor.", 1, "I must tell Lieutenant Imperidus what I found out from the prisoner.", 0, 1270070)
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SpokeWithLieutenant")
end

function Step2_Complete_SpokeWithLieutenant(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I told the lieutenant that the Lonetusk have some kind of letter from their mysterious benefactor")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have told Lieutenant Imperidus what I learned from the prisoner.")
	
	AddQuestStep(Quest, 3, "I must search for an underground bunker where the Lonetusk are hiding some kind of document.", 1, 100, "I must search underground areas in the Ruins for a secret document in the possession of the Lonetusk orcs.", 374, 5048)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_FoundNote")
end

function Step3_Complete_FoundNote(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found an orcish document hidden in a chest in an underground bunker.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have found the hidden orcish document. I should examine it and report back to Lieutenant Imperidus.")
	
	SendMessage(Player, "You search the strongbox and find a parchment with orcish writing. You place it in your inventory.")
	SendPopUpMessage(Player, "You search the strongbox and find a parchment with orcish writing. You place it in your inventory.", 255, 255, 0)
	-- an orcish parchment
	if not HasItem(Player, 3393, 1) then
		SummonItem(Player, 3393)
		SendMessage(Player, "You receive [an orcish parchment].")
	end
	
	AddQuestStepSpell(Quest, 4, "I should report back to the lieutenant.", 1, 100, "I should report back to Lieutenant Imperidus at the second Militia outpost and give her the document I found.", 0, 1270070)
	AddQuestStepCompleteAction(Quest, 4, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	-- an orcish parchment
	while HasItem(Player, 3393, 1) do
		RemoveItem(Player, 3393)
	end
	SendMessage(Player, "You give the parchment to Lieutenant Imperidus.")
	SendPopUpMessage(Player, "You give the parchment to Lieutenant Imperidus.", 255, 255, 0)
	UpdateQuestStepDescription(Quest, 4, "I have reported back to the lieutenant.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have reported back to Lieutenant Imperidus and gave her the orcish document.")
	UpdateQuestDescription(Quest, "I interrogated the orc prisoner and learned of a document the Lonetusk were guarding. I retrieved the document and returned it to Lieutenant Imperidus of the Freeport Militia, who determined that the Lonetusk and Brokentusk are being supplied by the Rujarkian orcs, a tribe operating out of the Clefts of Rujark in the Desert of Ro. This is important information that must be given to Captain Arellius at the docks.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledSentries(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SpokeWithLieutenant(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_FoundNote(Quest, QuestGiver, Player)
	end
end