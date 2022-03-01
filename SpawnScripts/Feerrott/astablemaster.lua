--[[
	Script Name	: SpawnScripts/Feerrott/astablemaster.lua
	Script Purpose	: a stable master (2490000)
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
    
	if GetSpawnLocationID(NPC) == 242878 then
		AddConversationOption(con, "To Alliz Evol Station.", "CausewayToAllizEvol")
		AddConversationOption(con, "To Alliz Tae Station.", "CausewayToAllizTae")
		AddConversationOption(con, "To Dread Basin Station.", "CausewayToBasin")
		AddConversationOption(con, "To Greenblood River.", "CausewayToRiver")
		AddConversationOption(con, "To Tae Ew Station.", "CausewayToTaeEW")
		AddConversationOption(con, "To Tower of Vul Station.", "CausewayToVul")
	elseif GetSpawnLocationID(NPC) == 242877 then
	    AddConversationOption(con, "To Alliz Tae Station.", "EvolToTae")
	    AddConversationOption(con, "To Drowning Causeway Station.", "EvolToCauseway")
	    AddConversationOption(con, "To Dread Basin Station.", "EvolToBasin")
	    AddConversationOption(con, "To Greenblood River Station.", "EvolToRiver")
		AddConversationOption(con, "To Tae Ew Station.", "EvolToTaeEw")
		AddConversationOption(con, "To Tower of Vul Station.", "EvolToVul")
	elseif GetSpawnLocationID(NPC) == 242876 then
		AddConversationOption(con, "To Alliz Evol Station.", "RiverToEvol")
	    AddConversationOption(con, "To Alliz Tae Station.", "RiverToTae")
	    AddConversationOption(con, "To Dread Basin.", "RiverToBasin")
		AddConversationOption(con, "To Drowning Causeway Station.", "RiverToCauseway")
	    AddConversationOption(con, "To Tae Ew Station.", "RiverToTaeEw")
		AddConversationOption(con, "To Tower of Vul.", "RiverToVul")
	elseif GetSpawnLocationID(NPC) == 242872 then
	    AddConversationOption(con, "To Alliz Evol Station.", "TaeToEvol")
	    AddConversationOption(con, "To Drowning Causeway Station.", "TaeToCauseway")
	    AddConversationOption(con, "To Dread Basin Station.", "TaeToBasin")
	    AddConversationOption(con, "To Greenblood River Station.", "TaeToRiver")
		AddConversationOption(con, "To Tae Ew Station.", "TaeToTaeEw")
		AddConversationOption(con, "To Tower of Vul Station.", "TaeToVul")
	elseif GetSpawnLocationID(NPC) == 242871 then
	    AddConversationOption(con, "To Alliz Evol Station.", "BasinToEvol")
	    AddConversationOption(con, "To Alliz Tae Station.", "BasinToTae")
	    AddConversationOption(con, "To Drowning Causeway Station.", "BasinToCauseway")
	    AddConversationOption(con, "To Greenblood River Station.", "BasinToRiver")
		AddConversationOption(con, "To Tae Ew Station.", "BasinToTaeEw")
		AddConversationOption(con, "To Tower of Vul Station.", "BasinToVul")
	elseif GetSpawnLocationID(NPC) == 242875 then
		AddConversationOption(con, "To Alliz Evol Staton.", "TaeEwToEvol")
		AddConversationOption(con, "To Alliz Tae Station.", "TaeEwToTae")
		AddConversationOption(con, "To Dread Basin Station.", "TaeEwToBasin")
		AddConversationOption(con, "To Drowning Causeway Station.", "TaeEwToCauseway")
		AddConversationOption(con, "To Greenblood River Station.", "TaeEwToRiver")
		AddConversationOption(con, "To Tower of Vul Station.", "TaeEwToVul")
	elseif GetSpawnLocationID(NPC) == 242873 then
		AddConversationOption(con, "To Alliz Evol Station.", "VulToEvol")
		AddConversationOption(con, "To Alliz Tae Station.", "VulToTae")
		AddConversationOption(con, "To Dread Basin Station.", "VulToBasin")
		AddConversationOption(con, "To Drowning Causeway Station.", "VulToCauseway")
		AddConversationOption(con, "To Greenblood River Station.", "VulToRiver")
		AddConversationOption(con, "To Tae Ew Station.", "VulToTaeEw")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function CausewayToAllizEvol(NPC, Spawn)
	StartAutoMount(Spawn, 265)
	SetMount(Spawn, 6846)
end

function CausewayToAllizTae(NPC, Spawn)
	StartAutoMount(Spawn, 294)
	SetMount(Spawn, 6846)
end

function CausewayToBasin(NPC, Spawn)
	StartAutoMount(Spawn, 292)
	SetMount(Spawn, 6846)
end

function CausewayToRiver(NPC, Spawn)
	StartAutoMount(Spawn, 293)
	SetMount(Spawn, 6846)
end

function CausewayToVul(NPC, Spawn)
	StartAutoMount(Spawn, 291)
	SetMount(Spawn, 6846)
end

function CausewayToTaeEW(NPC, Spawn)
	StartAutoMount(Spawn, 295)
	SetMount(Spawn, 6846)
end

function EvolToTae(NPC, Spawn)
	StartAutoMount(Spawn, 281)
	SetMount(Spawn, 6846)
end

function EvolToCauseway(NPC, Spawn)
	StartAutoMount(Spawn, 266)
	SetMount(Spawn, 6846)
end

function EvolToBasin(NPC, Spawn)
	StartAutoMount(Spawn, 280)
	SetMount(Spawn, 6846)
end

function EvolToRiver(NPC, Spawn)
	StartAutoMount(Spawn, 267)
	SetMount(Spawn, 6846)
end

function EvolToTaeEw(NPC, Spawn)
	StartAutoMount(Spawn, 268)
	SetMount(Spawn, 6846)
end

function EvolToVul(NPC, Spawn)
	StartAutoMount(Spawn, 279)
	SetMount(Spawn, 6846)
end

function RiverToEvol(NPC, Spawn)
	StartAutoMount(Spawn, 269)
	SetMount(Spawn, 6846)
end

function RiverToTae(NPC, Spawn)
	StartAutoMount(Spawn, 302)
	SetMount(Spawn, 6846)
end

function RiverToBasin(NPC, Spawn)
	StartAutoMount(Spawn, 300)
	SetMount(Spawn, 6846)
end

function RiverToCauseway(NPC, Spawn)
	StartAutoMount(Spawn, 301)
	SetMount(Spawn, 6846)
end

function RiverToTaeEw(NPC, Spawn)
	StartAutoMount(Spawn, 270)
	SetMount(Spawn, 6846)
end

function RiverToVul(NPC, Spawn)
	StartAutoMount(Spawn, 299)
	SetMount(Spawn, 6846)
end

function TaeToEvol(NPC, Spawn)
	StartAutoMount(Spawn, 285)
	SetMount(Spawn, 6846)
end

function TaeToCauseway(NPC, Spawn)
	StartAutoMount(Spawn, 283)
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