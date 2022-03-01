--[[
	Script Name	: Quests/GreaterFaydark/grobin_trouble_at_the_pond.lua
	Script Purpose	: Handles the quest Grobin Trouble at the Pond
	Script Author	: Zcoretri
	Script Date	: 2009.03.04
	
	Zone       : Greater Faydark
	Quest Giver: Matron of the Nursery
	Preceded by: Running Off the Grobin Scouts
	Followed by: Herbs of Healing and Growth
--]]


function Init(Quest)
	 AddQuestStepKill(Quest, 1, "I need to stop the grobin polluters at Amethyst Pond to the southwest of the nursery.", 4, 100, "I need to get rid of the grobin polluters at Amethyst Pond, southwest of the nursery. Hopefully, I'll be able to find out what they are up to there.", 354, 1140026)
	 AddQuestStepCompleteAction(Quest, 1, "KilledAllPolluters")


end

function Accepted(Quest, QuestGiver, Player)
	 if QuestGiver ~= nil then
	if GetDistance(Player, QuestGiver) < 30 then
	    FaceTarget(QuestGiver, Player)
	    conversation = CreateConversation()
	    PlayFlavor(QuestGiver, "voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery008.mp3", "", "", 3433160215, 2503556383, Player)
	    AddConversationOption(conversation, "I'll do my best to find out.")
	    StartConversation(conversation, QuestGiver, Player, "Thank you, " .. GetName(Player) .. ".  The grobins are usually up to something devious.  I hope you can find out what it is for the sake of the spirit bloom nursery.")
	end
	 end
end

function Declined(Quest, QuestGiver, Player)
end

function KilledAllPolluters(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I ran off the polluters and found out they had jars of shrumber eggs they were pouring into the pond!")
	AddQuestStepChat(Quest, 2, "I should tell the Matron of the Nursery about jars of shrumbler eggs I found on the grobin polluters.", 1, "I should return to the Matron of the Nursery and show her the jars of eggs I found on the grobin polluters.", 0, 1140004)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I found out the grobin polluters at Amethyst Pond were pouring shrumbler eggs in the pond. They were definitely behind the infestation of the spirit bloom nursery. but where did they get all those eggs...?")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	 if Step == 1 then
	KilledAllPolluters(Quest, QuestGiver, Player)
	 end
end

