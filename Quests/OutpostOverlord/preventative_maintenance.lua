--[[
	Script Name	: Quests/OutpostOverlord/preventative_maintenance.lua
	Script Purpose	: Handles the quest, "Preventative Maintenance"
	Script Author	: Scatman (Updted by Cynnar 2018.09.22 02:25:24)
	Script Date	: 2008.09.07
	
	Zone       : Outpost of the Overlord
	Quest Giver: Tayil N'Velex
	Preceded by: Seaside Stew (seaside_stew.lua)
	Followed by: Disruption for Distraction (disruption_for_distraction.lua)
	Issues: Issue with quest helper after killing wilderbears
	Issues: after killing the final wilderbear it does not update the quest helper
--]]

local AssassinVamir = 2780073
local HawkBait = 8060

function Init(Quest)
	-- A Note from Tayil
	-- Freeportian Cloth Hood
	-- Freeportian Leather Cap
	-- Freeportian Plated Coif
	-- Freeportian Studded Helm
	
	AddQuestStepChat(Quest, 1, "Talk to Assassin Vamir at the camp in western Seaside Glade.", 1, "I need to find Assassin Vamir in western Seaside Glade. He should have a mission for me.", 0, AssassinVamir) 
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToVamir")

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
	   if GetDistance(Player, QuestGiver) < 30 then
	 FaceTarget(QuestGiver, Player)
	 conversation = CreateConversation()
	 AddConversationOption(conversation, "Thank you.")
	 StartConversation(conversation, QuestGiver, Player, "Assassin Vamir will explain the details. Good luck.")
	   end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_talkedToVamir(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I reported to Assassin Vamir and was given my first task.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I reported to Assassin Vamir and was given my first task.")
	
	AddQuestStepKill(Quest, 2, "Kill wilderbears. They can be found north in the Wilderwood, or west in Cliffdiver Canyon.", 4, 100, "To prevent the Tunarians from recruiting more animals once the attack has begun, I need to take out the animals they use. Bears are up first on the list. I can find bears north up the slope in the Wilderwood, or west in Cliffdiver Canyon.", 611, 2780071, 2780069, 2780080)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_killedBears")
end

function step2_complete_killedBears(Quest, QuestGiver, Player)
	--UpdateQuestStepDescription(Quest, 2, "I killed enough bears and I should return to Assassin Vamir at the camp in Seaside Glade.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I killed enough bears to hopefully thwart any training attempts.")
	
	AddQuestStepChat(Quest, 3, "Return to Assassin Vamir.", 1, "I killed enough bears and I should return to Assassin Vamir at the camp in Seaside Glade.", 0, AssassinVamir) 
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_talkedToVamir")
end

function step3_complete_talkedToVamir(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I returned to Assassin Vamir.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned to Assassin Vamir.")
	--while HasItem(Player, HawkBait) < 5 then
		SummonItem(Player, HawkBait)
		SummonItem(Player, HawkBait)
		SummonItem(Player, HawkBait)
		SummonItem(Player, HawkBait)
		SummonItem(Player, HawkBait)
	
	
	-- temporary
	--SpawnMob(GetZone(Player), 2780144, false, GetX(Player), GetY(Player), GetZ(Player))
	--SpawnMob(GetZone(Player), 2780144, false, GetX(Player) + 5, GetY(Player), GetZ(Player) + 5)
	--SpawnMob(GetZone(Player), 2780144, false, GetX(Player) + 10, GetY(Player), GetZ(Player) + 10)
	AddQuestStepKill(Quest, 4, "Lure down hawks to kill in Cliffdiver Canyon to the west. I must examine and then release a mole rat in my inventory as bait when I'm in position under a hawk.", 3, 100, "I now need to kill hawks. Vamir gave me some mole rats to use as bait to lure down the hawks that perch high above the cliffs. When I am in position, I need to examine the mole rats in my inventory and then release one. Hopefully it works to lure down the hawks so I can take them out.", 611, 2780077, 2780109)
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_killedHawks")
end

function step4_complete_killedHawks(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I used the mole rats to lure down some hawks and take them out.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I used the mole rats to lure down some hawks and take them out.")
	
	AddQuestStepChat(Quest, 5, "Return to Assassin Vamir.", 1, "I've killed enough hawks and should now return to Assassin Vamir.", 0, AssassinVamir) 
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_talkedToVamir")
end

function step5_complete_talkedToVamir(Quest, QuestGiver, Player)
	-- GIVE ANOTHER QUEST REWARD ITEM, <a note from Tayil>, WHICH GIVES THE NEXT QUEST IN THIS SERIES
	UpdateQuestDescription(Quest, "I reported to Assassin Vamir in Seaside Glade. It turns out the Tunarians on the island are masters of the animals here. To prevent them from gaining extra recruits when the attack happens, I helped to thin out the bears and hawks that they might use. I returned to Tayil after my missions with Vamir were complete and was rewarded.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToVamir(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_killedBears(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_talkedToVamir(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_killedHawks(Quest, QuestGiver, Player)
	elseif Step == 5 then
		step5_complete_talkedToVamir(Quest, QuestGiver, Player)
	end
end

function Deleted(Quest, QuestGiver, Player)
end
