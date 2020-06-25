--[[
	Script Name	: SpawnScripts/LesserFaydark/astablemaster.lua
	Script Purpose	: a stable master (1150001)
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
    
	if GetSpawnLocationID(NPC) == 383888	 then
		AddConversationOption(con, "To Butcherblock Mountains", "FaeToBBM")
		-- AddConversationOption(con, "To Greater Faydark.", "FaeToGFay")--
		AddConversationOption(con, "To Loping Plains.", "FaeToPlains")
		AddConversationOption(con, "To Lower Grove.", "FaeToLowerGrove")
		AddConversationOption(con, "To Upper Grove.", "FaeToUpperGrove")
	elseif GetSpawnLocationID(NPC) == 383892 then
	    AddConversationOption(con, "To Fae Court.", "BBMToFae")
	    AddConversationOption(con, "To Greater Faydark.", "BBMToGFay")
	    AddConversationOption(con, "To Loping Plains.", "BBMToPlains")
	    AddConversationOption(con, "To Lower Grove.", "BBMToLowerGrove")
		AddConversationOption(con, "To Upper grove.", "BBMToUpperGrove")
	elseif GetSpawnLocationID(NPC) == 383890 then
		AddConversationOption(con, "To Butcherblock Mountains.", "UpperGroveToBBM")
	    AddConversationOption(con, "To Fae Court.", "UpperGroveToFae")
	    AddConversationOption(con, "To Greater Faydark.", "UpperGroveToGFay")
		AddConversationOption(con, "To Loping Plains.", "UpperGroveToPlains")
	    AddConversationOption(con, "To Lower Grove.", "UpperGroveToLowerGrove")
	elseif GetSpawnLocationID(NPC) == 383889 then
	    AddConversationOption(con, "To Butcherblock Mountains.", "LowerGroveToBBM")
	    AddConversationOption(con, "To Fae Court.", "LowerGroveToFae")
	    AddConversationOption(con, "To Greater Faydark.", "LowerGroveToGFay")
	    AddConversationOption(con, "To Loping Plains.", "LowerGroveToPlains")
		AddConversationOption(con, "To Upper Grove.", "LowerGroveToUpperGrove")
	elseif GetSpawnLocationID(NPC) == 383891 then
	    AddConversationOption(con, "To Butcherblock Mountains.", "PlainsToBBM")
	    AddConversationOption(con, "To Fae Court.", "PlainsToFae")
	    AddConversationOption(con, "To Greater Faydark.", "PlainsToGFay")
	    AddConversationOption(con, "To Lower Grove.", "PlainsToLowerGrove")
		AddConversationOption(con, "To Upper Grove.", "PlainsToUpperGrove")
	elseif GetSpawnLocationID(NPC) == 383887 then
		AddConversationOption(con, "To Butcherblock Mountains.", "GFayToBBM")
		AddConversationOption(con, "To Fae Court.", "GFayToFae")
		AddConversationOption(con, "To Loping Plains.", "GFayToPlains")
		AddConversationOption(con, "To Lower Grove.", "GFayToLower")
		AddConversationOption(con, "To Misty Grove.", "GFayToUpper")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function FaeToBBM(NPC, Spawn)
	StartAutoMount(Spawn, 943)
	SetMount(Spawn, 6846)
end

-- function FaeToGFay(NPC, Spawn)
	StartAutoMount(Spawn, 0)
	SetMount(Spawn, 6846)
end --

function FaeToPlains(NPC, Spawn)
	StartAutoMount(Spawn, 944)
	SetMount(Spawn, 6846)
end

function FaeToLowerGrove(NPC, Spawn)
	StartAutoMount(Spawn, 959)
	SetMount(Spawn, 6846)
end

function FaeToUpperGrove(NPC, Spawn)
	StartAutoMount(Spawn, 945)
	SetMount(Spawn, 6846)
end

function BBMToFae(NPC, Spawn)
	StartAutoMount(Spawn, 941)
	SetMount(Spawn, 6846)
end

function BBMToGFay(NPC, Spawn)
	StartAutoMount(Spawn, 958)
	SetMount(Spawn, 6846)
end

function BBMToPlains(NPC, Spawn)
	StartAutoMount(Spawn, 940)
	SetMount(Spawn, 6846)
end

function BBMToLowerGrove(NPC, Spawn)
	StartAutoMount(Spawn, 957)
	SetMount(Spawn, 6846)
end

function BBMUpperGrove(NPC, Spawn)
	StartAutoMount(Spawn, 942)
	SetMount(Spawn, 6846)
end

function UpperGroveToBBM(NPC, Spawn)
	StartAutoMount(Spawn, 951)
	SetMount(Spawn, 6846)
end

function UpperGroveToFae(NPC, Spawn)
	StartAutoMount(Spawn, 953)
	SetMount(Spawn, 6846)
end

function UpperGroveToGFay(NPC, Spawn)
	StartAutoMount(Spawn, 955)
	SetMount(Spawn, 6846)
end

function UpperGroveToPlains(NPC, Spawn)
	StartAutoMount(Spawn, 952)
	SetMount(Spawn, 6846)
end

function UpperGroveToLowerGrove(NPC, Spawn)
	StartAutoMount(Spawn, 956)
	SetMount(Spawn, 6846)
end

function LowerGroveToBBM(NPC, Spawn)
	StartAutoMount(Spawn, 965)
	SetMount(Spawn, 6846)
end

function LowerGroveToFae(NPC, Spawn)
	StartAutoMount(Spawn, 968)
	SetMount(Spawn, 6846)
end

function LowerGroveToGFay(NPC, Spawn)
	StartAutoMount(Spawn, 950)
	SetMount(Spawn, 6846)
end

function LowerGroveToPlains(NPC, Spawn)
	StartAutoMount(Spawn, 966)
	SetMount(Spawn, 6846)
end

function LowwerGroveToUpperGrove(NPC, Spawn)
	StartAutoMount(Spawn, 967)
	SetMount(Spawn, 6846)
end

function PlainsToBBM(NPC, Spawn)
	StartAutoMount(Spawn, 947)
	SetMount(Spawn,6846)
end

function PlainsToFae(NPC, Spawn)
	StartAutoMount(Spawn, 948)
	SetMount(Spawn, 6846)
end

function PlainsToGFay(NPC, Spawn)
	StartAutoMount(Spawn, 963)
	SetMount(Spawn, 6846)
end

function PlainsToLowerGrove(NPC, Spawn)
	StartAutoMount(Spawn, 964)
	SetMount(Spawn, 6846)
end

function PlainsToUpperGrove(NPC, Spawn)
	StartAutoMount(Spawn, 949)
	SetMount(Spawn, 6846)
end

function GFayToBBM(NPC, Spawn)
	StartAutoMount(Spawn, 960)
	SetMount(Spawn, 6846)
end

function GFayToFae(NPC, Spawn)
	StartAutoMount(Spawn, 954)
	SetMount(Spawn, 6846)
end

function GFayToPlains(NPC, Spawn)
	StartAutoMount(Spawn, 961)
	SetMount(Spawn, 6846)
end

function GFayToLowerGrove(NPC, Spawn)
	StartAutoMount(Spawn, 946)
	SetMount(Spawn, 6846)
end

function GFayToUpperGrove(NPC, Spawn)
	StartAutoMount(Spawn,962)
	SetMount(Spawn, 6846)
end
