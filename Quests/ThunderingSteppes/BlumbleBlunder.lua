--[[
    Script Name    : Quests/ThunderingSteppes/BlumbleBlunder.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.07 08:07:18
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: Blerton Blumble (2490025)
        Preceded by: Watch your step in The Thundering Steppes, Part I
        Followed by: Search for Grandma Blumble
--]]

local WatchYourStepInTSPartI = 99

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Look for some sign of Grandpa Blumble on the beaches north of the docks.", 1, "I must check the beaches north of the docks for some trace of Grandpa Blumble.", 11, 4490008)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Grandpa Blumble in a cave on the beaches north of the docks.")

	AddQuestStepChat(Quest, 2, "Return to Blerton Blumble.", 1, "I must return to Blerton Blumble and inform him that I have found Grandpa Blumble.", 11, 2490025)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, NPC, Spawn, "Thank you very much. Grandpa sometimes gets it into his head to go searching for pirate treasure. None of us are quite sure why, but the whole family worries about him. He has a knack for getting lost. Last time we found him he had fallen asleep digging over on the beach to the north of the docks here and we've been wondering when he'd try it again. You can't miss it, he always marks his dig with a big 'X'.")

	-- Advance step 1 of Watch Your Step in The Thundering Steppes, Part I
	SetStepComplete(Player, WatchYourStepInTSPartI, 1)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	end
end
