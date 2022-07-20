--[[
    Script Name    : Quests/QeynosHarbor/ians_forgetful_family__part_i.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.15 04:06:50
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: Ian Cathlan
        Preceded by:  None
        Followed by:  Ian's Forgetful Family - Part II
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Ian's brother lost the royal spades out of his deck of cards while fighting Sabertooth tormentors in Antonica.", 4, 100, "My brother, being the ever present adventurer that he is, happened to lose an entire suit of spades from the deck of cards we gave him for his birthday.  He was out fighting Sabertooth tormentors in Antonica when he lost them.  If you could look around them it's probably a good start.  And I happened to lose my journal fighting undead knights near the Caltorsis ruins.  If you could try and recover what you can of my missing pages I'd very much appreciate it. - Ian", 2298, 121450,121451,120380,120381)
	AddQuestStepKill(Quest, 2, "I should try and collect the pages from Caltorsis knights out of Ian's old journal in Antonica.", 20, 100, "My brother, being the ever present adventurer that he is, happened to lose an entire suit of spades from the deck of cards we gave him for his birthday.  He was out fighting Sabertooth tormentors in Antonica when he lost them.  If you could look around them it's probably a good start.  And I happened to lose my journal fighting undead knights near the Caltorsis ruins.  If you could try and recover what you can of my missing pages I'd very much appreciate it. - Ian", 2179, 120126,120126)
    UpdateQuestZone(Quest, "Antonica")
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("I've a list of places where I may have misplaced a few things. Check the area to see if you can find anything. ")
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan004.mp3", 4043265445, 3117554557)
	Dialog.AddOption("I'll return if I find anything.")
	Dialog.Start()end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the cards Ian's brother lost.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have the missing pages Ian lost, though they are all a bit mangled.")
    CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5588, 1) and QuestStepIsComplete(Player, 5588, 2) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have recovered Ian's lost journal pages and missing cards.  I should return to him.")
    UpdateQuestZone(Quest, "Qeynos Harbor")
	AddQuestStepChat(Quest, 3, "I should return to Ian in Qeynos Harbor.", 1, "I need to speak to Ian Cathlan in the Qeynos Harbor.", 11, 2210084)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have returned to Ian in Qeynos Harbor.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Ian in Qeynos Harbor.")

	UpdateQuestDescription(Quest, "Ian has rewarded me with armor for collecting a few of his lost family's possessions.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

