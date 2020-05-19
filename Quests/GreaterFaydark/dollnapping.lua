--[[
	Script Name	: Quests/GreaterFaydark/dollnapping.lua
	Script Purpose	: Handles the quest, "Dollnapping!"
	Script Author	: Scatman
	Script Date	: 2009.03.29
	
	Zone       : Greater Faydark
	Quest Giver: Sua Augren
	Preceded by: Broken Buttons (broken_buttons.lua)
	Followed by: None
--]]


function Init(Quest)
	-- Elder's Crown
	-- Redstone Loop
	-- Golden Wraps
	-- Steel Plated Shield
	-- Dewdrop Trinket


	AddQuestStepKill(Quest, 1, "I need to get Ami's doll back from the Klixie, Yellowjacket. The Klixies hang around the area to the southeast of Amethyst Pond.", 1, 100, "I should find the Klixie called Yellowjacket and get Ami's doll back for her. The Klixies usually hang around to the south east of Amethyst Pond.", 2254, 1140052)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledYellowjacket")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/exp03_questvo2/sua_augren/_exp03/exp03_rgn_greater_faydark/sua_augren/sua_augren006.mp3", "", "", 2584537319, 806721000, Player)
	AddConversationOption(conversation, "No problem.  I'll get the doll for Ami.")
	StartConversation(conversation, QuestGiver, Player, "I couldn't ask you to do that.  It would be wonderful if Ami got her doll back, but it's too dangerous.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledYellowjacket(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I got Ami's doll back from the Klixie Yellowjacket.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I got Ami's doll back from the Klixie Yellowjacket.")
	
	AddQuestStepChat(Quest, 2, "I should give the doll I recovered back to Ami.", 1, "I should give the doll I recovered from Yellowjacket to Ami Augren. It would make her really happy to see it.", 2254, 1140019)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I got Ami's doll back from Yellowjacket and returned it to her. Ami seems much happier now that she has her favorite toy again.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledYellowjacket(Quest, QuestGiver, Player)
	end
end
