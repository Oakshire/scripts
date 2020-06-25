--[[
	Script Name	: Quests/FrostfangSea/beets_the_alternative.lua
	Script Purpose	: the quest Beets the Alternative
	Script Author	: theFoof
	Script Date	: 2013.5.18

        Zone            : Frostfang Sea
        Quest Giver     : Wregan Firebeard
        Preceded by     : 
        Followed by     : 
--]]

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(50,90), math.random(2,5), 0, 0)
    AddQuestStep(Quest, 1, "Gather tundra beets along the frozen beach front north of Gwenevyn's Cove, between the pillars of ice.", 3, 100, "First though, you must help gather provisions necessary for the journey.", 816)
	AddQuestStepCompleteAction(Quest, 1, "GatheredBeets")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end
 
function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "wregan_firebeard/halas/gwenevyns_cove/wregan_firebeard_007.mp3", "", "", 2495625045, 3478965655, Player)
	AddConversationOption(conversation, "I will, believe me.")
	StartConversation(conversation, QuestGiver, Player, "Yes.  Now go and harvest some tundra beets.  They grow along the frozen beach front north of us, between the pillars of ice.  Be wary of the blizzard grizzlies nearby!")
end

function GatheredBeets(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "You gathered tundra beets.")
	AddQuestStep(Quest, 2, "You should gather one more tundra beet.", 1, 100, "First though, you must help gather provisions necessary for the journey.", 816)
	AddQuestStepCompleteAction(Quest, 2, "GotLastBeet")
end

function GotLastBeet(Quest, QuestGiver, Player)
    RemoveSpawnAccess(GetSpawn(Player, 4700035), Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "You gathered enough tundra beets, but you also found fresh orc footprints within the snow and ice!")
	AddQuestStepChat(Quest, 3, "Return to Wregan Firebeard and tell him of the orcish threat!", 1, "You should return to Wregan Firebeard, the Pilgrimage Guardian, in Gwenevyn's Cove, and tell him of the orcish threat!", 0, 4700034)
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    GatheredBeets(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    GotLastBeet(Quest, QuestGiver, Player)
	elseif Step == 3 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end
    