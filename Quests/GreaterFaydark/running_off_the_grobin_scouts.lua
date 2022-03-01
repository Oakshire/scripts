--[[
	Script Name	: Quests/GreaterFaydark/running_off_the_grobin_scouts.lua
	Script Purpose	: Handles the quest Running Off the Grobin Scouts
	Script Author	: Zcoretri
	Script Date	: 2009.03.02
	
	Zone       : Greater Faydark
	Quest Giver: Matron of the Nursery
	Preceded by: Infestation!
	Followed by: Grobin Trouble at the Pond
--]]


function Init(Quest)


	AddQuestStepKill(Quest, 1, "I need to defeat the grobin scouts in the area southwest of the spirit bloom nursery near Amethyst Pond.", 4, 100, "The Matron of the Nursery wants me to investigate the reports about grobin near Amethyst Pond to the southwest and run off any scouts I find.", 2566, 1140022)
	AddQuestStepCompleteAction(Quest, 1, "KilledAllGrobinScouts")



end

function Accepted(Quest, QuestGiver, Player)
	conversation = CreateConversation()
	if QuestGiver ~= nil then
	if GetDistance(Player, QuestGiver) < 30 then
	FaceTarget(QuestGiver, Player)
	AddConversationOption(conversation, "I'll take care of things.")
	StartConversation(conversation, QuestGiver, Player, "Thank you.  I fear for the spirit bloom nursery with the grobins so close.  It wouldn't surprise me if they're behind the infestation too!")
	end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function KilledAllGrobinScouts(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I should tell the Matron of the Nursery that I ran off the grobins scouts.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I visited Amethyst Pond and scared off the grobin scouts in the area. I noticed that there were some grobin at the water's edge that seemed to be up to something.")
	AddQuestStepChat(Quest, 2, "I should tell the Matron of the Nursery that I ran off the grobin scouts.", 1, "I should return to the Matron of the Nursery and let her know I scared off a few scouts but the grobin were up to something at the pond.", 0, 1140004)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I ran off the grobin scouts and told the Matron of the Nursery about the grobins I saw at the water's edge of the pond.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	 if Step == 1 then
	KilledAllGrobinScouts(Quest, QuestGiver, Player)
	 end
end


