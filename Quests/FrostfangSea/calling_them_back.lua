--[[
	Script Name		:	Quests/FrostfangSea/calling_them_back.lua
	Script Purpose	:	the quest Calling Them Back
	Script Author	:	theFoof
	Script Date		:	2013.5.28
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Dolur Axebeard
	Preceded by		:	Totem Annihilation
	Followed by		:	The Gauntlet
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(23,90), math.random(13,20), 0, 0)
	AddQuestStep(Quest, 1, "I must plant the Azia ward.", 1, 100, "Dolur Axebeard, a coldain shaman stationed at The Great Shelf, has asked for my help in planting wards on the battlefield. These wards act as beacons. The coldain soldiers that fall in battle can follow the signal from these beacons to return to Erollis as vengeful spirits, where they can continue their fight against the Ry'Gorr.", 2990)
	AddQuestStep(Quest, 2, "I must plant the Beza ward.", 1, 100, "Dolur Axebeard, a coldain shaman stationed at The Great Shelf, has asked for my help in planting wards on the battlefield. These wards act as beacons. The coldain soldiers that fall in battle can follow the signal from these beacons to return to Erollis as vengeful spirits, where they can continue their fight against the Ry'Gorr.", 2990)
	AddQuestStep(Quest, 3, "I must plant the Caza ward.", 1, 100, "Dolur Axebeard, a coldain shaman stationed at The Great Shelf, has asked for my help in planting wards on the battlefield. These wards act as beacons. The coldain soldiers that fall in battle can follow the signal from these beacons to return to Erollis as vengeful spirits, where they can continue their fight against the Ry'Gorr.", 2990)
	AddQuestStep(Quest, 4, "I must plant the Dena ward.", 1, 100, "Dolur Axebeard, a coldain shaman stationed at The Great Shelf, has asked for my help in planting wards on the battlefield. These wards act as beacons. The coldain soldiers that fall in battle can follow the signal from these beacons to return to Erollis as vengeful spirits, where they can continue their fight against the Ry'Gorr.", 2990)
	AddQuestStep(Quest, 5, "I must plant the Ena ward.", 1, 100, "Dolur Axebeard, a coldain shaman stationed at The Great Shelf, has asked for my help in planting wards on the battlefield. These wards act as beacons. The coldain soldiers that fall in battle can follow the signal from these beacons to return to Erollis as vengeful spirits, where they can continue their fight against the Ry'Gorr.", 2990)
	AddQuestStepCompleteAction(Quest, 1, "PlantedAzia")
	AddQuestStepCompleteAction(Quest, 2, "PlantedBeza")
	AddQuestStepCompleteAction(Quest, 3, "PlantedCaza")
	AddQuestStepCompleteAction(Quest, 4, "PlantedDena")
	AddQuestStepCompleteAction(Quest, 5, "PlantedEna")
end

function Accepted(Quest, QuestGiver, Player)
	if not HasItem(Player, 45448) then
		SummonItem(Player, 45448, 1)
    end
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard059.mp3", "", "", 118933813, 3206945922, Player)
	AddConversationOption(conversation, "I understand.")
	AddConversationOption(conversation, "Shouldn't be a problem.")
	StartConversation(conversation, QuestGiver, Player, "Here are the wards.  Head to the south, where the fighting is heaviest and poke around.  Ye'll want to keep an eye out for arcane patterns drawn in the snow.  Those designs indicate the best locations to place the wards.")
end

function Deleted(Quest, QuestGiver, Player)
	RemoveItem(Player, 45448)
	local zone = GetZone(Player)
	RemoveSpawnAccess(GetSpawnByLocationID(zone, 572695), Player)
	RemoveSpawnAccess(GetSpawnByLocationID(zone, 572694), Player)
	RemoveSpawnAccess(GetSpawnByLocationID(zone, 572693), Player)
	RemoveSpawnAccess(GetSpawnByLocationID(zone, 572692), Player)
	RemoveSpawnAccess(GetSpawnByLocationID(zone, 572696), Player)
end

function Declined(Quest, QuestGiver, Player)
end

function PlantedAzia(Quest, QuestGiver, Player)
	local zone = GetZone(Player)
	local runes = GetSpawnByLocationID(zone, 572693)
	local X = GetX(runes)
	local Y = GetY(runes)
	local Z = GetZ(runes)
	local heading = GetHeading(runes)
	local ward = SpawnMob(zone, 4701741, 1, X + math.random(-3,3), Y, Z + math.random(-3,3), heading)
	AddSpawnAccess(ward, Player)
	UpdateQuestStepDescription(Quest, 1, "I have planted the Azia ward.")
	SendMessage(Player, "You place the Azia ward.")
	CheckProgress(Quest, QuestGiver, Player)
	RemoveSpawnAccess(runes, Player)
end

function PlantedBeza(Quest, QuestGiver, Player)
	local zone = GetZone(Player)
	local runes = GetSpawnByLocationID(zone, 572694)
	local X = GetX(runes)
	local Y = GetY(runes)
	local Z = GetZ(runes)
	local heading = GetHeading(runes)
	local ward = SpawnMob(zone, 4701741, 1, X + math.random(-3,3), Y, Z + math.random(-3,3), heading)
	AddSpawnAccess(ward, Player)
	UpdateQuestStepDescription(Quest, 2, "I have planted the Beza ward.")
	SendMessage(Player, "You place the Beza ward.")
	CheckProgress(Quest, QuestGiver, Player)
	RemoveSpawnAccess(runes, Player)
end

function PlantedCaza(Quest, QuestGiver, Player)
	local zone = GetZone(Player)
	local runes = GetSpawnByLocationID(zone, 572695)
	local X = GetX(runes)
	local Y = GetY(runes)
	local Z = GetZ(runes)
	local heading = GetHeading(runes)
	local ward = SpawnMob(zone, 4701741, 1, X + math.random(-3,3), Y, Z + math.random(-3,3), heading)
	AddSpawnAccess(ward, Player)
	UpdateQuestStepDescription(Quest, 3, "I have planted the Caza ward.")
	SendMessage(Player, "You place the Caza ward.")
	CheckProgress(Quest, QuestGiver, Player)
	RemoveSpawnAccess(runes, Player)
end

function PlantedDena(Quest, QuestGiver, Player)
	local zone = GetZone(Player)
	local runes = GetSpawnByLocationID(zone, 572692)
	local X = GetX(runes)
	local Y = GetY(runes)
	local Z = GetZ(runes)
	local heading = GetHeading(runes)
	local ward = SpawnMob(zone, 4701741, 1, X + math.random(-3,3), Y, Z + math.random(-3,3), heading)
	AddSpawnAccess(ward, Player)
	UpdateQuestStepDescription(Quest, 4, "I have planted the Dena ward.")
	SendMessage(Player, "You place the Dena ward.")
	CheckProgress(Quest, QuestGiver, Player)
	RemoveSpawnAccess(runes, Player)
end

function PlantedEna(Quest, QuestGiver, Player)
	local zone = GetZone(Player)
	local runes = GetSpawnByLocationID(zone, 572696)
	local X = GetX(runes)
	local Y = GetY(runes)
	local Z = GetZ(runes)
	local heading = GetHeading(runes)
	local ward = SpawnMob(zone, 4701741, 1, X + math.random(-3,3), Y, Z + math.random(-3,3), heading)
	AddSpawnAccess(ward, Player)
	UpdateQuestStepDescription(Quest, 5, "I have planted the Ena ward.")
	SendMessage(Player, "You place the Ena ward.")
	CheckProgress(Quest, QuestGiver, Player)
	RemoveSpawnAccess(runes, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 35, 1) and QuestStepIsComplete(Player, 35, 2) and QuestStepIsComplete(Player, 35, 3) and QuestStepIsComplete(Player, 35, 4) and QuestStepIsComplete(Player, 35, 5) then
		AddStep6(Quest, QuestGiver, Player)
	end
end

function AddStep6(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have placed the spirit wards.")
	AddQuestStepChat(Quest, 6, "I must speak with Dolur Axebeard.", 1, "I must speak with Dolur Axebeard, who can be found in the cave at the Great Shelf.", 0, 4700078)
	AddQuestStepCompleteAction(Quest, 6, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
	RemoveItem(Player, 45448)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, 35, 1) then
	    PlantedAzia(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 35, 2) then
		PlantedBeza(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 35, 3) then
		PlantedCaza(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 35, 4) then
		PlantedDena(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 35, 5) then
		PlantedEna(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 35, 1) and QuestStepIsComplete(Player, 35, 2) and QuestStepIsComplete(Player, 35, 3) and QuestStepIsComplete(Player, 35, 4) and QuestStepIsComplete(Player, 35, 5) then
		AddStep6(Quest, QuestGiver, Player)
	end
end