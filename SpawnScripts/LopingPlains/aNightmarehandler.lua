--[[
	Script Name	: SpawnScripts/LopingPlains/anightmarehandler.lua
	Script Purpose	: a nightmare handler (1160002)
	Script Author	: Neatz09
	Script Date	: 4/14/2019
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
    
	if GetSpawnLocationID(NPC) == 367286	 then
		AddConversationOption(con, "To Greater Faydark", "SombornToGFay")
		AddConversationOption(con, "To Lesser Faydark.", "SombornToLFay")
		AddConversationOption(con, "To Steamfont Mountains.", "SombornToSFM")
		AddConversationOption(con, "To Timorous Moor.", "SombornToTM")
	elseif GetSpawnLocationID(NPC) == 367289 then
	    AddConversationOption(con, "To Greater Faydark.", "LFayToGFay")
	    AddConversationOption(con, "To Somborn.", "LFayToSomborn")
	    AddConversationOption(con, "To Steamfont Mountains.", "LFayToSFM")
	    AddConversationOption(con, "To Timorous Moor.", "LFayToTM")
	elseif GetSpawnLocationID(NPC) == 367287 then
		AddConversationOption(con, "To Lesser Faydark.", "GFayToLFay")
	    AddConversationOption(con, "To Somborn.", "GFayToSomborn")
	    AddConversationOption(con, "To Steamfont Mountains.", "GFayToSFM")
		AddConversationOption(con, "To Timorous Moor.", "GFayToTM")
	elseif GetSpawnLocationID(NPC) == 367288 then
	    AddConversationOption(con, "To Greater Faydark.", "TMToGFay")
	    AddConversationOption(con, "To Lesser Faydark.", "TMToLFay")
	    AddConversationOption(con, "To Somborn.", "TMToSomborn")
	    AddConversationOption(con, "To Steamfont Mountains.", "TMToSFM")
	elseif GetSpawnLocationID(NPC) ==  367285 then
	    AddConversationOption(con, "To Greater Faydark.", "SFMToGFay")
	    AddConversationOption(con, "To Lesser Faydark.", "SFMTToLFay")
	    AddConversationOption(con, "To Somborn.", "SFMTToSomborn")
	    AddConversationOption(con, "To Timorous Moor.", "SFMToTM")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function SombornToGFay(NPC, Spawn)
	StartAutoMount(Spawn, 970)
	SetMount(Spawn, 8211)
end

function SombornToLFay(NPC, Spawn)
	StartAutoMount(Spawn, 972)
	SetMount(Spawn, 8211)
end

function SombornToSFM(NPC, Spawn)
	StartAutoMount(Spawn, 976)
	SetMount(Spawn, 8211)
end

function SombornToTM(NPC, Spawn)
	StartAutoMount(Spawn, 974)
	SetMount(Spawn, 8211)
end

function LFayToGFay(NPC, Spawn)
	StartAutoMount(Spawn, 977)
	SetMount(Spawn, 8211)
end

function LFayToSomborn(NPC, Spawn)
	StartAutoMount(Spawn, 971)
	SetMount(Spawn, 8211)
end

function LFayToSFM(NPC, Spawn)
	StartAutoMount(Spawn, 979)
	SetMount(Spawn, 8211)
end

function LFayToTM(NPC, Spawn)
	StartAutoMount(Spawn, 978)
	SetMount(Spawn, 8211)
end

function GFayToLFay(NPC, Spawn)
	StartAutoMount(Spawn, 980)
	SetMount(Spawn, 8211)
end

function GFayToSomborn(NPC, Spawn)
	StartAutoMount(Spawn, 969)
	SetMount(Spawn, 8211)
end

function GFayToSFM(NPC, Spawn)
	StartAutoMount(Spawn, 982)
	SetMount(Spawn, 8211)
end

function GFayToTM(NPC, Spawn)
	StartAutoMount(Spawn, 981)
	SetMount(Spawn, 8211)
end

function TMToGFay(NPC, Spawn)
	StartAutoMount(Spawn, 983)
	SetMount(Spawn, 8211)
end

function TMToLFay(NPC, Spawn)
	StartAutoMount(Spawn, 984)
	SetMount(Spawn, 8211)
end

function TMToSomborn(NPC, Spawn)
	StartAutoMount(Spawn, 973)
	SetMount(Spawn, 8211)
end

function TMToSFM(NPC, Spawn)
	StartAutoMount(Spawn, 985)
	SetMount(Spawn, 8211)
end

function SFMToGFay(NPC, Spawn)
	StartAutoMount(Spawn, 986)
	SetMount(Spawn, 8211)
end

function SFMToLFay(NPC, Spawn)
	StartAutoMount(Spawn, 987)
	SetMount(Spawn, 8211)
end

function SFMToSomborn(NPC, Spawn)
	StartAutoMount(Spawn, 975)
	SetMount(Spawn, 8211)
end

function SFMToTM(NPC, Spawn)
	StartAutoMount(Spawn, 988)
	SetMount(Spawn,8211)
end