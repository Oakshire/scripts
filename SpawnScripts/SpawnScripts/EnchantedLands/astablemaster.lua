--[[
	Script Name	: SpawnScripts/EnchantedLands/astablemaster.lua
	Script Purpose	: a stable master (390024)
	Script Author	: Neatz09
	Script Date	: 4/14/2019
	Script Notes	: 
--]]

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	conversation = CreateConversation()
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1042.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_1_1")
		AddConversationOption(conversation, "Nowhere.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local con = CreateConversation()
    
	if GetSpawnLocationID(NPC) == 1106628	 then
		AddConversationOption(con, "To Bramblefoot Hills", "GoblinToFoothills")
		AddConversationOption(con, "To Chomper's Pond.", "GoblinToChomper")
		AddConversationOption(con, "To The Docks.", "GoblinToDocks")
		AddConversationOption(con, "To The Great Guard.", "GoblinToGuard")
		AddConversationOption(con, "To Misty Grove.", "GoblinToGrove")
		AddConversationOption(con, "To Rivervale.", "GoblinToRivervale")
	elseif GetSpawnLocationID(NPC) == 1106624 then
	    AddConversationOption(con, "To Chomper's Pond.", "FoothillsToChomper")
	    AddConversationOption(con, "To The Docks.", "FoothillsToDocks")
	    AddConversationOption(con, "To Goblin Pass.", "FoothillsToGoblin")
	    AddConversationOption(con, "To The Great Guard.", "FoothillsToGuard")
		AddConversationOption(con, "To Misty Grove.", "FoothillsToGrove")
		AddConversationOption(con, "To Rivervale.", "FoothillsToRivervale")
	elseif GetSpawnLocationID(NPC) == 1106623 then
		AddConversationOption(con, "To Bramblefoot Hills.", "GroveToFoothills")
	    AddConversationOption(con, "To Chomper's Pond.", "GroveToChomper")
	    AddConversationOption(con, "To The Docks.", "GroveToDocks")
		AddConversationOption(con, "To Goblin Pass.", "GroveToGoblin")
	    AddConversationOption(con, "To The Great Guard.", "GroveToGuard")
		AddConversationOption(con, "To Rivervale.", "GroveToRivervale")
	elseif GetSpawnLocationID(NPC) == 1106625 then
	    AddConversationOption(con, "To Bramblefoot Hills.", "RivervaleToFoothills")
	    AddConversationOption(con, "To Chomper's Pond.", "RivervaleToChomper")
	    AddConversationOption(con, "To The Docks.", "RivervaleToDocks")
	    AddConversationOption(con, "To Goblin Pass.", "RivervaleToGoblin")
		AddConversationOption(con, "To The Great Guard.", "RivervaleToGuard")
		AddConversationOption(con, "To Misty Grove.", "RivervaleToGrove")
	elseif GetSpawnLocationID(NPC) == 1106627 then
	    AddConversationOption(con, "To Bramblefoot Hills.", "DocksToFoothills")
	    AddConversationOption(con, "To Chomper's Pond.", "DocksToChomper")
	    AddConversationOption(con, "To Goblin Pass.", "DocksToGoblin")
	    AddConversationOption(con, "To The Great Guard.", "DocksToGuard")
		AddConversationOption(con, "To Misty Grove.", "DocksToGrove")
		AddConversationOption(con, "To Rivervale.", "DocksToRivervale")
	elseif GetSpawnLocationID(NPC) == 1106629 then
		AddConversationOption(con, "To Bramblefoot Hills.", "GuardToFoothills")
		AddConversationOption(con, "To Chomper's Pond.", "GuardToChomper")
		AddConversationOption(con, "To The Docks.", "GuardToDocks")
		AddConversationOption(con, "To Goblin Pass.", "GuardToGoblin")
		AddConversationOption(con, "To Misty Grove.", "GuardToGrove")
		AddConversationOption(con, "To Rivervale.", "GuardToRivervale")
	elseif GetSpawnLocationID(NPC) == 1106626 then
		AddConversationOption(con, "To Bramblefoot Hills.", "ChomperToFoothills")
		AddConversationOption(con, "To The Docks.", "ChomperToDocks")
		AddConversationOption(con, "To Goblin Pass.", "ChomperToGoblin")
		AddConversationOption(con, "To The Great Guard.", "ChomperToGuard")
		AddConversationOption(con, "To Misty Grove.", "ChomperToGrove")
		AddConversationOption(con, "To Rivervale.", "ChomperToRivervale")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function GoblinToFoothills(NPC, Spawn)
	StartAutoMount(Spawn, 29)
	SetMount(Spawn, 6846)
end

function GoblinToChomper(NPC, Spawn)
	StartAutoMount(Spawn, 59)
	SetMount(Spawn, 6846)
end

function GoblinToDocks(NPC, Spawn)
	StartAutoMount(Spawn, 60)
	SetMount(Spawn, 6846)
end

function GoblinToGuard(NPC, Spawn)
	StartAutoMount(Spawn, 28)
	SetMount(Spawn, 6846)
end

function GoblinToGrove(NPC, Spawn)
	StartAutoMount(Spawn, 61)
	SetMount(Spawn, 6846)
end

function GoblinToRivervale(NPC, Spawn)
	StartAutoMount(Spawn, 58)
	SetMount(Spawn, 6846)
end

function FoothillsToChomper(NPC, Spawn)
	StartAutoMount(Spawn, 30)
	SetMount(Spawn, 6846)
end

function FoothillsToDocks(NPC, Spawn)
	StartAutoMount(Spawn, 48)
	SetMount(Spawn, 6846)
end

function FoothillsToGoblin(NPC, Spawn)
	StartAutoMount(Spawn, 32)
	SetMount(Spawn, 6846)
end

function FoothillsToGuard(NPC, Spawn)
	StartAutoMount(Spawn, 47)
	SetMount(Spawn, 6846)
end

function FoothillsToGrove(NPC, Spawn)
	StartAutoMount(Spawn, 31)
	SetMount(Spawn, 6846)
end

function FoothillsToRivervale(NPC, Spawn)
	StartAutoMount(Spawn, 46)
	SetMount(Spawn, 6846)
end

function GroveToFoothills(NPC, Spawn)
	StartAutoMount(Spawn, 34)
	SetMount(Spawn, 6846)
end

function GroveToChomper(NPC, Spawn)
	StartAutoMount(Spawn, 33)
	SetMount(Spawn, 6846)
end

function GroveToDocks(NPC, Spawn)
	StartAutoMount(Spawn, 54)
	SetMount(Spawn, 6846)
end

function GroveToGoblin(NPC, Spawn)
	StartAutoMount(Spawn, 53)
	SetMount(Spawn, 6846)
end

function GroveToGuard(NPC, Spawn)
	StartAutoMount(Spawn, 52)
	SetMount(Spawn, 6846)
end

function GroveToRivervale(NPC, Spawn)
	StartAutoMount(Spawn, 51)
	SetMount(Spawn, 6846)
end

function RivervaleToFoothills(NPC, Spawn)
	StartAutoMount(Spawn, 39)
	SetMount(Spawn, 6846)
end

function RivervaleToChomper(NPC, Spawn)
	StartAutoMount(Spawn, 24)
	SetMount(Spawn, 6846)
end

function RivervaleToDocks(NPC, Spawn)
	StartAutoMount(Spawn, 22)
	SetMount(Spawn,6846)
end

function RivervaleToGoblin(NPC, Spawn)
	StartAutoMount(Spawn, 41)
	SetMount(Spawn, 6846)
end

function RivervaleToGuard(NPC, Spawn)
	StartAutoMount(Spawn, 23)
	SetMount(Spawn, 6846)
end

function RivervaleToGrove(NPC, Spawn)
	StartAutoMount(Spawn, 40)
	SetMount(Spawn, 6846)
end

function DocksToFoothills(NPC, Spawn)
	StartAutoMount(Spawn, 43)
	SetMount(Spawn, 6846)
end

function DocksToChomper(NPC, Spawn)
	StartAutoMount(Spawn, 42)
	SetMount(Spawn, 6846)
end

function DocksToGoblin(NPC, Spawn)
	StartAutoMount(Spawn, 45)
	SetMount(Spawn, 6846)
end

function DocksToGuard(NPC, Spawn)
	StartAutoMount(Spawn, 21)
	SetMount(Spawn, 6846)
end

function DocksToGrove(NPC, Spawn)
	StartAutoMount(Spawn, 44)
	SetMount(Spawn, 6846)
end

function DocksToRivervale(NPC, Spawn)
	StartAutoMount(Spawn, 20)
	SetMount(Spawn, 6846)
end

function GuardToFoothills(NPC, Spawn)
	StartAutoMount(Spawn, 56)
	SetMount(Spawn, 6846)
end

function GuardToChomper(NPC, Spawn)
	StartAutoMount(Spawn, 55)
	SetMount(Spawn, 6846)
end

function GuardToDocks(NPC, Spawn)
	StartAutoMount(Spawn, 25)
	SetMount(Spawn, 6846)
end

function GuardToGoblin(NPC, Spawn)
	StartAutoMount(Spawn, 26)
	SetMount(Spawn, 6846)
end

function GuardToGrove(NPC, Spawn)
	StartAutoMount(Spawn, 57)
	SetMount(Spawn, 6846)
end

function GuardToRivervale(NPC, Spawn)
	StartAutoMount(Spawn, 27)
	SetMount(Spawn, 6846)
end

function ChomperToFoothills(NPC, Spawn)
	StartAutoMount(Spawn, 35)
	SetMount(Spawn, 6846)
end

function ChomperToDocks(NPC, Spawn)
	StartAutoMount(Spawn, 50)
	SetMount(Spawn, 6846)
end

function ChomperToGoblin(NPC, Spawn)
	StartAutoMount(Spawn, 49)
	SetMount(Spawn, 6846)
end

function ChomperToGuard(NPC, Spawn)
	StartAutoMount(Spawn, 37)
	SetMount(Spawn, 6846)
end

function ChomperToGrove(NPC, Spawn)
	StartAutoMount(Spawn, 36)
	SetMount(Spawn, 6846)
end

function ChomperToRivervale(NPC, Spawn)
	StartAutoMount(Spawn, 38)
	SetMount(Spawn, 6846)
end
