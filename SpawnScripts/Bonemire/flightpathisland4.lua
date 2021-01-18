--[[
    Script Name    : SpawnScripts/Bonemire/flightpathisland4.lua
    Script Author  : neatz09
    Script Date    : 2021.01.17 06:01:36
    Script Purpose : handles the flight clouds in bonemire
                   : 
--]]

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
if Message == "Travel the Skies" then
conversation = CreateConversation()
		AddConversationOption(conversation, "I would like to travel.", "dlg_1_1")
		AddConversationOption(conversation, "Nowhere.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	end
end
function dlg_1_1(NPC, Spawn)
    local con = CreateConversation()
    
	if GetSpawnLocationID(NPC) == 622550	 then
		--Ravasect Isle--
		AddConversationOption(con, "To Dreadnever Crash Site.", "RavasectToDreadnever")
	elseif GetSpawnLocationID(NPC) == 622546 then
		--Dreadnever--
	    AddConversationOption(con, "To Isle of Ravasect.", "DreadneverToRavasect")
	    AddConversationOption(con, "To Shattered Weir.", "DreadneverToWeir")
	    AddConversationOption(con, "To Halls of Fate.", "DreadneverToHalls")
		AddConversationOption(con, "Cacotoxic Stain.", "DreadneverToStain")
		AddConversationOption(con, "To Carrion Briar.", "DreadneverToCarrion")
	elseif GetSpawnLocationID(NPC) == 622594 then
		--Shattered Weir--
		AddConversationOption(con, "To Halls of Fate.", "WeirToFate")
	    AddConversationOption(con, "To Dreadnever Crash Site.", "WeirToDreadnever")
	elseif GetSpawnLocationID(NPC) == 622566 then
		--Halls of Fate--
	    AddConversationOption(con, "To Dreadnever Crash Site.", "HallsToDread")
	    AddConversationOption(con, "To Shattered Weir.", "HallsToWeir")
	elseif GetSpawnLocationID(NPC) == 622559 then
		--Carrion Briar--
	    AddConversationOption(con, "To Dreadnever Crash Site.", "CarrionToDreadnever")
	elseif GetSpawnLocationID(NPC) == 622555 then
		--Cacotoxic Stain--
	    AddConversationOption(con, "To Dreadnever Crash Site.", "StainToDreadnever")
	else
		Say(NPC, Spawn, "Not Implemented.")
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function RavasectToDreadnever(NPC, Spawn)
	StartAutoMount(Spawn, 812)
	SetMount(Spawn, 2306)
end

function DreadneverToRavasect(NPC, Spawn)
	StartAutoMount(Spawn, 808)
	SetMount(Spawn, 2306)
end

function DreadneverToWeir(NPC, Spawn)
	StartAutoMount(Spawn, 811)
	SetMount(Spawn, 2306)
end

function DreadneverToHalls(NPC, Spawn)
	StartAutoMount(Spawn, 807)
	SetMount(Spawn, 2306)
end

function DreadneverToStain(NPC, Spawn)
	StartAutoMount(Spawn, 809)
	SetMount(Spawn, 2306)
end

function DreadneverToCarrion(NPC, Spawn)
	StartAutoMount(Spawn, 810)
	SetMount(Spawn, 2306)
end

function WeirToFate(NPC, Spawn)
	StartAutoMount(Spawn, 816)
	SetMount(Spawn, 2306)
end

function WeirToDreadnever(NPC, Spawn)
	StartAutoMount(Spawn, 815)
	SetMount(Spawn, 2306)
end

function HallsToDread(NPC, Spawn)
	StartAutoMount(Spawn, 805)
	SetMount(Spawn, 2306)
end

function HallsToWeir(NPC, Spawn)
	StartAutoMount(Spawn, 806)
	SetMount(Spawn, 2306)
end

function CarrionToDreadnever(NPC, Spawn)
	StartAutoMount(Spawn, 814)
	SetMount(Spawn, 2306)
end

function StainToDreadnever(NPC, Spawn)
	StartAutoMount(Spawn, 813)
	SetMount(Spawn, 2306)
end