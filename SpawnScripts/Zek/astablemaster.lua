--[[
	Script Name	: SpawnScripts/Zek/astablemaster.lua
	Script Purpose	: a stable master
	Script Author	: Neatz09
	Script Date	: 2/20/2019
	Script Notes	: 
--]]

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1042.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_1_1")
		AddConversationOption(conversation, "Nowhere.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local con = CreateConversation()
    
	if GetSpawnLocationID(NPC) == 1334955 then
		AddConversationOption(con, "To Defiled Forest Station.", "BridgeToForest")
		AddConversationOption(con, "To Refugee Station.", "BridgeToRefugee")
		AddConversationOption(con, "To Three Toes Station.", "BridgeToThreeToes")
		AddConversationOption(con, "To Warship Station.", "BridgetToWarship")
	elseif GetSpawnLocationID(NPC) == 1334957 then
	    AddConversationOption(con, "To Bridge Station.", "RefugeeToBridge")
	    AddConversationOption(con, "To Defiled Forest Station.", "RefugeeToForest")
	    AddConversationOption(con, "To Three Toes Station.", "RefugeeToThreeToes")
	    AddConversationOption(con, "To Warship Station.", "RefugeeToWarship")
	elseif GetSpawnLocationID(NPC) == 1334960 then
		AddConversationOption(con, "To Bridge Station.", "ThreeToesToBridge")
	    AddConversationOption(con, "To Defiled Forest Station.", "ThreeToesToForest")
	    AddConversationOption(con, "To Refugee Station.", "ThreeToesToRefugee")
		AddConversationOption(con, "To Warship Station.", "ThreeToesToWarship")
	elseif GetSpawnLocationID(NPC) == 1334954 then
	    AddConversationOption(con, "To Bridge Station.", "ForestToBridge")
	    AddConversationOption(con, "To Refugee Station.", "ForestToRefugee")
	    AddConversationOption(con, "To Three Toes Station.", "ForestToThreeToes")
	    AddConversationOption(con, "To Warship Station.", "ForestToWarship")
	elseif GetSpawnLocationID(NPC) == 1334958 then
	    AddConversationOption(con, "To Bridge Station.", "WarshipToBridge")
	    AddConversationOption(con, "To Defiled Forest.", "WarshipToForest")
	    AddConversationOption(con, "To Refugee Station.", "WarshipToRefugee")
	    AddConversationOption(con, "To Three Toes Station.", "WarshipToThreeToes")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function BridgeToForest(NPC, Spawn)
	StartAutoMount(Spawn, 79)
	SetMount(Spawn, 6846)
end

function BridgeToRefugee(NPC, Spawn)
	StartAutoMount(Spawn, 65)
	SetMount(Spawn, 6846)
end

function BridgeToThreeToes(NPC, Spawn)
	StartAutoMount(Spawn, 66)
	SetMount(Spawn, 6846)
end

function BridgeToWarship(NPC, Spawn)
	StartAutoMount(Spawn, 64)
	SetMount(Spawn, 6846)
end

function RefugeeToBridge(NPC, Spawn)
	StartAutoMount(Spawn, 80)
	SetMount(Spawn, 6846)
end

function RefugeeToForest(NPC, Spawn)
	StartAutoMount(Spawn, 76)
	SetMount(Spawn, 6846)
end

function RefugeeToThreeToes(NPC, Spawn)
	StartAutoMount(Spawn, 73)
	SetMount(Spawn, 6846)
end

function RefugeeToWarship(NPC, Spawn)
	StartAutoMount(Spawn, 81)
	SetMount(Spawn, 6846)
end

function ThreeToesToBridge(NPC, Spawn)
	StartAutoMount(Spawn, 83)
	SetMount(Spawn, 6846)
end

function ThreeToesToForest(NPC, Spawn)
	StartAutoMount(Spawn, 82)
	SetMount(Spawn, 6846)
end

function ThreeToesToRefugee(NPC, Spawn)
	StartAutoMount(Spawn, 72)
	SetMount(Spawn, 6846)
end

function ThreeToesToWarship(NPC, Spawn)
	StartAutoMount(Spawn, 75)
	SetMount(Spawn, 6846)
end

function ForestToBridge(NPC, Spawn)
	StartAutoMount(Spawn, 78)
	SetMount(Spawn, 6846)
end

function ForestToRefugee(NPC, Spawn)
	StartAutoMount(Spawn, 77)
	SetMount(Spawn, 6846)
end

function ForestToThreeToes(NPC, Spawn)
	StartAutoMount(Spawn, 68)
	SetMount(Spawn, 6846)
end

function ForestToWarship(NPC, Spawn)
	StartAutoMount(Spawn, 67)
	SetMount(Spawn, 6846)
end

function WarshipToBridge(NPC, Spawn)
	StartAutoMount(Spawn, 69)
	SetMount(Spawn, 6846)
end

function WarshipToForest(NPC, Spawn)
	StartAutoMount(Spawn, 70)
	SetMount(Spawn, 6846)
end

function WarshipToRefugee(NPC, Spawn)
	StartAutoMount(Spawn, 71)
	SetMount(Spawn, 6846)
end

function WarshipToThreeToes(NPC, Spawn)
	StartAutoMount(Spawn, 74)
	SetMount(Spawn, 6846)
end

function TaeToBasin(NPC, Spawn)
	StartAutoMount(Spawn, 271)
	SetMount(Spawn,6846)
end

function TaeToRiver(NPC, Spawn)
	StartAutoMount(Spawn, 282)
	SetMount(Spawn, 6846)
end

function TaeToTaeEw(NPC, Spawn)
	StartAutoMount(Spawn, 284)
	SetMount(Spawn, 6846)
end

function TaeToVul(NPC, Spawn)
	StartAutoMount(Spawn, 284)
	SetMount(Spawn, 6846)
end

function BasinToEvol(NPC, Spawn)
	StartAutoMount(Spawn, 290)
	SetMount(Spawn, 6846)
end

function BasinToTae(NPC, Spawn)
	StartAutoMount(Spawn, 278)
	SetMount(Spawn, 6846)
end

function BasinToCauseway(NPC, Spawn)
	StartAutoMount(Spawn, 288)
	SetMount(Spawn, 6846)
end

function BasinToRiver(NPC, Spawn)
	StartAutoMount(Spawn, 287)
	SetMount(Spawn, 6846)
end

function BasinToTaeEw(NPC, Spawn)
	StartAutoMount(Spawn, 289)
	SetMount(Spawn, 6846)
end

function BasinToVul(NPC, Spawn)
	StartAutoMount(Spawn, 286)
	SetMount(Spawn, 6846)
end

function TaeEwToEvol(NPC, Spawn)
	StartAutoMount(Spawn, 272)
	SetMount(Spawn, 6846)
end

function TaeEwToTae(NPC, Spawn)
	StartAutoMount(Spawn, 298)
	SetMount(Spawn, 6846)
end

function TaeEwToBasin(NPC, Spawn)
	StartAutoMount(Spawn, 296)
	SetMount(Spawn, 6846)
end

function TaeEwToCauseway(NPC, Spawn)
	StartAutoMount(Spawn, 297)
	SetMount(Spawn, 6846)
end

function TaeEwToRiver(NPC, Spawn)
	StartAutoMount(Spawn, 273)
	SetMount(Spawn, 6846)
end

function TaeEwToVul(NPC, Spawn)
	StartAutoMount(Spawn, 274)
	SetMount(Spawn, 6846)
end

function VulToEvol(NPC, Spawn)
	StartAutoMount(Spawn, 290)
	SetMount(Spawn, 6846)
end

function VulToTae(NPC, Spawn)
	StartAutoMount(Spawn, 277)
	SetMount(Spawn, 6846)
end

function VulToBasin(NPC, Spawn)
	StartAutoMount(Spawn, 303)
	SetMount(Spawn, 6846)
end

function VulToCauseway(NPC, Spawn)
	StartAutoMount(Spawn, 305)
	SetMount(Spawn, 6846)
end

function VulToRiver(NPC, Spawn)
	StartAutoMount(Spawn, 304)
	SetMount(Spawn, 6846)
end

function VulToTaeEw(NPC, Spawn)
	StartAutoMount(Spawn, 276)
	SetMount(Spawn, 6846)
end