--[[
	Script Name	: Quests/ScaleYard/paying_homage_to_the_past.lua
	Script Purpose	: Handles the quest, "Paying Homage to the Past"
	Script Author	: Xanibunib	
	Script Date	: 2009.03.14

	Zone		: The Scale Yard
	Quest Giver	: Brood Matron Vrim Malthyk
	QuestID #	: 342
	Preceded by	: He said, he said
	Followed by	: Kill or be Killed 
--]]

-- Item ID's
local IKSAR_SKULL = 8251

function Init(Quest)
	
	
	AddQuestStepKill(Quest, 1, "I must smash the ancient Shissar vase. No remants of our former oppressors shouldbe allowed to exist.", 1, 100, "The ritual states that I must destroy an object from the ancient Shissar civilization. I should look around Vrim's quarters. She lives up the stairs, northeast of the docks.", 569, 1390059)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_Asp")
	
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance (Player, QuestGiver) < 30 then
			FaceTarget (QuestGiver, Player)
			conversation = CreateConversation()
			
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim028.mp3", "", "", 2174236902, 836114620, Spawn)
			AddConversationOption(conversation, "I take my leave.")
			StartConversation(conversation, NPC, Spawn, "Good. This ritual will begin to teach you about our people. Go now to my quarters, up the stairs to the East. I have prepared most everything you will need to complete the ritual.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
	RemoveIksarSkull(Player)
end

function RemoveIksarSkull(Player)
	while HasItem(Player, IKSAR_SKULL, 1) do
		RemoveItem(Player, IKSAR_SKULL)
	end
end

function Step1_Complete_Asp(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed the Shissar vase and killed an asp that was hiding within it...")
	
	AddQuestStepHarvest(Quest, 2,  "I must collect five skulls of fallen Iksar.", 5, 100,  "I Must gather several Iksar skulls scattered across the Scale Yard.", 91,  IKSAR_SKULL)

	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_GotSkulls")
end

function Step2_Complete_GotSkulls(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have collected the skulls.") 
	
	
	AddQuestStep(Quest, 3, "I must place the skulls in the brazier.", 1, 100, "I must place the skulls in the brazier and set them ablaze. I saw a brazier in Vrim's quarters, up the stairs, northeast of the docks.", 0)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_SkullsInFire")
end

function Step3_Complete_SkullsInFire(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 3, "I have placed the skulls in the fire.")
	
	RemoveIksarSkull(Player)
	AddQuestStep(Quest, 4, "I need to take the shackles off the wall.", 1, 100, "It Appears that the Iksar were once enslave by the Overlord. However, after proving their mettle during the Battle of Defiance, the Iksar were allowed to live freely in the Scale Yard. I am to take the old shackles from the time of enslavement and cast them into the sea!", 0)
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_HaveShackles")
end

function Step4_Complete_HaveShackles(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 4, "I've taken the shackles.") 
	
	AddQuestStepLocation(Quest, 5,  "I must cast the shackles into the sea.", 30, "I need to toss the shackles into the sea. I can do so at the docks.", 0, 0, -4.5, 105)
	AddQuestStepCompleteAction(Quest, 5, "Step5_Complete_TossShackles")
end

function Step5_Complete_TossShackles(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 5, "I have cast the shackles into the sea! Never again will the Iksar be imprisoned by a lesser race!")
	
	AddQuestStepChat(Quest, 6, "I have completed all the tasks mentioned in the tome. Though only a short lesson, I feel I know much more about the past glories and struggles my people have endured.", 1, "The ritual is complete. I must speak with Vrim", 0, 1260003)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have completed the ritual described in the ancient tome.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_Asp(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_GotSkulls(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_SkullsInFire(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_HaveShackles(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5_Complete_TossShackles(Quest, QuestGiver, Player)
	end
end