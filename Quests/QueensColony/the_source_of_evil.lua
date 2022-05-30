--[[
    Script Name    : Quests/QueensColony/the_source_of_evil.lua
    Script Author  : Zcoretri
    Script Date    : 2015.09.05
    Script Purpose : Handles the quest "The Source of Evil"

        Zone       : Queen's Colony
        Quest Giver: Cleric Mara'Vaen
        Preceded by: Joining the Forward Ranks (joining_the_forward_ranks.lua)
        Followed by: None
--]]

function Init(Quest)
    ClassCheckReward(Quest,Player)
	AddQuestStepChat(Quest, 1, "Seek Sorcerer Oofala. His camp is set up north past Dead Canyon and then east down the wall of the Abandoned Village.", 1, "Head into and around the Abandoned Village in search of Sorcerer Oofala, protector of the scout camp set up there.", 0, 2530026)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToSorcerer")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(NPC, Spawn)
			conversation = CreateConversation()

	                PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen014.mp3", "", "nod", 1438987592, 3801497602, Player)
			AddConversationOption(conversation, "Thanks")
			StartConversation(conversation, QuestGiver, Player, "Bless you, child.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)

end

function step1_complete_talkedToSorcerer(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke with Sorcerer Oofala.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke with Sorcerer Oofala.")
	AddQuestStepKill(Quest, 2, "Seek and destroy the evil totems scattered around the Abandoned Village.", 3, 100, "New information gained from goblins that survived has revealed that the goblins were victims of the evil themselves. Evil totems sprang up around their village and spread a fog that devoured all that it consumed. I need to seek and destroy the evil totems.", 861, 2530153) 
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_killedTotems")
end

function step2_complete_killedTotems(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I was able to find and destroy the evil totems.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I was able to find and destroy the evil totems.")
	AddQuestStepChat(Quest, 3, "Return to Sorcerer Oofala.", 1, "I destroyed the totems and I should return to Sorcerer Oofala.", 0, 2530026) 
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_talkedToSorcerer")
end

function step3_complete_talkedToSorcerer(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I spoke with Sorcerer Oofala.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I spoke with Sorcerer Oofala.")
    --Spawn(GetZone(Player), 2530142, false, GetX(Player), GetY(Player), GetZ(Player))
    --Spawn the Dark Blademaster once you approach his location only if the player has a quest (zonescript)
    --x = 154.66    y = 1.38397    z = -178.158    heading = 349.984
	AddQuestStepKill(Quest, 4, "Kill the Dark Blademaster near the fog on Sapswill Hill.", 1, 100, "Oofala explained that by removing the totems, the evil has been disturbed and produced a champion to fight back. I will need to confront the Dark Blademaster. He has emerged from a tent on Sapswill Hill.", 611, 2530032) 
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_killedBlademaster")
end

function step4_complete_killedBlademaster(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have slain the Dark Blademaster.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have slain the Dark Blademaster.")
	AddQuestStepChat(Quest, 5, "Return the news of my victory to Sorcerer Oofala.", 1, "I have slain the Dark Blademaster and should return to Sorcerer Oofala. I should mention the Freeport insignia that the Dark Blademaster has in his belongings.", 0, 2530026) 
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_talkedToSorcerer")
end

function step5_complete_talkedToSorcerer(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I returned to sorcerer Oofala.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I returned to sorcerer Oofala with the news of my victory and of the insignia that the Blademaster dropped.")
	AddQuestStepChat(Quest, 6, "Seek High Chieftan Grexx in the tree house east of the Abandoned Village.", 1, "Sorcerer Oofala is disturbed by the news that Freeport is involved. I need to seek out High Chieftan Grexx at his tree house to the east of the Abandoned Village.", 0, 2530038) 
	AddQuestStepCompleteAction(Quest, 6, "step6_complete_talkedToGrexx")
end

function step6_complete_talkedToGrexx(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have slain the Dark Blademaster.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I have slain the Dark Blademaster.")
	AddQuestStepKill(Quest, 7, "Enter the cave to the northeast of the tree house and deal with the source of evil.", 1, 100, "High Chieftan Grexx has pointed out that he believes the source of evil to emanate from a cave to the northeast of his tree house. I need to head inside and confront the evil.", 611, 2540005) 
	AddQuestStepCompleteAction(Quest, 7, "step7_complete_killedVith")
end

function step7_complete_killedVith(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have slain the necromancer.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I have slain the necromancer.")
	AddQuestStepChat(Quest, 8, "Return to High Chieftan Grexx.", 1, "I should return to High Chieftan Grexx and let him know that the island is saved.", 0, 2530038)
	AddQuestStepCompleteAction(Quest, 8, "step8_complete_talkedToGrexx")
end

function step8_complete_talkedToGrexx(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I returned to High Chieftain Grexx.")
	UpdateQuestTaskGroupDescription(Quest, 8, "I returned to High Chieftain Grexx.")
	AddQuestStepChat(Quest, 9, "Return to Murrar Shar.", 1, "I should now return to Murrar Shar with news about my victory against the necromancer.", 0, 2530076)
	AddQuestStepCompleteAction(Quest, 9, "questComplete")
end

function questComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I was able to help Sorcerer Oofala and destroyed the totems that had spread the evil into the village. Removing the totems brought forth an evil champion that I took care of as well. The Dark Blademaster had an insignia of the Freeport Militia in his belongings. Sorcerer Oofala then sent me to try and help High Chieftan Grexx at the nearby tree house as time was pressing to try and save them. High Chieftan Grexx sent me into the nearby cave to take care of the necromancer that was tainting the island. I took care of the necromancer and returned to both High Chieftan Grexx and Murrar Shar for their respective rewards.")
	GiveQuestReward(Quest, Player)
end

function ClassCheckReward(Quest,Player)
local FIGHTER = 1
local WARRIOR =2
local GUARDIAN= 3 
local BERSERKER = 4 
local BRAWLER = 5 
local MONK = 6 
local BRUISER= 7 
local CRUSADER = 8 
local SHADOWKNIGHT = 9 
local PALADIN = 10 

local PRIEST = 11 
local CLERIC = 12 
local TEMPLAR = 13 
local INQUISITOR = 14 
local DRUID = 15 
local WARDEN = 16 
local FURY = 17 
local SHAMAN = 18 
local MYSTIC = 19 
local DEFILER = 20 

local MAGE = 21 
local SORCERER = 22 
local WIZARD = 23 
local WARLOCK = 24 
local ENCHANTER = 25 
local ILLUSIONIST = 26 
local COERCER = 27 
local SUMMONER = 28 
local CONJUROR = 29 
local NECROMANCER = 30 

local SCOUT = 31 
local ROGUE = 32 
local SWASHBUCKLER = 33 
local BRIGAND = 34 
local BARD = 35 
local TROUBADOR = 36 
local DIRGE = 37 
local PREDATOR = 38 
local RANGER = 39 
local ASSASSIN = 40 
local ANIMALIST = 41 
local BEASTLORD = 42 
local SHAPER = 43 
local CHANNELER = 44 

if GetClass(Player)==FIGHTER or GetClass(Player)==WARRIOR or GetClass(Player)==GUARDIAN or GetClass(Player)==BERSERKER then
    AddQuestRewardItem(Quest,85495)
elseif GetClass(Player)==BRAWLER or GetClass(Player)==MONK  or GetClass(Player)==BRUISER or GetClass(Player)==ANIMALIST or GetClass(Player)==BEASTLORD then
    AddQuestRewardItem(Quest,85483)
elseif GetClass(Player)==CRUSADER or (Player)==SHADOWKNIGHT  or GetClass(Player)==PALADIN then
    AddQuestRewardItem(Quest,85485)
elseif GetClass(Player)==PRIEST or (Player)==CLERIC  or GetClass(Player)==TEMPLAR or GetClass(Player)==INQUISITOR or GetClass(Player)==SHAPER or GetClass(Player)==CHANNELER then
    AddQuestRewardItem(Quest,85484)    
elseif GetClass(Player)==DRUID or GetClass(Player)==WARDEN  or GetClass(Player)==FURY then
    AddQuestRewardItem(Quest,85486)
elseif GetClass(Player)==SHAMAN or (Player)==MYSTIC  or GetClass(Player)==DEFILER then
    AddQuestRewardItem(Quest,85492)
    
 elseif GetClass(Player)==MAGE or (Player)==SORCERER  or GetClass(Player)==WIZARD or GetClass(Player)==WARLOCK then
    AddQuestRewardItem(Quest,85493)    
elseif GetClass(Player)==ENCHANTER or GetClass(Player)==ILLUSIONIST  or GetClass(Player)==COERCER then
    AddQuestRewardItem(Quest,85487)
elseif GetClass(Player)==SUMMONER or (Player)==CONJUROR  or GetClass(Player)==NECROMANCER then
    AddQuestRewardItem(Quest,85494)   
    
 elseif GetClass(Player)==SCOUT or (Player)==ROGUE  or GetClass(Player)==SWASHBUCKLER or GetClass(Player)==BRIGAND  then
    AddQuestRewardItem(Quest,85491)    
elseif GetClass(Player)==BARD or GetClass(Player)==TROUBADOR  or GetClass(Player)==DIRGE then
    AddQuestRewardItem(Quest,85482)
elseif GetClass(Player)==RANGER or (Player)==ASSASSIN  or GetClass(Player)==PREDATOR then
    AddQuestRewardItem(Quest,85489)
    end
end
    
function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToSorcerer(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_killedTotems(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_talkedToSorcerer(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_killedBlademaster(Quest, QuestGiver, Player)
	elseif Step == 5 then
		step5_complete_talkedToSorcerer(Quest, QuestGiver, Player)
	elseif Step == 6 then
		step6_complete_talkedToGrexx(Quest, QuestGiver, Player)
	elseif Step == 7 then
		step7_complete_killedVith(Quest, QuestGiver, Player)
	elseif Step == 8 then
		step8_complete_talkedToGrexx(Quest, QuestGiver, Player)
	end
end