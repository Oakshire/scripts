--[[
	Script Name	: Quests/Ruins/knock_the_fight_out_of_em.lua
	Script Purpose	: Handles the quest, "Knock the Fight Out of 'Em"
	Script Author	: Scatman
	Script Date	: 2009.08.18
	
	Zone       : The Ruins
	Quest Giver: Captain Arellius
	Preceded by: Stepping Up the Offense (stepping_up_the_offense.lua)
	Followed by: Vengeance for Shoreside (vengeance_for_shoreside.lua)
--]]

function Init(Quest)
	AddQuestStepSpell(Quest, 1, "I should throw some dirt in the orcs' dinner pot.", 1, 100, "I must seek out the symbols that the orcs use to inspire themselves. Then I will defile these objects to crush their spirits.", 943, 5044)
	AddQuestStepSpell(Quest, 2, "I must find and deface the statue of an orc knight.", 1, 100, "I must seek out the symbols that the orcs use to inspire themselves. Then I will defile these objects to crush their spirits.", 1214, 5045)
	AddQuestStepSpell(Quest, 3, "I must find and deface one of the Lonetusk worship idols.", 1, 100, "I must seek out the symbols that the orcs use to inspire themselves. Then I will defile these objects to crush their spirits.", 1058, 5046)
	AddQuestStepSpell(Quest, 4, "I should poke a hole in the orcs' wine cask.", 1, 100, "I must seek out the symbols that the orcs use to inspire themselves. Then I will defile these objects to crush their spirits.", 2284, 5047)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_ThrewDirt")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_DefacedStatue")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_DefacedIdols")
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_PokedHole")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus009.mp3", "", "", 3046376303, 2999823619, Player)
	AddConversationOption(conversation, "Do you really think wrecking statues and ruining food is going to ensure victory?", "dlg_3_8")
	AddConversationOption(conversation, "I'll get to it.")
	StartConversation(conversation, QuestGiver, Player, "Our surest path to victory is to take the fight out of them. Go out there and face the Lonetusk, and deface any statues you see. Seek out their supplies of food and drink and spoil them. Without symbols of victory to inspire them and food in their bellies, their spirits will crumble and they will become easy pickings for us.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_ThrewDirt(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I threw dirt in the orcs' dinner pot. Take that, orcs!")
	SendMessage(Player, "You throw some dirt in the orc cooking pot.")
	
	if QuestIsComplete(Player, 286) then
		Multiple_Steps_Complete(Player, QuestGiver, Player)
	end
end

function Step2_Complete_DefacedStatue(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have defaced the statue of an orc knight.")
	SendMessage(Player, "You draw a mustace on the face of the orc statue.")
	
	if QuestIsComplete(Player, 286) then
		Multiple_Steps_Complete(Player, QuestGiver, Player)
	end
end

function Step3_Complete_DefacedIdols(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have defaced an idol that the Lonetusk seem to worship.")
	SendMessage(Player, "You draw crazy eyes and a beard on the orc idol.")
	
	if QuestIsComplete(Player, 286) then
		Multiple_Steps_Complete(Player, QuestGiver, Player)
	end
end

function Step4_Complete_PokedHole(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I poked a hole in the orcs' wine cask. Now they'll be thirsty!")
	SendMessage(Player, "You have poked a hole in the cask and watched the wine drain out.")
	
	if QuestIsComplete(Player, 286) then
		Multiple_Steps_Complete(Player, QuestGiver, Player)
	end
end

function Multiple_Steps_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I found and defaced many objects the orcs hold dear. Hopefully this takes the fight out of them.")
	
	AddQuestStep(Quest, 5, "I should report back to Lieutenant Imperidus.", 1, "Having defaced the orc artifacts, I should return to Lieutenant Imperidus at the second outpost.", 0, 1270070)
	AddQuestStepCompleteAction(Quest, 5, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have reported back to Lieutenant Imperidus.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have reported back to Lieutenant Imperidus.")
	UpdateQuestDescription(Quest, "I followed the orders of Lieutenant Imperidus, defacing statues the Lonetusk orcs use to inspire their troops. I also threw dirt into their food and drained their supply of wine. Hopefully the lieutenant's plan will work and my actions will have takens some of the fight out of the orcs.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_ThrewDirt(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_DefacedStatue(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_DefacedIdols(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_PokedHole(Quest, QuestGiver, Player)
	end
end