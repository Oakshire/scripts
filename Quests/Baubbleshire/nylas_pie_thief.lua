--[[
    Script Name    : Quests/Baubbleshire/nylas_pie_thief.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.11 01:01:26
    Script Purpose : 

        Zone       : Baubbleshire
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to gather coals from the fiery forgotten guardians in the Forest Ruins.", 2, 70, "I need to gather an everburning coal from the fiery forgotten guardians in the Forest Ruins.", 183, 1960019)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotGoal")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right already!")
	StartConversation(conversation, QuestGiver, Player, "Well? What are you waiting for? Go, go, GO!")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotGoal(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I gathered an everburning coal.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gathered the embers that Sage Xoort needed from the guardians.")
	UpdateQuestZone(Quest, "The Baubbleshire")	

	AddQuestStepChat(Quest, 2, "I need to speak with Sage Xoort in the Baubbleshire.", 1, "I need to speak with Sage Xoort and give him the embers I gathered.", 0, 2380023)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke with Sage Xoort in the Baubbleshire.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Sage Xoort all five embers that I gathered from the guardians.")
	UpdateQuestDescription(Quest, "I gathered the coals for Xoort's experimentation. Turns out to be a good thing that I did. Xoort gave me some coin for the job.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		quest_complete(Quest, QuestGiver, Player)
	end
end

--[[
function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to check out the Ringing Hammer smithy in the Baubbleshire for Nyla's pie thief.", 1, "I need to check the smithy for someone who may have taken the pie.", 0, 2380035)
	AddQuestStepCompleteAction(Quest, 1, "step_1_beentothesmithy")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I could look for the missing pie for you.", "Looking")
	AddConversationOption(conversation, "Afraid that pie is long gone.")
	StartConversation(conversation, QuestGiver, Player, "You see, the pie I baked earlier today, its missing! Not an uncommon event around here if you know what I mean. You'll always find a rummblin' belly around here, love.")

function Looking(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I could look for the missing pie for you.", "Looking")
	AddConversationOption(conversation, "Afraid that pie is long gone.")
	StartConversation(conversation, QuestGiver, Player, "You'd do that? Tell you what, you search for the missing pie and when you return I'll have a fresh baked pie waiting for you. Oh, and I'll give the culprit such a scolding he'll think twice before taking one of my pies!")

    
function Declined(Quest, QuestGiver, Player)

end

function quest_complete(Quest, QuestGiver, Player)

end

function Reload(Quest, QuestGiver, Player, Step)

end

