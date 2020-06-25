--[[
	Script Name	: Quests/ScaleYard/go_visit_the_sprawl.lua
	Script Purpose	: Quest 203, Go Visit The Sprawl
	Script Author	: Xanibunib
	Script Date	: 4.10.2009
	
	Zone       : Scale Yard
	Quest Giver: Clan Cheif Malachi Sleetspear
	Preceded by: What Happens In The Scale Yard Stays...
	Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak to Enforcer Kurdek in the Sprawl.", 1, "", 0, 1260017)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Kurdek")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			PlayFlavor(QuestGiver, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi056.mp3", "", "", 3512384326, 3311708493, Player)
			AddConversationOption(conversation, "Okay.", "dlg_0_0")
			StartConversation(conversation, QuestGiver, Player, "Aye, you've done much already but I'm afraid after all the ruckus you stirred up, its best you find work elsewhere. Go speak to Enforcer Kurdek in the Sprawl and see if he could use your help.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function dlg_0_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi057.mp3", "", "", 3904497109, 418111137, Spawn)
	AddConversationOption(conversation, "For New Halas!")
	StartConversation(conversation, NPC, Spawn, "Good luck Fuhe, and remember... For New Halas!")
end

function Step1_Kurdek(Quest, QuestGiver, Spawn)
	UpdateQuestDescription(Quest, "I have spoken to Enforcer Kurdek.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_Kurdek(Quest, QuestGiver, Player)
	end
end