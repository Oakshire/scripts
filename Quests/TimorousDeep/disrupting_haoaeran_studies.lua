--[[
	Script Name	: Quests/TimorousDeep/disrupting_haoaeran_studies.lua
	Script Purpose	: Handles the quest, "Disrupting Haoaeran Studies"
	Script Author	: Scatman
	Script Date	: 2009.02.06
	
	Zone       : Timorous Deep
	Quest Giver: Primary Conzuk Zum'Ha
	Preceded by: Report to the Primary (report_to_the_primary.lua)
	Followed by: Disrupting Haoaeran Rituals (disrupting_haoaeran_rituals.lua)
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need to kill the Haoaerans excavating the tunnel northwest across the sand.", 4, 100, "I need to travel to the cave to the west of Chrykori Village and kill the Haoaerans excavating the cave, and gather a sample of what they are digging up.", 611, 2630882, 2630881, 2630958)
	-- inscribed pottery
	AddQuestStepObtainItem(Quest, 2,  "I need a sample of whatever the Haoaerans are digging up.", 1, 100,  "I need to travel to the cave to the west of Chrykori Village and kill the Haoaerans excavating the cave and gather a sample of what they are digging up.", 1085,  8346)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedBirds")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_gotOre")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/primary_conzuk_zum_ha/_exp04/exp04_rgn_timorous_deep/chrykori_tie/zumha/zumha002.mp3", "", "", 4256377624, 3387696567, Player)
	AddConversationOption(conversation, "All right. I owe him no loyalty.")
	StartConversation(conversation, QuestGiver, Player, "Then you will return to me as soon as you have found something. Oh, and we should leave Tykor out of this from here on out. He has done his part, but just in case his supposed incompetence has nothing to do with his griffon riding skills... let's leave this to those better qualified.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedBirds(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the Haoaerans.")
	
	if QuestIsComplete(Player, 112) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function step2_complete_gotOre(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found some inscribed pottery.")
	
	if QuestIsComplete(Player, 112) then
		multiple_steps_complete(Quest, QuestGiver, Player)
	end
end

function multiple_steps_complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the Haoaerans and obtained a sample of what they're digging up.")
	
	AddQuestStepChat(Quest, 3, "I must speak with Primary Conzuk Zum'Ha in Chrykori Village.", 1, "I must show Primary Conzuk Zum'Ha in Chrykori Village these ore samples.", 0, 2630460)
	AddQuestStepCompleteAction(Quest, 3, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	-- remove 'inscribed pottery'
	UpdateQuestDescription(Quest, "I have brought the inscribed pottery back to Primary Conzuk Zum'Ha.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedBirds(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_gotOre(Quest, QuestGiver, Player)
	end
end
