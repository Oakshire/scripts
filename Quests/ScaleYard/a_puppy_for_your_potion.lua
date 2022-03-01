--[[
	Script Name	: Quests/ScaleYard/a_puppy_for_your_potion.lua
	Script Purpose	: Handles the quest, "A Puppy for Your Potion"
	Script Author	: Xanibunib	
	Script Date	: 2009.03.13
	
	Zone       : The Scale Yard
	Quest Giver: Brood Matron Vrim Malthyk
	QuestID #	: 340
	Preceded by: None
	Followed by: He Said, he said (He_said_he_said.lua)
--]]

-- Item ID's
local BOX_OF_ALCHEMY_COMPONENTS = 4537

function Init(Quest)
	--Ancient Sebilisian Haversack
	AddQuestStepChat(Quest, 1, "I need to speak with Melvin Dunford. He was last seen in a tavern located North of the Fountain of the Fallen Soldier.", 1, "Melvin Dunford, a freeport dockworker knows the location of a box of alchemy componenets that belong to Brood Matron Vrim. I need to blackmail Melvin into giving me the box.", 0, 1390050)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_Threat")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()

			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim007.mp3", "", "", 3926366236, 3342203469, Spawn)
			AddConversationOption(conversation, "With pleasure.")
			StartConversation(conversation, QuestGiver, Player, "You , I want you to take this. It is the collar of his most beloved puppy, Wittens. Show it to him and inform Mr. Dunford if he does not tell me the location of the alchemy components poor little Wittens here will find himself in the company of a rather insatiable and ravenous friend of mine. One of... trollish persuasion.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
	RemoveAlchemyComponents(Player)
end

function RemoveAlchemyComponents(Player)
	while HasItem(Player, BOX_OF_ALCHEMY_COMPONENTS, 1) do
		RemoveItem(Player, BOX_OF_ALCHEMY_COMPONENTS)
	end
end

function Step1_Complete_Threat(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "My threats were successful! Melvin told me where I could find the alchemy compnents.")

	AddQuestStep(Quest, 2,  "I must recover the box of alchemy components. They are suppose to be near the enterance to the Thieve's Way.", 1, 100,  "I need to look for the stolen box of alchemy components.", 654)

	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_HaveBox")
end

function Step2_Complete_HaveBox(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I recovered the box of stolen alchemy components. I need to bring them to Vrim.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I recovered the box of stolen alchemy components. I need to bring them to Vrim.")
	
	AddQuestStepChat(Quest, 3, "I've recovered the box of stolen alchemy components. I need to bring them to Vrim.", 1, "I need to return the box of alchemy componenets to Vrim.", 654, 1260055)
	AddQuestStepCompleteAction(Quest, 3, "Step3_Quest_Complete")
end

function Step3_Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I've located the box of stolen alchemy components and returned them to Vrim. She is most pleased!")
	GiveQuestReward(Quest, Player)
	RemoveAlchemyComponents(Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_Threat(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_RecoBox(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_QuestComplete(Quest, QuestGiver, Player)
	end
end