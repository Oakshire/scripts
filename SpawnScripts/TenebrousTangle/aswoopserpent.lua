--[[
	Script Name	: SpawnScripts/PillarsFlame/FlightCloud.lua
	Script Purpose	: Tenebrous Tangle Flight Cloud (880048)
	Script Author	: Neatz09
	Script Date	: 4/22/2019
	Script Notes	: 
--]]

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		AddConversationOption(conversation, "I would like to travel.", "dlg_1_1")
		AddConversationOption(conversation, "Nowhere.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local con = CreateConversation()
	
	if GetSpawnLocationID(NPC) == 622752	 then
		--Ravasect Incursion--
		AddConversationOption(con, "To Bixie Isle.", "RavToBixie")
		AddConversationOption(con, "To Gazer Isle.", "RavToGazer")
		AddConversationOption(con, "To Temple Grounds.", "RavToTemple")
	elseif GetSpawnLocationID(NPC) == 662668 then
		--Vultak Scavenging Site--
	    AddConversationOption(con, "To Fear Tainted Isle.", "VulToFear")
	    AddConversationOption(con, "To Halls Landing.", "VulToHalls")
	elseif GetSpawnLocationID(NPC) == 622666 then
		--Halls Landing--
		AddConversationOption(con, "To Vultak Scavenging Site.", "HallsToVul")
	elseif GetSpawnLocationID(NPC) == 622758 then
		--Hidden Refuge--
	    AddConversationOption(con, "To Tenebrous Landing.", "RefToTen")
	    AddConversationOption(con, "To Vicious Breeding Grounds.", "RefToVic")
	elseif GetSpawnLocationID(NPC) == 622755 then
		--Bixie Isle--
	    AddConversationOption(con, "To Ravasect Incursion.", "BixieToRav")
	    AddConversationOption(con, "To Temple Grounds.", "BixieToTemp")
	elseif GetSpawnLocationID(NPC) == 622756 then
		--Temple Grounds--
	    AddConversationOption(con, "To Bixie Isle.", "TempToBixie")
	    AddConversationOption(con, "To Ravasect Incursion.", "TempToRav")
	elseif GetSpawnLocationID(NPC) == 622757 then
		--Sanctum Landing--
	    AddConversationOption(con, "To Gazer Isle.", "SancToGazer")
	elseif GetSpawnLocationID(NPC) == 622750 then
		--Gazer Isle--
	    AddConversationOption(con, "To Fear Tainted Isle.", "GazerToFear")
	    AddConversationOption(con, "To Ravasect Incursion.", "GazerToRav")
	    AddConversationOption(con, "To Sanctum Landing.", "GazerToSanc")
	elseif GetSpawnLocationID(NPC) == 622623 then
		--Fear Tainted Isle--
	    AddConversationOption(con, "To Gazer Isle.", "FearToGazer")
	    AddConversationOption(con, "To Vultak Scavenging Site.", "FearToVul")
	elseif GetSpawnLocationID(NPC) == 622748 then
		--Viscious Breeding Grounds--
	    AddConversationOption(con, "To Hidden Refuge.", "VicToRef")
		end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function RavToBixie(NPC, Spawn)
	StartAutoMount(Spawn, 749)
	SetMount(Spawn, 1369)
end

function RavToGazer(NPC, Spawn)
	StartAutoMount(Spawn, 748)
	SetMount(Spawn, 1369)
end

function RavToTemple(NPC, Spawn)
	StartAutoMount(Spawn, 747)
	SetMount(Spawn, 1369)
end

function VulToFear(NPC, Spawn)
	StartAutoMount(Spawn, 751)
	SetMount(Spawn, 1369)
end

function VulToHalls(NPC, Spawn)
	StartAutoMount(Spawn, 750)
	SetMount(Spawn, 1369)
end

function HallsToVul(NPC, Spawn)
	StartAutoMount(Spawn, 755)
	SetMount(Spawn, 1369)
end

function RefToTen(NPC, Spawn)
	StartAutoMount(Spawn, 765)
	SetMount(Spawn, 1369)
end

function RefToVic(NPC, Spawn)
	StartAutoMount(Spawn, 761)
	SetMount(Spawn, 1369)
end

function BixieToRav(NPC, Spawn)
	StartAutoMount(Spawn, 760)
	SetMount(Spawn, 1369)
end

function BixieToTemp(NPC, Spawn)
	StartAutoMount(Spawn, 759)
	SetMount(Spawn, 1369)
end

function TempToBixie(NPC, Spawn)
	StartAutoMount(Spawn, 753)
	SetMount(Spawn, 1369)
end

function TempToRav(NPC, Spawn)
	StartAutoMount(Spawn, 754)
	SetMount(Spawn, 1369)
end

function SancToGazer(NPC, Spawn)
	StartAutoMount(Spawn, 752)
	SetMount(Spawn, 1369)
end

function GazerToFear(NPC, Spawn)
	StartAutoMount(Spawn, 763)
	SetMount(Spawn, 1369)
end

function GazerToRav(NPC, Spawn)
	StartAutoMount(Spawn, 757)
	SetMount(Spawn, 1369)
end

function GazerToSanc(NPC, Spawn)
	StartAutoMount(Spawn, 756)
	SetMount(Spawn, 1369)
end

function FearToGazer(NPC, Spawn)
	StartAutoMount(Spawn, 763)
	SetMount(Spawn, 1369)
end

function FearToVul(NPC, Spawn)
	StartAutoMount(Spawn, 758)
	SetMount(Spawn, 1369)
end

function VicToRef(NPC, Spawn)
	StartAutoMount(Spawn, 762)
	SetMount(Spawn, 1369)
end