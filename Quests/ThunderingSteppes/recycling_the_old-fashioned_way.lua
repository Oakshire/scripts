--[[
    Script Name    : Quests/ThunderingSteppes/recycling_the_old-fashioned_way.lua
    Script Author  : Patrick_Boyd
    Script Date    : 2020.09.07
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: Green Stiles 
        Preceded by: None
        Followed by: 
--]]

local STEP1_ANTELOPE = 1
local STEP1_LIONESS = 2
local STEP1_SIREN = 4

function Init(Quest)
	SetQuestFeatherColor(Quest, 1)
	SetQuestRepeatable(Quest)
end

function Step1Complete(Quest, QuestGiver, Player)
	local Flags = GetQuestFlags(Quest)
	if hasflag(Flags, STEP1_ANTELOPE) then
		UpdateQuestStepDescription(Quest, 1, "Got five antelope bones.")
	elseif hasflag(Flags, STEP1_LIONESS) then
		UpdateQuestStepDescription(Quest, 1, "Got five highland lioness bones.")
	elseif hasflag(Flags, STEP1_SIREN) then
		UpdateQuestStepDescription(Quest, 1, "Got five entrancing siren bones.")
	end
	AddQuestStepChat(Quest, 2, "I need to speak with Grenn Stiles.", 1, "Take the bones back to Grenn in the Thundering Steppes.", 11, 2490174)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right, I'll be back")
	StartConversation(conversation, QuestGiver, Player, "Oh, the price is right, my friend! It's free! And I'll even pay you for your work! I need a variety of bones: some antelope, huntress and siren bones for a sort of 'surf and turf' fertilizer. The Steppes abound with these creatures. Think of this as recycling. We're helping the environment, eh?")
	local Flags = GetQuestFlags(Quest)
	if Flags == 0 then
		local step1 = math.random(1, 3)
		if step1 == 1 then
			Flags = Flags + STEP1_ANTELOPE
		elseif step1 == 2 then
			Flags = Flags + STEP1_LIONESS
		elseif step1 == 3 then
			Flags = Flags + STEP1_SIREN
		end
		
		SetStep1Description(Quest, step1)
		SetQuestFlags(Quest, Flags)
	else	
		CheckStep1Bitmask(Quest)
	end
end

function SetStep1Description(Quest, step1)
	if step1 == 1 then
		AddQuestStepKill(Quest, 1, "Get five young antelope bones in the Thundering Steppes.", 5, 100, "Get various bones for Grenn's fertilizer mix.", 418, 2490047)
	elseif step1 == 2 then
		AddQuestStepKill(Quest, 1, "Get five highland lioness bones in the Thundering Steppes.", 5, 100, "Get various bones for Grenn's fertilizer mix.", 322, 2490043)
	elseif step1 == 3 then
		 AddQuestStepKill(Quest, 1, "Get five entrancing siren bones in the Thundering Steppes.", 5, 100, "Get various bones for Grenn's fertilizer mix.", 322, 2490245)
	end
	
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end


function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function hasflag(flags, flag)
	return flags % (2*flag) >= flag
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	end
end

