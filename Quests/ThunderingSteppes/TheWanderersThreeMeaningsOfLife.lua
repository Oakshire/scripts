--[[
    Script Name    : Quests/ThunderingSteppes/TheWanderersThreeMeaningsOfLife.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.11 07:07:40
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: The Wandering Augur (2490318)
        Preceded by: None
        Followed by: None
--]]

local STEP1_SERPENTS = 1
local STEP1_HAWKS = 2
local STEP1_GORGERS = 4

local STEP3_CRABS = 8
local STEP3_SIRENS = 16

local STEP5_CEMETERY = 32
local STEP5_LASTSTAND = 64
local STEP5_DECAY = 128

function Init(Quest)
	
end

function Step1Complete(Quest, QuestGiver, Player)
	local Flags = GetQuestFlags(Quest)
	if hasflag(Flags, STEP1_SERPENTS) then
		UpdateQuestStepDescription(Quest, 1, "I've slain a plains serpent.")
	elseif hasflag(Flags, STEP1_HAWKS) then
		UpdateQuestStepDescription(Quest, 1, "I've slain an elder hawk.")
	elseif hasflag(Flags, STEP1_GORGERS) then
		UpdateQuestStepDescription(Quest, 1, "I've slain a carrion gorger.")
	end
	
	AddQuestStepChat(Quest, 2, "I must speak with the Wandering Augur.", 1, "The Wandering Augur is teaching me three meanings of life.", 11, 2490318)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	local step3 = math.random(1, 2)
	local Flags = GetQuestFlags(Quest)
	if step3 == 1 then
		Flags = Flags + STEP3_CRABS
	elseif step3 == 2 then
		Flags = Flags + STEP3_SIRENS
	end
	
	SetStep3Description(Quest, step3)
	SetQuestFlags(Quest, Flags)
end

function SetStep3Description(Quest, step3)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with the Wandering Augur.")
	if step3 == 1 then
		AddQuestStepKill(Quest, 3, "Learn inner strength by hunting large shore crabs in the Thundering Steppes.", 5, 100, "The Wandering Augur is teaching me three meanings of life.", 86, 2490280)
	elseif step3 == 2 then
		AddQuestStepKill(Quest, 3, "Learn inner strength by hunting irresistible sirens in the Thundering Steppes.", 5, 100, "The Wandering Augur is teaching me three meanings of life.", 86, 2490117)
	end
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function CheckStep3Bitmask(Quest)
	local step3 = 0
	local Flags = GetQuestFlags(Quest)
	if hasflag(Flags, STEP3_CRABS) then
		step3 = 1
	elseif hasflag(Flags, STEP3_SIRENS) then
		step3 = 2
	end
	
	SetStep3Description(Quest, step3)
end

function Step3Complete(Quest, QuestGiver, Player)
	local Flags = GetQuestFlags(Quest)
	if hasflag(Flags, STEP3_CRABS) then
		UpdateQuestStepDescription(Quest, 3, "I've slain some large shore crabs.")
	elseif hasflag(Flags, STEP3_SIRENS) then
		UpdateQuestStepDescription(Quest, 3, "I've slain some irresistible sirens.")
	end
	
	AddQuestStepChat(Quest, 4, "I must speak with the Wandering Augur.", 1, "The Wandering Augur is teaching me three meanings of life.", 11, 2490318)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	local step5 = math.random(1, 3)
	local Flags = GetQuestFlags(Quest)
	if step5 == 1 then
		Flags = Flags + STEP5_CEMETERY
	elseif step5 == 2 then
		Flags = Flags + STEP5_LASTSTAND
	elseif step5 == 3 then
		Flags = Flags + STEP5_DECAY
	end
	
	SetStep5Description(Quest, step5)
	SetQuestFlags(Quest, Flags)
end

function SetStep5Description(Quest, step5)
	UpdateQuestStepDescription(Quest, 4, "I've spoken with the Wandering Augur.")
	
	if step5 == 1 then
		AddQuestStepLocation(Quest, 5, "I've seen the Coldwind Shores Cemetery.", 20, "The Wandering Augur is teaching me three meanings of life.", 11, 1317, -6, -80)
	elseif step5 == 2 then
		AddQuestStepLocation(Quest, 5, "I need the patience to find the Last Stand in the Thundering Steppes.", 20, "The Wandering Augur is teaching me three meanings of life.", 11, -380, 6, 761)
	elseif step5 == 3 then
		AddQuestStepLocation(Quest, 5, "I've located the Shrine of Decay.", 20, "The Wandering Augur is teaching me three meanings of life.", 11, 357, 5, 1189)
	end
	
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function CheckStep5Bitmask(Quest)
	local step5 = 0
	local Flags = GetQuestFlags(Quest)
	if hasflag(Flags, STEP5_CEMETERY) then
		step5 = 1
	elseif hasflag(Flags, STEP5_LASTSTAND) then
		step5 = 2
	elseif hasflag(Flags, STEP5_DECAY) then
		step5 = 3
	end
	
	SetStep5Description(Quest, step5)
end

function Step5Complete(Quest, QuestGiver, Player)
	local Flags = GetQuestFlags(Quest)
	if hasflag(Flags, STEP5_CEMETERY) then
		UpdateQuestStepDescription(Quest, 5, "I've seen the Coldwind Shores Cemetery.")
	elseif hasflag(Flags, STEP5_LASTSTAND) then
		UpdateQuestStepDescription(Quest, 5, "I've located the Last Stand.")
	elseif hasflag(Flags, STEP5_DECAY) then
		UpdateQuestStepDescription(Quest, 5, "I've located the Shrine of Decay.")
	end
	
	AddQuestStepChat(Quest, 6, "I must speak with the Wandering Augur.", 1, "The Wandering Augur is teaching me three meanings of life.", 11, 2490318)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/the_wandering_augur/steppes/quests/quest_wandering_augur/wandering_augur003.mp3", "", "", 430514653, 1419831869, Player)
	AddConversationOption(conversation, "Well, okay.")
	StartConversation(conversation, QuestGiver, Player, "Splendid!  There are three meanings to which I can lead you, my child.  What you take from them is your choice; I am but the augur.  The first meaning is physical.  Without a corporeal body, how can we experience life?  Go, then, and seek the physicality of life as I have written down for you.  Return to me when you are ready for the next meaning.")
	
	local Flags = GetQuestFlags(Quest)
	if Flags == 0 then
		local step1 = math.random(1, 3)
		if step1 == 1 then
			Flags = Flags + STEP1_SERPENTS
		elseif step1 == 2 then
			Flags = Flags + STEP1_HAWKS
		elseif step1 == 3 then
			Flags = Flags + STEP1_GORGERS
		end
		
		SetStep1Description(Quest, step1)
		SetQuestFlags(Quest, Flags)
	else	
		CheckStep1Bitmask(Quest)
	end
end

function SetStep1Description(Quest, step1)
	if step1 == 1 then
		AddQuestStepKill(Quest, 1, "Learn the physical meaning of life by hunting plains serpents in the Thundering Steppes.", 3, 100, "The Wandering Augur is teaching me three meanings of life.", 98, 2490110)
	elseif step1 == 2 then
		AddQuestStepKill(Quest, 1, "Learn physical meaning of life by hunting elder hawks in the Thundering Steppes.", 3, 100, "The Wandering Augur is teaching me three meanings of life.", 98, 2490108)
	elseif step1 == 3 then
		AddQuestStepKill(Quest, 1, "Learn the physical meaning of life by hunting carrion gorgers in the Thundering Steppes.", 3, 100, "The Wandering Augur is teaching me three meanings of life.", 98, 2490118)
	end
	
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function CheckStep1Bitmask(Quest)
	local step1 = 0
	local Flags = GetQuestFlags(Quest)
	if hasflag(Flags, STEP1_SERPENTS) then
		step1 = 1
	elseif hasflag(Flags, STEP1_HAWKS) then
		step1 = 2
	elseif hasflag(Flags, STEP1_GORGERS) then
		step1 = 3
	end
	
	SetStep1Description(Quest, step1)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function hasflag(flags, flag)
	return flags % (2*flag) >= flag
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 0 then
		CheckStep1Bitmask(Quest)
	elseif Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		CheckStep3Bitmask(Quest)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		CheckStep5Bitmask(Quest)
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	end
end
