--[[
    Script Name    : Quests/Antonica/exploring_the_chessboard.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.24 05:08:36
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I must find the chessboard floor in Stormhold.", 10, "I should venture into the Stormhold to see if this giant chessboard floor exists.", 0,  70, -5, -100, 15)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Stormhold")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the chessboard floor in Stormhold.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I saw the remarkable chessboard in the Stormhold.")
    UpdateQuestZone(Quest,"Antonica")
	AddQuestStepChat(Quest, 2, "I must speak with Breeza Harmet.", 1, "I should return to Breeza Harmet at Windstalker Pond in Antonica and tell her of the giant chessboard.", 0, 120159)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end	

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Oh no, not I.  I'm not an adventurer like you. I'm a mere fletcher who enjoys a good game of chess. Unfortunately, the banquet hall is within Stormguard, the legendary home of the Knights of Thunder. If you come across the fortress in your travels, would you return to me and let me know if the chessboard hall truly exists?")
	Dialog.AddVoiceover("voiceover/english/breeza_harmet/antonica/breezaharmet002.mp3", 3534908306, 1371562053)
	PlayFlavor(QuestGiver, "", "", "no", 0, 0, Player)
	Dialog.AddOption("Most call it Stormhold. I have heard tales of it. If I see this giant chessboard, I will return to tell you.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)

end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Breeza Harmet.")
		UpdateQuestTaskGroupDescription(Quest, 2, "I told Breeza Harmet of the chessboard in Stormhold.")
			UpdateQuestDescription(Quest, "Upon exploring Stormhold I was able to find the chessboard which Breeza had spoken of. It does seem the Knights of Thunder held banquets here but why on a chessboard? Maybe there is more to this unique room...")
				GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

