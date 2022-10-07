--[[
    Script Name    : Quests/SouthQeynos/a_visit_to_the_tower_of_the_oracles.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.15 09:05:59
    Script Purpose : 

        Zone       : SouthQeynos
        Quest Giver: Eoradalanu Otuden
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to find the Tower of the Oracles.", 5, "I should see if I can locate the Tower of the Oracles out in the Antonican hills.", 11, -1033.25, 14.12, -627.10)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
    UpdateQuestZone(Quest,"Antonica")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/eoradalanu_otuden/qey_south/eoradalanuotuden003.mp3", "", "no", 1979895616, 4053136415, Player)
	AddConversationOption(conversation, "I'll keep that in mind.")
	StartConversation(conversation, QuestGiver, Player, "I doubt they appreciate visitors, so walk carefully if you plan on visiting their tower!  They do not tolerate dissruptions to their research.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I visited the Tower of the Oracles.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the Tower of the Oracles out in the Antonican hills.")

	UpdateQuestDescription(Quest, "I journeyed to the Tower of the Oracles and saw the structure first hand. It was an impressive tower but not as spectacular as the Three Towers in Qeynos, but can anything compare to that...?")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
