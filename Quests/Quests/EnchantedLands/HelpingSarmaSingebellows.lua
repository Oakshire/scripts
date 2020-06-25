--[[
	Script Name		:	Quests/EnchantedLands/HelpingSarmaSingebellows.lua
	Script Purpose	:	Handles the quest "Helping Sarma Singebellows"
	Script Author	:	Cynnar
	Script Date		:	2015.03.21
	Script Notes	:	Reward coin goes up each time quest is repeated

	Zone			:	Enchanted Lands
	Quest Giver		:	Sarma Singebellows
	Preceded by		:	<preceded-quest-name(lua file)>
	Followed by		:	<followed-by-quest-name(lua file)>
--]]

local kill8 = 8
local kill9 = 9
local kill10 = 10
local kill11 = 11
local kill12 = 12

function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
end

function Accepted(Quest, QuestGiver, Player)
	
	if GetTempVariable(Player, "HelpingSarmaSingebellows") == "true" then
		PlayFlavor(NPC, "voiceover/english/sarma_singebellows/enchanted/sarma_singebellows002.mp3", "", "", 2943069626, 2445316031, Spawn)
		AddConversationOption(conversation, "I shall return when they are destroyed.")
		StartConversation(conversation, NPC, Spawn, "Excellent!  You worked hard to kill all of those goblins, but we need to make sure they don't regain their foothold.")
	else
		PlayFlavor(NPC, "voiceover/english/sarma_singebellows/enchanted/sarma_singebellows002.mp3", "", "", 2943069626, 2445316031, Spawn)
		AddConversationOption(conversation, "As you wish.")
		StartConversation(conversation, NPC, Spawn, "Excellent! Goblins are tainting the water and withering the trees at a watermill by a nearby lake.  I want you to destroy as many of them as you can!")
	end
	
	SetTempVariable(Player, "HelpingSarmaSingebellows", nil)
	
	if GetQuestFlags(Quest) == 0 then
		local quantity = math.random(8, 12)
		local flags = 0
		
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
		SetStep(Quest, Player, quantity)
		
	else -- need the else for /reload quest
		CheckBitMask(Quest, Player, GetQuestFlags(Quest))
	end
end

function hasflag(flags, flag)
	return flags % (2*flag) >= flag
end

function CheckBitMask(Quest, Player, Flags)
	local quantity = 0
	
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
	
	SetStep(Quest, Player, quantity)
end

function SetStep(Quest, Player, quantity)
	if quantity == 8 then
		AddQuestStepKill(Quest, 1, "Hunt some goblins in the Enchanted Lands", quantity, 100, "I need to kill as many goblins as I am able to prevent them from tainting this land further. I need to slay more goblins!", 159, 390028, 390018, 390002, 390006, 390151, 390154, 390003, 390029)
	elseif quantity == 9 then
		AddQuestStepKill(Quest, 1, "Hunt some goblins in the Enchanted Lands", quantity, 100, "I need to kill as many goblins as I am able to prevent them from tainting this land further. I need to slay more goblins!", 159, 390028, 390018, 390002, 390006, 390151, 390154, 390003, 390029)
	elseif quantity == 10 then
		AddQuestStepKill(Quest, 1, "Hunt some goblins in the Enchanted Lands", quantity, 100, "I need to kill as many goblins as I am able to prevent them from tainting this land further. I need to slay more goblins!", 159, 390028, 390018, 390002, 390006, 390151, 390154, 390003, 390029)
	elseif quantity == 11 then
		AddQuestStepKill(Quest, 1, "Hunt some goblins in the Enchanted Lands", quantity, 100, "I need to kill as many goblins as I am able to prevent them from tainting this land further. I need to slay more goblins!", 159, 390028, 390018, 390002, 390006, 390151, 390154, 390003, 390029)
	elseif quantity == 12 then
		AddQuestStepKill(Quest, 1, "Hunt some goblins in the Enchanted Lands", quantity, 100, "I need to kill as many goblins as I am able to prevent them from tainting this land further. I need to slay more goblins!", 159, 390028, 390018, 390002, 390006, 390151, 390154, 390003, 390029)
	end
	
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed quite a few goblins, I should report back to Sarma Singebellows now.")
	AddQuestStepChat(Quest, 2, "I need to speak to Sarma Singebellows in the Enchanted Lands.", 1, "I need to kill as many goblins as I am able to prevent them from tainting this land further. I need to slay more goblins!", 0, 390181)
	AddQuestStepCompleteAction(Quest, 2, "QuestReward")
	
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
	SetTempVariable(Player, "HelpingSarmaSingebellows", nil)
end

function QuestReward(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
	SetCompleteFlag(Quest)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 0 then
		CheckBitMask(Quest, Player, GetQuestFlags(Quest))
	elseif Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestReward(Quest, QuestGiver, Player)
	end
end