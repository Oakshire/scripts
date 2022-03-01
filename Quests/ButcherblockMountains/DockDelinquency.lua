--[[
	Script Name		:	DockDelinquency.lua
	Script Purpose	:	Handles the quest, "Dock Delinquency"
	Script Author	:	jakejp
	Script Date		:	5/31/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Dockmaster Waulon
	Preceded by		:	None
	Followed by		:	None
--]]

local DockDelinquency = 249

function Accepted(Quest, QuestGiver, Player)
        FaceTarget(NPC, Player)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll begin at once!")
	StartConversation(conversation, QuestGiver, Player, "A number of the beasties that roam this 'ere coast have been causing problems 'ere and I don't have the time nor the manpower to resolve this issue by meself. Here, take this list an' see if you can keep the beasties in check.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Rustfiends have been eating the workers' tools! I need to thin their numbers a bit.", 4, 100, "Dockmaster Waulon has asked me to cull some of the local wildlife so they will stop interfering with the day to day business of the docks.", 611, 1080055, 1081092)
	AddQuestStepKill(Quest, 2, "Coastal basilisks have been chasing away the local fishermen! I must reduce their numbers.", 6, 100, "Dockmaster Waulon has asked me to cull some of the local wildlife so they will stop interfering with the day to day business of the docks.", 611, 1080054, 1081091)
	AddQuestStepKill(Quest, 3, "Aqua goblin runts have attacked many newcomers. They need to be taught a lesson!", 6, 100, "Dockmaster Waulon has asked me to cull some of the local wildlife so they will stop interfering with the day to day business of the docks.", 159, 1080347)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")

end

function CheckProgressDockDelinquency(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, DockDelinquency, 1) and QuestStepIsComplete(Player, DockDelinquency, 2) and QuestStepIsComplete(Player, DockDelinquency, 3) then
		FinalStepDockDelinquency(Quest, QuestGiver, Player)
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have reduced the number of rustfiends near the Butcherblock Docks.")
	CheckProgressDockDelinquency(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have reduced the number of coastal basilisks on the beach.")
	CheckProgressDockDelinquency(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have taught the aqua goblin runts a lesson they will never forget!")
	CheckProgressDockDelinquency(Quest, QuestGiver, Player)

end

function FinalStepDockDelinquency(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I successfully culled some of the local wildlife.")

	AddQuestStepChat(Quest, 4, "I need to speak with Dockmaster Waulon.", 1, "I need to let Dockmaster Waulon know I was successful at culling the list of creatures that were interferring with the dockworkers.", 11, 1080008)
	AddQuestStepCompleteAction(Quest, 4, "QuestCompleteDockDelinquency")
end

function QuestCompleteDockDelinquency(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I spoke with Dockmaster Waulon.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I spoke with Dockmaster Waulon.")

	UpdateQuestDescription(Quest, "I've 'trimmed' back the local wildlife population as per Dockmaster Waulon's request. Hopefully he won't have as many problems to deal with now. The Dockmaster was most appreciative of my efforts.")
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
		QuestCompleteDockDelinquency(Quest, QuestGiver, Player)
	end
end

