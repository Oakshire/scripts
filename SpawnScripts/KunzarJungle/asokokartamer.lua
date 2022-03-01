--[[
	Script Name	: SpawnScripts/KunzarJungle/asokokartamer.lua
	Script Purpose	: a sokokar Tamer (2610001)
	Script Author	: Neatz09
	Script Date	: 4/16/2019
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
    
	if GetSpawnLocationID(NPC) == 373743	 then
		--Fallen Village--
		AddConversationOption(con, "To Hidden Plunderers", "FallenToHidden")
		AddConversationOption(con, "To Jinisk.", "FallenToJinisk")
		AddConversationOption(con, "To Murkdweller's River.", "FallenToRiver")
		AddConversationOption(con, "To Outer Sebilis.", "FallenToSeb")
		AddConversationOption(con, "To Tabernacle of Pain.", "FallenToTab")
	elseif GetSpawnLocationID(NPC) == 373741 then
		--Hidden Plunderers--
	    AddConversationOption(con, "To Fallen Village.", "HiddenToFallen")
	    AddConversationOption(con, "To Jinisk.", "HiddenToJinisk")
	    AddConversationOption(con, "To Murkdweller's River.", "HiddenToRiver")
	    AddConversationOption(con, "To Outer Sebilis.", "HiddenToSeb")
		AddConversationOption(con, "To Tabernacle of Pain.", "HiddenToTab")
	elseif GetSpawnLocationID(NPC) == 373745 then
		--Jinisk--
		AddConversationOption(con, "To Fallen Village.", "JiniskToFallen")
	    AddConversationOption(con, "To Hidden Plunderers.", "JiniskToHidden")
	    AddConversationOption(con, "To Murkdweller's River.", "JiniskToRiver")
		AddConversationOption(con, "To Outer Sebilis.", "JiniskToSeb")
	    AddConversationOption(con, "To Tabernacle of Pain.", "JiniskToTab")
	elseif GetSpawnLocationID(NPC) == 373746 then
		--Murkdweller's River--
	    AddConversationOption(con, "To Fallen Village.", "RiverToFallen")
	    AddConversationOption(con, "To Hidden Plunderers.", "RiverToHidden")
	    AddConversationOption(con, "To Jinisk.", "RiverToJinisk")
	    AddConversationOption(con, "To Outer Sebilis", "RiverToSeb")
		AddConversationOption(con, "To Tabernacle of Pain", "RiverToTab")
	elseif GetSpawnLocationID(NPC) == 373742 then
		--Outer Sebilis--
	    AddConversationOption(con, "To Fallen Village.", "SebToFallen")
	    AddConversationOption(con, "To Hidden Plunderers.", "SebToHidden")
	    AddConversationOption(con, "To Jinisk.", "SebToJinisk")
	    AddConversationOption(con, "To Murkdweller's River.", "SebToRiver")
		AddConversationOption(con, "To Tabernacle of Pain.", "SebToTab")
	elseif GetSpawnLocationID(NPC) == 373744 then
		--Tabernacle of Pain--
		AddConversationOption(con, "To Fallen Village.", "TabToFallen")
		AddConversationOption(con, "To Hidden Plunderers.", "TabToHidden")
		AddConversationOption(con, "To Jinisk.", "TabToJinisk")
		AddConversationOption(con, "To Murkdweller's River.", "TabToRiver")
		AddConversationOption(con, "To Outer Sebilis.", "TabToSeb")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function FallenToHidden(NPC, Spawn)
	StartAutoMount(Spawn, 910)
	SetMount(Spawn, 7253)
end

function FallenToJinisk(NPC, Spawn)
	StartAutoMount(Spawn, 928)
	SetMount(Spawn, 7253)
end

function FallenToRiver(NPC, Spawn)
	StartAutoMount(Spawn, 929)
	SetMount(Spawn, 7253)
end

function FallenToSeb(NPC, Spawn)
	StartAutoMount(Spawn, 911)
	SetMount(Spawn, 7253)
end

function FallenToTab(NPC, Spawn)
	StartAutoMount(Spawn, 912)
	SetMount(Spawn, 7253)
end

function HiddenToFallen(NPC, Spawn)
	StartAutoMount(Spawn, 916)
	SetMount(Spawn, 7253)
end

function HiddenToJinisk(NPC, Spawn)
	StartAutoMount(Spawn, 917)
	SetMount(Spawn, 7253)
end

function HiddenToRiver(NPC, Spawn)
	StartAutoMount(Spawn, 932)
	SetMount(Spawn, 7253)
end

function HiddenToSeb(NPC, Spawn)
	StartAutoMount(Spawn, 930)
	SetMount(Spawn, 7253)
end

function HiddenToTab(NPC, Spawn)
	StartAutoMount(Spawn, 931)
	SetMount(Spawn, 7253)
end

function JiniskToFallen(NPC, Spawn)
	StartAutoMount(Spawn, 934)
	SetMount(Spawn, 7253)
end

function JiniskToHidden(NPC, Spawn)
	StartAutoMount(Spawn, 913)
	SetMount(Spawn, 7253)
end

function JiniskToRiver(NPC, Spawn)
	StartAutoMount(Spawn, 914)
	SetMount(Spawn, 7253)
end

function JiniskToSeb(NPC, Spawn)
	StartAutoMount(Spawn, 933)
	SetMount(Spawn, 7253)
end

function JiniskToTab(NPC, Spawn)
	StartAutoMount(Spawn, 915)
	SetMount(Spawn, 7253)
end

function RiverToFallen(NPC, Spawn)
	StartAutoMount(Spawn, 936)
	SetMount(Spawn, 7253)
end

function RiverToHidden(NPC, Spawn)
	StartAutoMount(Spawn, 935)
	SetMount(Spawn, 7253)
end

function RiverToJinisk(NPC, Spawn)
	StartAutoMount(Spawn, 918)
	SetMount(Spawn, 7253)
end

function RiverToSeb(NPC, Spawn)
	StartAutoMount(Spawn, 919)
	SetMount(Spawn, 7253)
end

function RiverToTab(NPC, Spawn)
	StartAutoMount(Spawn, 920)
	SetMount(Spawn, 7253)
end

function SebToFallen(NPC, Spawn)
	StartAutoMount(Spawn, 921)
	SetMount(Spawn,7253)
end

function SebToHidden(NPC, Spawn)
	StartAutoMount(Spawn, 937)
	SetMount(Spawn, 7253)
end

function SebToJinisk(NPC, Spawn)
	StartAutoMount(Spawn, 939)
	SetMount(Spawn, 7253)
end

function SebToRiver(NPC, Spawn)
	StartAutoMount(Spawn, 922)
	SetMount(Spawn, 7253)
end

function SebToTab(NPC, Spawn)
	StartAutoMount(Spawn, 938)
	SetMount(Spawn, 7253)
end

function TabToFallen(NPC, Spawn)
	StartAutoMount(Spawn, 923)
	SetMount(Spawn,7253)
end

function TabToHidden(NPC, Spawn)
	StartAutoMount(Spawn, 927)
	SetMount(Spawn, 7253)
end

function TabToJinisk(NPC, Spawn)
	StartAutoMount(Spawn, 924)
	SetMount(Spawn, 7253)
end

function TabToRiver(NPC, Spawn)
	StartAutoMount(Spawn, 925)
	SetMount(Spawn, 7253)
end

function TabToSeb(NPC, Spawn)
	StartAutoMount(Spawn, 926)
	SetMount(Spawn, 7253)
end