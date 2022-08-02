--[[
	Script Name	: Quests/ScaleYard/wasp_what_i_can_do.lua
	Script Purpose	: Quest, "Wasp What I Can Do"
	Script Author	: Xanibunib
	Script Date	: 4.4.2009 (updated by torsten 1.8.2022)
	
	Zone       : Scale Yard
	Quest Giver: Clan Chief Malachi Sleetspear
	Quest ID#	: 175
	Preceded by: none
	Followed by: Sound Off!
--]]

local WASP = 346

function Init(Quest)
	
	AddQuestStepKill(Quest, 1, "I need to kill several wasps.", 4, 100, "I need to take care of the wasps near the Freeport Reserve.", 611, 1390035)
	AddQuestStepSpell(Quest, 2, "I must destroy the wasp hive.", 1, 100, "I need to take care of the wasps near the Freeport Reserve.", 0, 5029)

	AddQuestStepCompleteAction(Quest, 1, "Step1_WaspsDead")
	AddQuestStepCompleteAction(Quest, 2, "Step2_HiveDestro")
	

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi007.mp3", "", "", 3983810535, 3176793285, Spawn)
			AddConversationOption(conversation, "Ha! I thought this was going to be challenging! I’ll be right back!")
			StartConversation(conversation, NPC, Spawn, "Go over there and get rid of that flying vermin and dispose of their hive. You’ll make fast friends clearing up this mess and establish the fact that yer handy in a tussle.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_WaspsDead(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed several wasps.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2_HiveDestro(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have destroyed the wasp hive.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, WASP, 1) and QuestStepIsComplete(Player, WASP, 2) then
 	    UpdateQuestTaskGroupDescription(Quest, 1, "I have proved that I am indeed strong enough to survive in the Scale Yard.")
	    
	    AddQuestStepChat(Quest, 3, "I should let Malachi know I've dealt with the wasps.", 1, "I've taken care of the wasps and need to talk to Malachi.", 0, 1390077)
	    AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
    end	
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have destroyed the wasps and their hive at Malachi's request. Though they may not openly showit, I'm sure the residents of the Scale Yard appreciate my efforts.")
	GiveQuestReward(Quest, Player)
end


function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_WaspDead(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_HiveDestro(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end