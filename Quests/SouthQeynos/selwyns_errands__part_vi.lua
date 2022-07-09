--[[
	Script Name		:	selwyns_errands_-_part_vi.lua
	Script Purpose	:	Handles the quest, "Selwyn's Errands - Part VI"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Qeynos
	Quest Giver		:	Selwyn
	Preceded by		:	Selwyn's Errands - Part V
	Followed by		:	None
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must recover the blessed leather of Steelhoof mystics in the Thundering Steppes", 12, 100, "I'm sorry to make you travel so far out of your way but I have some things that need doing up in the Thundering Steppes again.  Could you get me some of the blessed leather the Steelhoof mystics sometimes have on them?  Also I need some griffawn feathers for some new quill pens.  Oh, and the highland huntresses are getting a little out of hand up there, could you thin them out a little?  And lastly there's Shadowdash.  A griffin that I've seen a time or two while visiting relatives out near mirror lake.  He's gotten a little too bold and is attacking any passerby to those rocks where he roosts near the lake, you might start there.  Be careful, he's an old crafty bird, you might want some friends. - Selwyn", 754, 2490068)
	AddQuestStepKill(Quest, 2, "I must recover perfect griffin feathers from the griffawns in Thundering Steppes", 8, 100, "I'm sorry to make you travel so far out of your way but I have some things that need doing up in the Thundering Steppes again.  Could you get me some of the blessed leather the Steelhoof mystics sometimes have on them?  Also I need some griffawn feathers for some new quill pens.  Oh, and the highland huntresses are getting a little out of hand up there, could you thin them out a little?  And lastly there's Shadowdash.  A griffin that I've seen a time or two while visiting relatives out near mirror lake.  He's gotten a little too bold and is attacking any passerby to those rocks where he roosts near the lake, you might start there.  Be careful, he's an old crafty bird, you might want some friends. - Selwyn", 150, 2490054)
	AddQuestStepKill(Quest, 3, "I must thin the numbers of highland huntresses within the Thundering Steppes.", 10, 100, "I'm sorry to make you travel so far out of your way but I have some things that need doing up in the Thundering Steppes again.  Could you get me some of the blessed leather the Steelhoof mystics sometimes have on them?  Also I need some griffawn feathers for some new quill pens.  Oh, and the highland huntresses are getting a little out of hand up there, could you thin them out a little?  And lastly there's Shadowdash.  A griffin that I've seen a time or two while visiting relatives out near mirror lake.  He's gotten a little too bold and is attacking any passerby to those rocks where he roosts near the lake, you might start there.  Be careful, he's an old crafty bird, you might want some friends. - Selwyn", 611, 2490043)
	AddQuestStepKill(Quest, 4, "I need to kill an old griffin named Shadowdash.  I should look around the rocks where he normally roosts near Mirror Lake in the Thundering Steppes.", 1, 100, "I'm sorry to make you travel so far out of your way but I have some things that need doing up in the Thundering Steppes again.  Could you get me some of the blessed leather the Steelhoof mystics sometimes have on them?  Also I need some griffawn feathers for some new quill pens.  Oh, and the highland huntresses are getting a little out of hand up there, could you thin them out a little?  And lastly there's Shadowdash.  A griffin that I've seen a time or two while visiting relatives out near mirror lake.  He's gotten a little too bold and is attacking any passerby to those rocks where he roosts near the lake, you might start there.  Be careful, he's an old crafty bird, you might want some friends. - Selwyn", 11, 2490841)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
    UpdateQuestZone(Quest,"Thundering Steppes")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
    Dialog.AddDialog( "I'll be a little sad to see you go, I have to say, when you're done.  But younger adventurers such as yourself don't need to spend time doing errands for old druids like me.  Hrm... where did I put that list? Oh yes, here we are.  I'm almost finished with that last piece.  And I added a few of my own touches to it.  See you soon.  Ta ta!")
--	Dialog.AddVoiceover("voiceover/english/selwyn_oakheart/qey_south/quests/selwyn_oakheart/selwyn001.mp3", 390832885, 49061382)
	PlayFlavor(QuestGiver,"","","sad", 0, 0, Player)
	Dialog.AddOption( "Have no doubts the materials will be perfect.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have recovered the blessed leather of Steelhoof mystics in the Thundering Steppes")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have recovered perfect griffin feathers from the griffawns in Thundering Steppes")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have thined the numbers of highland huntresses within the Thundering Steppes.")
    CheckProgress(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have found and killed Shadowdash.")
    CheckProgress(Quest, QuestGiver, Player)
end	
	

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5611, 1) and QuestStepIsComplete(Player, 5611, 2) and QuestStepIsComplete(Player, 5611, 3) and QuestStepIsComplete(Player, 5611, 4) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I have finished Selwyn's errands I should return to her.")
    UpdateQuestZone(Quest,"South Qeynos")
	AddQuestStepChat(Quest, 5, "I should return to Selwyn in South Qeynos.", 1, "I need to speak to Selwyn Oakheart in the South Qeynos.", 11, 2310028)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end
end	


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have returned to Selwyn in South Qeynos.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Selwyn in South Qeynos.")

	UpdateQuestDescription(Quest, "Selwyn has paid me with some armor for my chest.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

