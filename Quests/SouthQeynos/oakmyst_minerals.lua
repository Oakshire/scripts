--[[
    Script Name    : Quests/SouthQeynos/oakmyst_minerals.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.14 07:05:17
    Script Purpose : 

        Zone       : SouthQeynos
        Quest Giver: Hegrenn
        Preceded by: None
        Followed by: 
--]]
function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to hunt Oakmyst royal defenders in Oakmyst Forest.", 3, 75, "I need to go to the Oakmyst Forest and slay some Oakmyst royal defenders to try to find some type of mineral.", 187, 8300017)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Oakmyst Forest")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Spawn)
    PlayFlavor(QuestGiver, "voiceover/english/blacksmith_hegrenn/qey_south/blacksmithhegrenn002.mp3", "", "ponder", 986701836, 3811375684, Player)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Several pieces got it.")
	StartConversation(conversation, QuestGiver, Player, "Ahh, work.  You don't say.  I heard a bit of gossip over at the tavern.  There's a rare stone mineral.  The Oakmyst royal defenders out in the forest have it, and I need several pieces.  Will you commit to this daring task, adventurer?  Remember, I need several pieces!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've gathered three pieces of an unknown mineral.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered the mineral Blacksmith Hegrenn was interested in.")
    UpdateQuestZone(Quest,"South Qeynos")
	AddQuestStepChat(Quest, 2, "Deliver the mineral to Blacksmith Hegrenn.", 1, "Blacksmith Hegrenn will want to see these minerals.  She was in the Bag 'n Barrel on the top floor in South Qeynos.", 187, 2310038)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've returned to Hegrenn with the minerals.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given Hegrenn the minerals she requested.  She seemed quite pleased about the discorvery, but asked me to keep it to myself.")

	UpdateQuestDescription(Quest, "There was more to all of this than just gossip. Sure enough I found an unknown mineral. Hegrenn was quite pleased, but asked me to keep the news to myself.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end