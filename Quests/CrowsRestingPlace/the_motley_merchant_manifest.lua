--[[
    Script Name    : Quests/CrowsRestingPlace/the_motley_merchant_manifest.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.04 06:10:54
    Script Purpose : Handles the quest, "The Motley Merchant Manifest"

        Zone       : CrowsRestingPlace
        Quest Giver: Fippy Darkpaw the 4th
        Preceded by: None
        Followed by: 
--]]



function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Fippy", 1, "I need to pay attention to Fippy Darkpaw.", 11, 2020003)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	PlayFlavor(QuestGiver, "voiceover/english/fippy_darkpaw,_the_4th/qey_catacomb_epic01/fippydarkpaw006.mp3", "", "", 2198522684, 4136693998, Player)
	AddConversationOption(conversation, "Fine. What's the task.", "task")
	StartConversation(conversation, QuestGiver, Player, "I'll make a deal with you, scuffler ... you perform a little task for me,  and I'll feed you a few more crumbs to whet your appetite.")
	if not HasItem(Player, 9897) then
	GiveQuestItem(Quest, Player, "I listened to Fippy Darkpaw's instructions.", 9897)
end
   end






function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Spoke to Fippy.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I listened to Fippy Darkpaw's instructions.")

	AddQuestStep(Quest, 2, "Read all of the manifest", 1, 100, "I must read the entire Motley Merchant Manifest given to me by Fippy Darkpaw.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Read all of the manifest.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I read the Motley Merchant Manifest.")

	AddQuestStepChat(Quest, 3, "Speak to G.P.", 1, "I must speak to a G.P. in a shop hinted at by the symbol in the manifest, a quill overlapping an ink jar.", 11, 2380003, 6600257)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Spoke to Gornit Penwiggle.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I had Gornit Penwiggle of the Qeynos Province District shop called Qeynos Linguistics sign the manifest.")

	AddQuestStepChat(Quest, 4, "Speak to P.B.", 1, "I must speak to a P.B. in one of the local establishments, the one hinted at by the symbol of a trinket being passed from one hand to another.", 11, 2340024, 6600239)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Spoke to Blagard.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I had Proprietor Blagard of the Collector's Trove in the Qeynos Province District sign the manifest.")

	AddQuestStepChat(Quest, 5, "Speak to K.I.", 1, "I must speak to a K.I. in one of the local establishments, the one hinted at by a symbol of a fish swimming out of a mug of ale.", 11, 2350021, 6600220)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "Spoke to Icemoore")
	UpdateQuestTaskGroupDescription(Quest, 5, "I had Icemoore of the Qeynos Province District tavern called Fish's Alehouse and Inn sign the manifest.")

	AddQuestStepChat(Quest, 6, "Speak to B.M.", 1, "I must speak to a B.M. in one of the local establishments, the one hinted at by the symbol of a mermaid holding a stein.", 11, 2210042, 6600287)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "Spoke to Borden.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I had Bartender Borden Mannus of the Qeynos Harbor tavern called The Mermaid's Lure sign the manifest.")

	AddQuestStepChat(Quest, 7, "Speak to P.I.", 1, "I must speak to a P.I. in one of the local establishments, the one hinted at by the symbol of dwarven warhammer inside a compass pointing eastward.", 11, 2220101, 5890362)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "Spoke to P.T. Irontoe.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I had P.T. Irontoe of the North Qeynos tavern called Irontoe's East sign the manifest.")

	AddQuestStepChat(Quest, 8, "Speak to Fippy Darkpaw", 1, "I must return to the Down Below secret lair of Fippy Darkpaw and bring him the manifest.", 11, 2020003)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "Spoke to Fippy Darkpaw.")
	UpdateQuestTaskGroupDescription(Quest, 8, "I returned to the Down Below secret lair of Fippy Darkpaw.")

	UpdateQuestDescription(Quest, "I have supplied Fippy Darkpaw with the Motley Merchant Manifest. He has rewarded me and noted that should I attempt to report him to the Qeynos Guard he will have me framed as an associate of his illegal thieves band.")
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
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

