--[[
    Script Name    : SpawnScripts/The Vault of the Fallen/KeeperoftheChamber.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.17 12:07:29
    Script Purpose : script for Keeper of the Chamber which gives a quest to open Tseralith Door.
                   : 
--]]

local TseralithDoorQuest = 5325

function spawn(NPC)
ProvidesQuest(NPC, TseralithDoorQuest)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, TseralithDoorQuest) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "How can I pass through the door?", "Option1")
		AddConversationOption(conversation, "Then I shall be leaving.")
	StartConversation(conversation, NPC, Spawn, "The power that holds the final door is strong. You can not proceed.")
	elseif GetQuestStep(Spawn, TseralithDoorQuest) == 31 then
	   Option2(NPC, Spawn)
	elseif HasQuest(Spawn, TseralithDoorQuest) and GetQuestStep(Spawn, TseralithDoorQuest) ~= 31  then
	   PlayFlavor(NPC, "", "The door is still holding strong. It cannot be opened", "", 0, 0, Spawn)
end
   end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will return with the seals.", "offer")
		AddConversationOption(conversation, "Then I shall be leaving.")
	StartConversation(conversation, NPC, Spawn, "The power of the dragoons holds this door shut. With their seals it can be broken.")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TseralithDoorQuest)
end

function Option2(NPC, Spawn)
    	local conversation = CreateConversation()
	AddConversationOption(conversation, "Then you shall face your final rest.", "Keeper_Attack")
	StartConversation(conversation, NPC, Spawn, "You can not enter. I will stop you.")
end

function Keeper_Attack(NPC, Spawn) -- ATTACK STAGE
SetStepComplete(Spawn, TseralithDoorQuest, 31)
PlayFlavor(NPC, "", "You are not allowed in here.", "", 0, 0, Spawn)
SpawnSet(NPC, "faction", 1)
SpawnSet(NPC, "attackable", 1)
SpawnSet(NPC, "show_level", 1)
Attack(NPC, Spawn)
end

function death(NPC, Spawn) -- OPEN DOORS TO ROOM WITH TSERALITH UPON DEATH
	local door = GetSpawn(NPC, 6420017)
	local door2 = GetSpawn(NPC, 6420018)
     OpenDoor(door)
     OpenDoor(door2)
    local zone = GetZone(Spawn)
    local tseralith = GetSpawnByLocationID(zone, 345623)
    if tseralith == nil then
     SpawnByLocationID(zone, 345623)
     end
end
   

function respawn(NPC)
	spawn(NPC)
end