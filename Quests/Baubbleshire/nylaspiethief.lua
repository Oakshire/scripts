--[[
    Script Name    : Quests/Baubbleshire/nylas_pie_thief.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.11 01:01:26
    Script Purpose : 

        Zone       : Baubbleshire
        Quest Giver: Nyla Diggs
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepZoneloc(Quest, 1, "I must check 'The Ringing Hammer' smithy.", 5, "I need to check the smithy for someone who may have taken the pie", 0, 850.34, -18.22, -514.64, 238)
	AddQuestStepCompleteAction(Quest, 1, "step1beentothesmithy")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I'll be back once I look around!")
 StartConversation(conversation, NPC, Spawn, "You'd do that? Tell you what - you search for the missing pie and when you return I'll have a fresh baked pie waiting for you. I'll give the culprit such a scolding they'll think twice before taking one of my pies.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function step1beentothesmithy(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I checked 'The Ringing Hammer'")
	UpdateQuestTaskGroupDescription(Quest, 1, "I checked the smithy, but found no one who took the pie")

	AddQuestStepChat(Quest, 2, "I need to check 'The Qeynos Exchange'.", 5, "I need to check the bank for someone who may have taken the pie", 0, 895.18, -18.01, -480.29, 238)
	AddQuestStepCompleteAction(Quest, 2, "step2beentobank")
end

function step1beentothesmithy(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I checked 'The Qeynos Exchange'")
	UpdateQuestTaskGroupDescription(Quest, 2, "I checked the bank, but found no one who took the pie")

	AddQuestStepChat(Quest, 3, "I need to investigate 'The Deepmug Tavern'.", 5, "I need to check the tavern for someone who may have taken the pie", 0, 880.47, -18.31, -443.50, 238)
	AddQuestStepCompleteAction(Quest, 3, "step3deepmug")
end

function step1beentothesmithy(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I smell the pie in 'The Deepmug Tavern'")
	UpdateQuestTaskGroupDescription(Quest, 3, "I smell the pie coming from someone in The Deepmug Tavern")

	AddQuestStepChat(Quest, 4, "I need to investigate 'The Deepmug Tavern'.", 5, "I need to check the tavern for someone who may have taken the pie", 0, 880.47, -18.31, -443.50, 238)
	AddQuestStepCompleteAction(Quest, 4, "step3deepmug")
end

function step1beentothesmithy(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I smell the pie in 'The Deepmug Tavern'")
	UpdateQuestTaskGroupDescription(Quest, 4, "I smell the pie coming from someone in The Deepmug Tavern")

	AddQuestStepChat(Quest, 5, "I need to investigate 'The Deepmug Tavern'.", 1, "I need to check the tavern for someone who may have taken the pie", 0, 2380030)
	AddQuestStepCompleteAction(Quest, 5, "ThiefFound")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've told Nyla about her lost pie.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I've uncovered Nyla's pie thief and told Nyla who did it.")

	UpdateQuestStepDescription(Quest, "I told Nyla about her lost pie. I guess the thief was Lozoria over in the Deepmug tavern. Couldn't resist he said! Oh well, it seems like everything's all right though. ")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
			elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
					elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
					elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
end

end
