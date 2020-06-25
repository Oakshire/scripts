--[[
    Script Name    : Quests/ThunderingSteppes/HuntingForTrapperBorgus.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.03 08:07:38
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

local beetles = 1
local crabs = 2
local antelope = 4
local snakes = 8

local kill8 = 16
local kill9 = 32
local kill10 = 64
local kill11 = 128
local kill12 = 256

function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
end

function FinishedKilling(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I've slain quite a few of the local Steppes creatures, this should be enough for the needed provisions.")
	AddQuestStepChat(Quest, 6, "I should return to Trapper Borgus on the road to Antonica in the Thundering Steppes.", 1, "I should report back to Trapper Borgus.", 11, 2490327)
	AddQuestStepCompleteAction(Quest, 6, "CompleteQuest")
	SetCompleteFlag(Quest)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	if GetTempVariable(Player, "RepeatHuntingForTrapperBorgus") == "true" then
		-- agree to do it again after turn in
		PlayFlavor(QuestGiver, "voiceover/english/trapper_borgus/steppes/trapper_borgus005.mp3", "", "", 3731275829, 2804607060, Player)
		AddConversationOption(conversation, "No problem.")
		StartConversation(conversation, QuestGiver, Player, "Righto, I need yeh to slay some more beasts for me.")
	else
		PlayFlavor(QuestGiver, "voiceover/english/trapper_borgus/steppes/trapper_borgus002.mp3", "", "", 2714498539, 3912364452, Player)
		AddConversationOption(conversation, "I'm ready to hunt.")
		StartConversation(conversation, QuestGiver, Player, "I thank yeh, and me back thanks yeh!  I just need several of each kind o' Steppes beasts that wander in these parts, they should provide enough food for the coming months!  Slay them n' bring their bodies to me.")
	end
	
	SetTempVariable(Player, "RepeatHuntingForTrapperBorgus", nil)
	
	if GetQuestFlags(Quest) == 0 then
		-- needs to be in accept to make it random per person
		local mob_type = math.random(1, 4) -- what to kill
		local quantity = math.random(8, 12)
		local flags = 0
		
		if mob_type == 1 then -- Beetles
			flags = beetles
		elseif mob_type == 2 then -- Crabs
			flags = crabs
		elseif mob_type == 3 then -- Antelope
			flags = antelope
		elseif mob_type == 4 then -- Snakes
			flags = snakes
		end
		
		if quantity == 8 then
			flags = flags + kill8
		elseif quantity == 9 then
			flags = flags + kill9
		elseif quantity == 10 then
			flags = flags + kill10
		elseif quantity == 11 then
			flags = flags + kill11
		elseif quantity == 12 then
			flags = flags + kill12
		end
		
		SetQuestFlags(Quest, flags)
		SetStep(Quest, Player, mob_type, quantity)
	else -- need the else for /reload quest
		CheckBitMask(Quest, Player, GetQuestFlags(Quest))
	end
end

function hasflag(flags, flag)
	return flags % (2*flag) >= flag
end

function CheckBitMask(Quest, Player, Flags)
	local mob_type = 0
	local quantity = 0
	
	if hasflag(Flags, beetles) then
		mob_type = 1
	elseif hasflag(Flags, crabs) then
		mob_type = 2
	elseif hasflag(Flags, antelope) then
		mob_type = 3
	elseif hasflag(Flags, snakes) then
		mob_type = 4
	end
	
	if hasflag(Flags, kill8) then
		quantity = 8
	elseif hasflag(Flags, kill9) then
		quantity = 9
	elseif hasflag(Flags, kill10) then
		quantity = 10
	elseif hasflag(Flags, kill11) then
		quantity = 11
	elseif hasflag(Flags, kill12) then
		quantity = 12
	end
	
	SetStep(Quest, Player, mob_type, quantity)
end

function Declined(Quest, QuestGiver, Player)
	SetTempVariable(Player, "RepeatHuntingForTrapperBorgus", nil)
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function SetStep(Quest, Player, mob, quantity)
	if mob == 1 then
		AddQuestStepKill(Quest, 1, "Hunt beetles in the Thundering Steppes.", quantity, 100, "I'm supposed to help Trapper Borgus get the provisions his family requires, I should get them back to him as soon as I am done.", 0, 2490206, 2490050, 2490058)
	elseif mob == 2 then
		AddQuestStepKill(Quest, 1, "Hunt crabs in the Thundering Steppes.", quantity, 100, "I'm supposed to help Trapper Borgus get the provisions his family requires, I should get them back to him as soon as I am done.", 0, 2490280, 2490007, 2490128, 2490200)
	elseif mob == 3 then
		AddQuestStepKill(Quest, 1, "Hunt antelope in the Thundering Steppes.", quantity, 100, "I'm supposed to help Trapper Borgus get the provisions his family requires, I should get them back to him as soon as I am done.", 0, 2490056, 2490052, 2490047)
	else
		AddQuestStepKill(Quest, 1, "Hunt snakes in the Thundering Steppes.", quantity, 100, "I'm supposed to help Trapper Borgus get the provisions his family requires, I should get them back to him as soon as I am done.", 0, 2490181, 2490110)
	end
	
	AddQuestStepCompleteAction(Quest, 1, "FinishedKilling")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 0 then
		CheckBitMask(Quest, Player, GetQuestFlags(Quest))
	elseif Step == 1 then
		FinishedKilling(Quest, QuestGiver, Player)
	end
end

function Deleted(Quest, QuestGiver, Player)
end