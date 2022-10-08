--[[
    Script Name    : Quests/NorthQeynos/gnoll_extermination.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 06:05:33
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Sir Laughlin
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to gather ten gnoll ears.", 10, 80, "Laughlin's task requires that I return him the ears of ten full grown gnolls from Antonica.", 94, 120013,121193,120013,120092,120123,121269,120419,121195,120355,120015,121436,120363,120362,121223,120065,120184, 120376,120196,121335,120290,120858,120291, 120212, 120203, 121342, 121351)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Antonica")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Such an eager recruit! Bring me back the ears of ten gnolls.  That should be sufficient to bring their population down to a reasonable level for now.  You'll find them around the gates of the city, roaming like the dogs they are!")
	Dialog.AddVoiceover("voiceover/english/optional1/knight-lieutenant_laughlin/qey_north/quests/sirlaughlin/grd_laughlin_x1_accept.mp3", 3661162022, 1661118827)
	Dialog.AddOption("Yessir!  I'll have them running for their dens soon enough!")
	Dialog.Start()
end


function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have retrieved the ears I needed.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've acquired the ten gnoll ears Sir Laughlin asked me to.")
    UpdateQuestZone(Quest,"North Qeynos")

	AddQuestStepChat(Quest, 2, "Return to Sir Laughlin.", 1, "I need to return to Sir Laughlin in North Qeynos.", 94, 2220024)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke with Sir Laughlin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Sir Laughlin was suitably impressed with my prowess in defeating the gnolls.")

	UpdateQuestDescription(Quest, "Sir Laughlin commended me on my battle prowess!  I've taken my first steps into the greater world beyond the city.  Today Qeynos, tomorrow the world!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	elseif Step == 3 then
	end
end