--[[
	Script Name	: quests/QueensColony/a_sandy_bone_shard.lua
	Script Purpose	: This script is for the quest, "A Sandy Bone Shard".
	quest Name : Tainted

	Zone       : The Queen's Colony
	quest Starter   : 
	Preceded By: Nothing
	Followed By:

	Script Author	: Ememjr
	Script Date	: 2017.04.14
--]]

function Init(quest)
	AddQuestStepKill(quest, 1, "I should try to see if other crabs have more missing pieces to the token.", 5, 60, "I need to find the other pieces to the shattered token.", 1085, 2530051,2530052,2530079)
	AddQuestStepCompleteAction(quest, 1, "step1")

end

function Declined(quest, questGiver, player)
end
function step1(quest, questGiver, player)

	UpdateQuestTaskGroupDescription(quest, 1, "I have found the remaining pieces.")
	AddQuestStepKill(quest, 2, "I should find some fish to make glue from.", 6, 100, "The easiest and nearest source of glue is probably the skin off the fish that can be found in the waters near the docks. I should collect a few.", 2540, 2530014,2530004,2530005,2530007)


	AddQuestStepCompleteAction(quest, 2, "step2")

end
function step2(quest, questGiver, player)
	UpdateQuestTaskGroupDescription(quest, 2, "I have glued the pieces of the token back together using the sticky gelatin from the fish skins I collected.")
	AddQuestStepKill(quest, 3, "I should find a replacement cord on the goblins found on the island.", 1, 25, "The pieces of the token are now glued back together I just need a leather cord to wear it. The goblins on the island must have a suitable one somewhere.", 2180, 2530027,2530037,2530036,2530039,2530028,2530019,2530090,2530010,2530085,2530018,2530021,2530011,2530030,2530031,2530020,2530024)
	AddQuestStepCompleteAction(quest, 3, "completed")
end


function completed(quest, questGiver, player)
	UpdateQuestDescription(quest, "I have found all the pieces I needed and put the Scrimshaw Token back together.")
	GiveQuestReward(quest, player)
end

function Reload(quest, questGiver, player, Step)
SendMessage(player, "before step 1","yellow")
	if Step == 1 then
	   step1(quest, questGiver, player)
	elseif Step == 2 then
	   step2(quest, questGiver, player)
	elseif Step == 3 then
	   step3(quest, questGiver, player)
	end
end