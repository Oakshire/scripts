--[[
	Script Name	: Quests/TimorousDeep/dont_get_it_in_aroziks_eyes.lua
	Script Purpose	: Handles the quest, "Don't Get It in Arozik's Eyes"
	Script Author	: Scatman
	Script Date	: 2009.02.22
	
	Zone       : Timorous Deep
	Quest Giver: Tertiary Mak'Ki
	Preceded by: Don't Get It in Arozik's Eyes (dont_get_it_in_aroziks_eyes.lua)
	Followed by: None
--]]


function Init(Quest)


	AddQuestStepChat(Quest, 1, "I need to give these acid glands to Secondary Arozik Sky'Ki. I can find him in Trythec Loft, south west of Chrykori Village.", 1, ".", 111, 2630081)
	AddQuestStepCompleteAction(Quest, 1, "quest_complete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/tertiary_mak_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/makki/makki004.mp3", "", "", 117800882, 151216823, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "I'm sure he'll put these to good use. Thank you for your help. I think I will keep a few on hand to continue studying them for other potential applications.")
end

function Declined(Quest, QuestGiver, Player)
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have delivered the rustbeast acid to Secondary Arozik Sky'Ki.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end
