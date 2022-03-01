--[[
	Script Name	: Quests/GreaterFaydark/message_from_the_matron.lua
	Script Purpose	: Handles the quest "Message From The Matron"
	Script Author	: Zcoretri
	Script Date	: 2009.3.23
	
	Zone       : Greater Faydark
	Quest Giver: Matron of the Nursery
	Preceded by: Herbs of Healing and Growth
	Followed by: 
--]]


function Init(Quest)
	 AddQuestStepChat(Quest, 1, "I need to take the matron's message to Sentry Trillis. His post is on top of a tree, southwest of Amethyst Pond. I need to find a tree to climb to get to him.", 1, ".", 374, 1140054)
	 AddQuestStepCompleteAction(Quest, 1, "QuestComplete")



end

function Accepted(Quest, QuestGiver, Player)
	 if QuestGiver ~= nil then
	if GetDistance(Player, QuestGiver) < 30 then
	    FaceTarget(QuestGiver, Player)
	    conversation = CreateConversation()
	    PlayFlavor(QuestGiver,"voiceover/english/exp03_questvo2/matron_of_the_nursery/_exp03/exp03_rgn_greater_faydark/matron_of_the_nursery/matron_of_the_nursery016.mp3", "", "", 3997346506, 1167918210, Player)
	AddConversationOption(conversation, "Goodbye, Matron of the Nursery.")
	StartConversation(conversation, QuestGiver, Player, "Thank you, " .. GetName(Player) .. ".  May Tunare bless you for all you have done!  Now I have some spirit blooms to heal.")
	end
	 end
end

function Declined(Quest, QuestGiver, Player)

end

function QuestComplete(Quest, QuestGiver, Player)
	 UpdateQuestDescription(Quest, "I carried the Matron of the Nursery's message to Sentry Trillis")
	 GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)

end

