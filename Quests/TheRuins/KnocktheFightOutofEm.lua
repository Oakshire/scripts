--[[
	Script Name		:	KnocktheFightOutofEm.lua
	Script Purpose	:	Handles the quest, "Knock the Fight Out of 'Em"
	Script Author	:	jakejp
	Script Date		:	12/28/2018
	Script Notes	:	

	Zone			:	The Ruins
	Quest Giver		:	Lieutenant Imperidus 
	Preceded by		:	Stepping Up The Offensive
	Followed by		:	Vengeance For Shoreside
--]]

local KnocktheFightOutofEm = 392

local LieutenantImperidus = 1270031

local OrcCauldron = 1270075
local OrcKnight = 1270076
local WorshipIdol = 1270074
local WineCask = 1270073

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Throw dirt in the orcs' dinner pot", 1, 100, "I must seek out the symbols in the Ruins that the orcs use to inspire themselves. Then I will defile these objects to crush their spirits.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 650, OrcCauldron)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepObtainItem(Quest, 2, "Deface the statue of an orc knight", 1, 100, "I must seek out the symbols in the Ruins that the orcs use to inspire themselves. Then I will defile these objects to crush their spirits.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 1214, OrcKnight)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepObtainItem(Quest, 3, "Deface a Lonetusk worship idol", 1, 100, "I must seek out the symbols in the Ruins that the orcs use to inspire themselves. Then I will defile these objects to crush their spirits.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 1058, WorshipIdol)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepObtainItem(Quest, 4, "Poke a hole in the orcs' wine cask", 1, 100, "I must seek out the symbols in the Ruins that the orcs use to inspire themselves. Then I will defile these objects to crush their spirits.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 2287, WineCask)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, KnocktheFightOutofEm, 1) and QuestStepIsComplete(Player, KnocktheFightOutofEm, 2) and QuestStepIsComplete(Player, KnocktheFightOutofEm, 3) and QuestStepIsComplete(Player, KnocktheFightOutofEm, 4) then
		NextStep(Quest, QuestGiver, Player)
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I threw dirt in the orcs' dinner pot. Take that, orcs!")
	CheckProgress(Quest, QuestGiver, Player)
	
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have defaced the statue of an orc knight.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have defaced an idol that the Lonetusk seem to worship.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I poked a hole in the orcs' wine cask. Now they'll be thirsty!")
	CheckProgress(Quest, QuestGiver, Player)
end

function NextStep(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I found and defaced many objects the orcs hold dear. Hopefully this takes the fight out of them.")

	AddQuestStepChat(Quest, 5, "Report to Lieutenant Imperidus", 1, "Having defaced the orc artifacts, I should return to Lieutenant Imperidus at the second outpost in the Ruins.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 11, LieutenantImperidus)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have reported back to Lieutenant Imperidus.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have reported back to Lieutenant Imperidus.")

	UpdateQuestDescription(Quest, "I followed the orders of Lieutenant Imperidus, defacing statues the Lonetusk orcs use to inspire their troops. I also threw dirt into their food and drained their supply of wine. Hopefully the lieutenant's plan will work and my actions will have takens some of the fight out of the orcs.")
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

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus009.mp3", "", "", 3046376303, 2999823619, Player)
	AddConversationOption(conversation, "Do you really think wrecking statues and ruining food is going to ensure victory?", "dlg_3_8")
	AddConversationOption(conversation, "I'll get to it.")
	StartConversation(conversation, QuestGiver, Player, "Our surest path to victory is to take the fight out of them. Go out there and face the Lonetusk, and deface any statues you see. Seek out their supplies of food and drink and spoil them. Without symbols of victory to inspire them and food in their bellies, their spirits will crumble and they will become easy pickings for us.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end