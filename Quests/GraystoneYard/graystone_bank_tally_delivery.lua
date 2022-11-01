--[[
	Script Name		:	graystone_bank_tally_delivery.lua
	Script Purpose	:	Handles the quest, "Graystone Bank Tally Delivery"
	Script Author	:	Dorbin
	Script Date		:	3/11/2022
	Script Notes	:	

	Zone			:	Graystone Yard
	Quest Giver		:	Dori
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Robert Newbury.", 1, "I must speak with Robert Newbury at the Qeynos Exchange in the harbor district.", 75, 2210106,2210223)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	UpdateQuestZone(Quest, "Qeynos Harbor")
end


function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Make sure Robert Newbury recieves this tally directly.  You'll find him in the Qeynos Exchange at the harbor. Now, this needs to be delivered right away, so no dawdling!")
	Dialog.AddVoiceover("voiceover/english/banker_dori/qey_village03/bankerdori001.mp3", 161424087,848076549)
	PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("You got it, Dori.")
    Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Robert Newbury.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've given the tally to Robert Newbury in the Qeynos Exchange.")
	UpdateQuestZone(Quest, "Graystone Yard")
	AddQuestStepChat(Quest, 2, "I need to return to Dorin in Graystone.", 1, "I must deliver this message back to Banker Dori in Graystone Yard.", 1223, 2350026)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've returned to Banker Dori.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given the message to Dori in Graystone's Qeynos Exchange.")

	UpdateQuestDescription(Quest, "I've returned to Dori with the letter from banker Newbury about the impending inventory of her bank. It seems to me that if she hired better help than Jalan, she'd be doing herself a favor.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


