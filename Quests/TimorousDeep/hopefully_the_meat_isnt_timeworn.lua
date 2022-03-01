--[[
	Script Name	: Quests/TimorousDeep/hopefully_the_meat_isnt_timeworn.lua
	Script Purpose	: Handles the quest, "Hopefully the Meat Isn't Timeworn"
	Script Author	: Scatman
	Script Date	: 2009.02.10
	
	Zone       : Timorous Deep
	Quest Giver: Varkori Riz'Lul
	Preceded by: None
	Followed by: Sandy Eggs (sandy_eggs.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need some briny lizard meat from the lizards in the Timeworn Pools west of Chrykori Village.", 4, 100, ".", 139, 2630083)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedLizards")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/varkori_riz_lul/_exp04/exp04_rgn_timorous_deep/chrykori_tie/rizlul/rizlul001.mp3", "", "", 1972473001, 1216175625, Player)
	AddConversationOption(conversation, "I will get the lizard meat.")
	StartConversation(conversation, QuestGiver, Player, "Great, thank you. I'd send Taroche, but every time I try to send him out, he tells me he's perfecting his stuffed grit gorger claw recipe. Hmph! One meaningless soldier tells him they're the best thing he's ever tasted, and now Taroche just won't let it go. He seems to believe he's some sort of culinary genius, but I don't have the heart to tell him he was bred without taste buds.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedLizards(Quest, QuestGiver, Player)
	SetStepComplete(Quest, 1, "I have the lizard meat.")
	
	AddQuestStepChat(Quest, 2, "I need to bring this meat back to Varkori Riz'Lul in Chrykori Village.", 1, ".", 139, 2630043)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have brought some briny lizard meat back to Varkori Riz'Lul.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedLizards(Quest, QuestGiver, Player)
	end
end
