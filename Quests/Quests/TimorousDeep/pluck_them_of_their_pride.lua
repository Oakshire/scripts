--[[
	Script Name	: Quests/TimorousDeep/pluck_them_of_their_pride.lua
	Script Purpose	: Handles the quest, "Pluck Them of Their Pride"
	Script Author	: Scatman
	Script Date	: 2009.02.27
	
	Zone       : Timorous Deep
	Quest Giver: Craewem Ku'Vi
	Preceded by: None
	Followed by: Ku'Vi's Vengeance (kuvis_vengeance.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need some pride feathers from the Haoaeran turf-hunters to the south.", 10, 100, ".", 150, 2630077)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedBirds")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/craewen_ku_vi/_exp04/exp04_rgn_timorous_deep/chrykori_tie/kuvi/kuvi002.mp3", "", "", 324579697, 4108613532, Player)
	AddConversationOption(conversation, "Very well.")
	StartConversation(conversation, QuestGiver, Player, "Bring me their pride feathers, " .. GetName(Player) .. ". and leave their corpses to rot.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedBirds(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the Haoaeran pride feathers.")
	
	AddQuestStepChat(Quest, 2, "I need to bring these feathers back to Craewen Ku'Vi.", 1, ".", 150, 2630073)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have brought the pride feathers to Craewen Ku'Vi.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedBirds(Quest, QuestGiver, Player)
	end
end

