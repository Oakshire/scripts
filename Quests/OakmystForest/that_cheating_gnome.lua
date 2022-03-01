--[[
	Script Name	: Quests/Oakmyst/that_cheating_gnome.lua
	Script Purpose	: Handles the quest, "That Cheating Gnome!"
	Script Author	: Scatman
	Script Date	: 2009.05.03
	
	Zone       : OakmystForest
	Quest Giver: Jorn Sorefoot
	Preceded by: None
	Followed by: <quest-to-follow>
--]]

local Fluwkowir = 1950073
local Jorn = 1950012
local LieutenantCharlin = 1950008
local FluwkowirSatchel = 7360

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to recover Jorn's money from Fluwkowir Haggleton. Jorn last saw Fluwkowir heading west toward the docks.", 1, 100, ".", 399, Fluwkowir) 
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_GotJornsPack")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/jorn_sorefoot/qey_adv01_oakmyst/quests/jorn/jorn005a.mp3", "", "", 1536076306, 896415484, Player)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, QuestGiver, Player, "Thanks for your help. I'm just about worn out from all this looking.")
end

function Declined(Quest, QuestGiver, Player)
    
end

function Step1_Complete_GotJornsPack(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have recovered Jorn's money.")
	AddQuestStepChat(Quest, 2, "I need to return the money to Jorn.", 1, ".", 2165, Jorn) 
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SpokeWithJorn")
end

function Step2_Complete_SpokeWithJorn(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have recovered Jorn's money.")
	AddQuestStepChat(Quest, 3, "I need to give Fluwkowir's book to Lieutenant Charlin.", 1, ".", 0, LieutenantCharlin) 
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end


function QuestComplete(Quest, QuestGiver, Player)
	-- Flukowir's Satchel
	RemoveItem(Player, FluwkowirSatchel)
	
	UpdateQuestDescription(Quest, "I found Fluwkowir. After confronting him he attacked me. On him he had a small satchel, in that satchel I found Jorn's money but also some strange notes written in Lucanic.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_GotJornsPack(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SpokeWithJorn(Quest, QuestGiver, Player)
	end
end