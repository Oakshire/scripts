--[[
	Script Name	: SpawnScripts/KylongPlains/asokokartamer.lua
	Script Purpose	: a stable master (2620004)
	Script Author	: Neatz09
	Script Date	: 4/15/2019
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
    
	if GetSpawnLocationID(NPC) == 612480	 then
		--Dreg's Landing--
		AddConversationOption(con, "To Fens of Nathsar", "DregsToFens")
		AddConversationOption(con, "To Highton.", "DregsToHighton")
		AddConversationOption(con, "To Jarsath Wastes.", "DregsToJarsath")
		AddConversationOption(con, "To Kunzar's Edge.", "DregsToKunzar")
		AddConversationOption(con, "To Teren's Grasp.", "DregsToTeren")
	elseif GetSpawnLocationID(NPC) == 612479 then
		--Kunzar's Edge--
	    AddConversationOption(con, "To Dreg's Landing.", "KunzarToDregs")
	    AddConversationOption(con, "To Fens of Nathsar.", "KunzarToFens")
	    AddConversationOption(con, "To Highton.", "KunzarToHighton")
	    AddConversationOption(con, "To Jarsath Wastes.", "KunzarToJarsath")
		AddConversationOption(con, "To Teren's Grasp.", "KunzarToTeren")
	elseif GetSpawnLocationID(NPC) == 365542 then
		--Fens of Nathsar--
		AddConversationOption(con, "To Dreg's Landing.", "FensToDregs")
	    AddConversationOption(con, "To Highton.", "FensToHighton")
	    AddConversationOption(con, "To Jarsath Wastes.", "FensToJarsath")
		AddConversationOption(con, "To Kunzar's Edge.", "FensToKunzar")
	    AddConversationOption(con, "To Teren's Grasp.", "FensToTeren")
	elseif GetSpawnLocationID(NPC) == 365543 then
		--Teren's Grasp(possibly missing Kunzar Edge Path)--
	    AddConversationOption(con, "To Dreg's Landing.", "TerenToDregs")
	    AddConversationOption(con, "To Fens of Nathsar.", "TerenToFens")
	    AddConversationOption(con, "To Highton.", "TerenToHighton")
	    AddConversationOption(con, "To Jarsath Wastes.", "TerenToJarsath")
	elseif GetSpawnLocationID(NPC) == 612481 then
		--Highton--
	    AddConversationOption(con, "To Dreg's Landing.", "HightonToDregs")
	    AddConversationOption(con, "To Fens of Nathsar.", "HightonToFens")
	    AddConversationOption(con, "To Kunzar's Edge.", "HightonToKunzar")
	    AddConversationOption(con, "To Jarsath Wastes.", "HightonToJarsath")
		AddConversationOption(con, "To Teren's Grap.", "HightonToTeren")
	elseif GetSpawnLocationID(NPC) == 612482 then
		--Jarsath Wastes--
		AddConversationOption(con, "To Dreg's Landing.", "JarsathToDregs")
		AddConversationOption(con, "To Fens of Nathsar.", "JarsathToFens")
		AddConversationOption(con, "To Highton.", "JarsathToHighton")
		AddConversationOption(con, "To Kunzar's Edge.", "JarsathToKunzar")
		AddConversationOption(con, "To Teren's Grasp.", "JarsathToTeren")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function DregsToFens(NPC, Spawn)
	StartAutoMount(Spawn, 308)
	SetMount(Spawn, 7253)
end

function DregsToHighton(NPC, Spawn)
	StartAutoMount(Spawn, 310)
	SetMount(Spawn, 7253)
end

function DregsToJarsath(NPC, Spawn)
	StartAutoMount(Spawn, 328)
	SetMount(Spawn, 7253)
end

function DregsToKunzar(NPC, Spawn)
	StartAutoMount(Spawn, 309)
	SetMount(Spawn, 7253)
end

function DregsToTeren(NPC, Spawn)
	StartAutoMount(Spawn, 307)
	SetMount(Spawn, 7253)
end

function KunzarToDregs(NPC, Spawn)
	StartAutoMount(Spawn, 311)
	SetMount(Spawn, 7253)
end

function KunzarToFens(NPC, Spawn)
	StartAutoMount(Spawn, 312)
	SetMount(Spawn, 7253)
end

function KunzarToHighton(NPC, Spawn)
	StartAutoMount(Spawn, 337)
	SetMount(Spawn, 7253)
end

function KunzarToJarsath(NPC, Spawn)
	StartAutoMount(Spawn, 336)
	SetMount(Spawn, 7253)
end

function KunzarToTerens(NPC, Spawn)
	StartAutoMount(Spawn, 313)
	SetMount(Spawn, 7253)
end

function TerenToDregs(NPC, Spawn)
	StartAutoMount(Spawn, 317)
	SetMount(Spawn, 7253)
end

function TerenToFens(NPC, Spawn)
	StartAutoMount(Spawn, 318)
	SetMount(Spawn, 7253)
end

function TerenToHighton(NPC, Spawn)
	StartAutoMount(Spawn, 319)
	SetMount(Spawn, 7253)
end

function TerenToJarsath(NPC, Spawn)
	StartAutoMount(Spawn, 320)
	SetMount(Spawn, 7253)
end

function HightonToDregs(NPC, Spawn)
	StartAutoMount(Spawn, 323)
	SetMount(Spawn, 7253)
end

function HightonToFens(NPC, Spawn)
	StartAutoMount(Spawn, 331)
	SetMount(Spawn, 7253)
end

function HightonToJarsath(NPC, Spawn)
	StartAutoMount(Spawn, 322)
	SetMount(Spawn, 7253)
end

function HightonToKunzar(NPC, Spawn)
	StartAutoMount(Spawn, 332)
	SetMount(Spawn, 7253)
end

function HightonToTeren(NPC, Spawn)
	StartAutoMount(Spawn, 321)
	SetMount(Spawn, 7253)
end

function JarsathToDregs(NPC, Spawn)
	StartAutoMount(Spawn, 335)
	SetMount(Spawn, 7253)
end

function JarsathToFens(NPC, Spawn)
	StartAutoMount(Spawn, 333)
	SetMount(Spawn,7253)
end

function JarsathToHighton(NPC, Spawn)
	StartAutoMount(Spawn, 324)
	SetMount(Spawn, 7253)
end

function JarsathToKunzar(NPC, Spawn)
	StartAutoMount(Spawn, 334)
	SetMount(Spawn, 7253)
end

function JarsathToTerens(NPC, Spawn)
	StartAutoMount(Spawn, 325)
	SetMount(Spawn, 7253)
end

function FensToDregs(NPC, Spawn)
	StartAutoMount(Spawn, 315)
	SetMount(Spawn, 7253)
end

function FensToHighton(NPC, Spawn)
	StartAutoMount(Spawn, 330)
	SetMount(Spawn,7253)
end

function FensToJarsath(NPC, Spawn)
	StartAutoMount(Spawn, 329)
	SetMount(Spawn, 7253)
end

function FensToKunzar(NPC, Spawn)
	StartAutoMount(Spawn, 316)
	SetMount(Spawn, 7253)
end

function FensToTeren(NPC, Spawn)
	StartAutoMount(Spawn, 314)
	SetMount(Spawn, 7253)
end