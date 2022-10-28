--[[
    Script Name    : Quests/CastleviewHamlet/new_etching_tool_for_froptubs_smithy.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.26 02:01:42
    Script Purpose : 

        Zone       : CastleviewHamlet
        Quest Giver: Armsdealer Froptub
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Apprentice Boggi.", 1, "I need to search Castleview for Armsdealer Froptub's apprentice, Boggi, and see if he has the new etching tool.", 0, 2360038)
	AddQuestStepCompleteAction(Quest, 1, "FoundBoggi")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Grammarcy!  I shall be able to finish up these orders and get the grumbling elves off mine doorstep.")
	Dialog.AddVoiceover("voiceover/english/armsdealer_froptub/qey_village04/armsdealerfroptub001.mp3",2191302103, 1711619713)
 	PlayFlavor(QuestGiver, "", "", "bow", 0,0 , Player)
   Dialog.AddOption("Your apprentice shouldn't be too hard to find, I'll be back soon.")
   Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function FoundBoggi(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I received the new etching tool from Boggi.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to get the new etching tool from Boggi.  Apparently he 'injured' himself.")

	AddQuestStepChat(Quest, 2, "I need to return to Froptub.", 1, "I need to return the etching tool to Froptub and inform him about his apprentice.", 710, 2360018)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
UpdateQuestStepDescription(Quest, 2, "I returned to Froptub.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Froptub his new etching tool and told him about Boggi's 'injury'.")
	
	UpdateQuestDescription(Quest, "I was able to help Arms Dealer Froptub get back to work by finding his apprentice Boggi and returning the new etching tool. I really doubt Boggi's leg injury story...")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		FoundBoggi(Quest, QuestGiver, Player)
	end
	if Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end