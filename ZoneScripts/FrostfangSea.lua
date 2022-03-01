--[[
	Script Name	: ZoneScripts/FrostfangSea.lua
	Script Purpose	: Frostfang Sea
	Script Author	: theFoof
	Script Date	: 2013.5.8
	Script Notes	: 
--]]

local BoatloadWork = 4

local ScatteringAshes = 33

local CallingBack = 35

local AllRemains = 54

local RyGorrOperations = 60

local SometimesKnut = 84

local ScrollId = 4

function init_zone_script(Zone)
    SetLocationProximityFunction(Zone, -316.244, 35.409, -714.906, 10, "BarricadeMessage")
	SetLocationProximityFunction(Zone, 607, 66.2, -506.50, 20, "AshesMessage")
	SetLocationProximityFunction(Zone, 600, 28, -263, 5, "SnowRunesMessage")
	SetLocationProximityFunction(Zone, 581, 37, -339, 5, "SnowRunesMessage")
	SetLocationProximityFunction(Zone, 507, 27, -232, 5, "SnowRunesMessage")
	SetLocationProximityFunction(Zone, 584, 24, -155, 5, "SnowRunesMessage")
	SetLocationProximityFunction(Zone, 581, 27, -212, 5, "SnowRunesMessage")
	SetLocationProximityFunction(Zone, 751, 54, -514, 15, "SpawnHelmOrc")
	SetLocationProximityFunction(Zone, 52, 28, -358, 50, "VerienAccess")
	SetLocationProximityFunction(Zone, -15.27, -67.54, 155.07, 10, "BarrelMessage")
	SetLocationProximityFunction(Zone, 15.45, -67.92, 202.55, 30, "GrizChat1")
	SetLocationProximityFunction(Zone, 76.65, -67.91, 128.64, 10, "GrizChat3")
	SetLocationProximityFunction(Zone, 152.12, -63.42, 144.76, 20, "GrizChat4")
	SetLocationProximityFunction(Zone, 199.96, -54.40, 118.51, 20, "GrizChat5")
	SetLocationProximityFunction(Zone, 244.79, -53.49, 54.79, 8, "GrizChat6")
	SetLocationProximityFunction(Zone, -7.80, -66.88, 232.48, 15, "GrizChat8")
end

function BarricadeMessage(Zone, Spawn)
    if GetQuestStep(Spawn, BoatloadWork) == 3 then
        SendPopUpMessage(Spawn, "This is the break in the barricade Yasha sent you to fix.", 255, 255, 255)
    end
end

function player_entry(Zone, Player)
    if not HasItem(ScrollId) then
        GiveLoot(Player, ScrollId)
    end
end

function AshesMessage(Zone, Spawn)
    if GetQuestStep(Spawn, ScatteringAshes) == 1 then
        SendPopUpMessage(Spawn, "This looks like a good location to scatter the ashes.", 255, 255, 255)
	end
end

function SnowRunesMessage(Zone, Spawn)
	if HasQuest(Spawn, CallingBack) then
	    SendPopUpMessage(Spawn, "You see glowing blue runes in the snow.", 255, 255, 255)
	end
end

function SpawnHelmOrc(Zone, Spawn)
	if GetQuestStep(Spawn, AllRemains) == 2 then
		SpawnByLocationID(Zone, 33474)
	end
end

function VerienAccess(Zone, Spawn)
	AddSpawnAccess(GetSpawn(Spawn, 4700034), Spawn)
end

function BarrelMessage(Zone, Spawn)
	if GetQuestStep(Spawn, RyGorrOperations) == 1 then
		SendMessage(Spawn, "This seems like a good distance from the wall to place the Ry'Gorr Explosive Mining Barrel.")
	end
end

function GrizChat1(Zone, Spawn)
	if GetQuestStep(Spawn, SometimesKnut) == 1 then
		if HasItemEquipped(Spawn, 157116) then
			conversation = CreateConversation()
			AddConversationOption(conversation, "Ack!  I can hear you?", "GrizChat1_1")
			StartDialogConversation(conversation, 4, GetEquippedItemByID(Spawn, 157116), Spawn, "Prey's trail cold here.")
		end
	end
end

function GrizChat3(Zone, Spawn)
	if GetQuestStep(Spawn, SometimesKnut) == 1 then
		if HasItemEquipped(Spawn, 157116) then
			conversation = CreateConversation()
			AddConversationOption(conversation, "Thank you, Grizz.")
			StartDialogConversation(conversation, 4, GetEquippedItemByID(Spawn, 157116), Spawn, "Prey is within striking distance!")
		end
	end
end

function GrizChat4(Zone, Spawn)
	if GetQuestStep(Spawn, SometimesKnut) == 2 then
		if HasItemEquipped(Spawn, 157116) then
			conversation = CreateConversation()
			AddConversationOption(conversation, "Finally!")
			StartDialogConversation(conversation, 4, GetEquippedItemByID(Spawn, 157116), Spawn, "Prey's trail grows warm!")
		end
	end
end

function GrizChat5(Zone, Spawn)
	if GetQuestStep(Spawn, SometimesKnut) == 2 then
		if HasItemEquipped(Spawn, 157116) then
			conversation = CreateConversation()
			AddConversationOption(conversation, "That's good to know!")
			StartDialogConversation(conversation, 4, GetEquippedItemByID(Spawn, 157116), Spawn, "Prey is close.")
		end
	end
end

function GrizChat6(Zone, Spawn)
	if GetQuestStep(Spawn, SometimesKnut) == 2 then
		if HasItemEquipped(Spawn, 157116) then
			conversation = CreateConversation()
			AddConversationOption(conversation, "This black shard?", "GrizChat2_1")
			StartDialogConversation(conversation, 4, GetEquippedItemByID(Spawn, 157116), Spawn, "This is it!  Strike our prey!")
		end
	end
end

function GrizChat8(Zone, Spawn)
	if GetQuestStep(Spawn, SometimesKnut) == 4 or GetQuestStep(Spawn, SometimesKnut) == 3 then
		if HasItemEquipped(Spawn, 157116) then
			conversation = CreateConversation()
			AddConversationOption(conversation, "I bet he's missing you.")
			StartDialogConversation(conversation, 4, GetEquippedItemByID(Spawn, 157116), Spawn, "Take Griz back to knut.")
		end
	end
end