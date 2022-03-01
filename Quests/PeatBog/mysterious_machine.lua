--[[
	Script Name	: Quests/PeatBog/mysterious_machine.lua
	Script Purpose	: Handles the quest, \\\"Mysterious Machine\\\"
	Script Author	: Scatman
	Script Date	: 2009.05.10
	
	Zone       : The Peat Bog
	Quest Giver: Lieutenant Dawson
	Preceded by: Reclaiming the Bog (reclaiming_the_bog.lua)
	Followed by: Ambushed (ambushed.lua)
--]]


function Init(Quest)


	AddQuestStep(Quest, 1, "I need to find the machine in the water in the Peat Bog and attach the arcanic beacon.", 1, 100, "Lieutenant Dawson has asked that I find a machine that is supposedly in the water in the Peat Bog.", 0)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_PlacedBeacon")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	-- arcanic beacon
	if not HasItem(Player, 3476) then
		SummonItem(Player, 3476)
		SendMessage(Player, "You receive 1 arcanic beacon.", "yellow")
		SendPopUpMessage(Player, "You receive 1 arcanic beacon.", 255, 255, 255)
	end
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_dawson/qey_adv04_bog/quests/dawson/dawson007a.mp3", "", "", 3084758614, 2492710708, Player)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, QuestGiver, Player, "That should help the research teams find it when they do get the time. Thank you.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_PlacedBeacon(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have attached the arcanic beacon.")

	AddQuestStepChat(Quest, 2, "I need to return to Lieutenant Dawson near the gates to Nettleville hovel.", 1, "Lieutenant Dawson has asked that I find a machine that is supposedly in the water in the Peat Bog.", 0, 1980022) 
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- arcanic beacon
	while HasItem(Player, 3476) do
		RemoveItem(Player, 3476)
	end
	UpdateQuestDescription(Quest, "I have found the machine that Lieutenant Dawson heard about. While I was hooking the beacon up I was attacked by a gnoll. After killing the gnoll I was able to attach the beacon.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_PlacedBeacon(Quest, QuestGiver, Player)
	end
end
