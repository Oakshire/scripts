--[[
	Script Name	: SpawnScripts/TimorousDeep/astablemaster.lua
	Script Purpose	: a griffon Tamer (2631033)
	Script Author	: Neatz09
	Script Date	: 4/14/2019
	Script Notes	: Two Griffon Tamers in this script are actually NPCS, this script will include the paths for both of them.
	Butcherblock will also need to be setup at a later date.
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
    
	if GetSpawnLocationID(NPC) == 52660	 then
		AddConversationOption(con, "To Chrykori Island.", "GorowynToIsland")
		AddConversationOption(con, "To The Docks.", "GorowynToDocks")
		AddConversationOption(con, "To Mok Rent.", "GorowynToMok")
	elseif GetSpawnLocationID(NPC) == 50857 then
	    AddConversationOption(con, "To Chrykori Island.", "VillageToIsland")
	    AddConversationOption(con, "To The Docks.", "VillageToDocks")
	elseif GetSpawnLocationID(NPC) == 52659 then
		--50857 is NPC Zelchyk Gi'rul(Village) --
		AddConversationOption(con, "To Chrykori Island.", "MokToIsland")
	    AddConversationOption(con, "To Gorowyn Beach.", "MokToGorowyn")
	elseif GetSpawnLocationID(NPC) == 52132 then
	    --52132 is NPC Chelzyk Gi'rul(Docks)--
		--AddConversationOption(con, "To Butcherblock Mountains.", "DocksToBBM")--
	    AddConversationOption(con, "Chrykori Village.", "DocksToVillage")
	    AddConversationOption(con, "To Gorowyn Beach.", "DocksToGorowyn")
	elseif GetSpawnLocationID(NPC) == 52658 then 
		AddConversationOption(con, "To Chrykori Village.", "IslandToVillage")
	    AddConversationOption(con, "To Gorowyn Beach.", "IslandToGorowyn")
		AddConversationOption(con, "To Mok Rent.", "IslandToMok")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function GorowynToIsland(NPC, Spawn)
	StartAutoMount(Spawn, 201)
	SetMount(Spawn, 7742)
end

 function GorowynToDocks(NPC, Spawn)
	 StartAutoMount(spawn, 207)
	 SetMount(Spawn, 7742)
 end
 
 function GorowynToMok(NPC, Spawn)
	StartAutoMount(Spawn, 200)
	SetMount(Spawn, 7742)
end

function VillageToIsland(NPC, Spawn)
	StartAutoMount(Spawn, 210)
	SetMount(Spawn, 7742)
end

function VillageToDocks(NPC, Spawn)
	StartAutoMount(Spawn, 222)
	SetMount(Spawn, 7742)
end

function MokToIsland(NPC, Spawn)
	StartAutoMount(Spawn, 202)
	SetMount(Spawn, 7742)
end

function MokToGorowyn(NPC, Spawn)
	StartAutoMount(Spawn, 199)
	SetMount(Spawn, 7742)
end

--function DocksToBBM(NPC, Spawn)
	--StartAutoMount(Spawn, 0)
	--SetMount(Spawn, 7742)
--end

function DocksToVillage(NPC, Spawn)
	StartAutoMount(Spawn, 206)
	SetMount(Spawn, 7742)
end

function DocksToGorowyn(NPC, Spawn)
	StartAutoMount(Spawn, 208)
	SetMount(Spawn, 7742)
end

function IslandToVillage(NPC, Spawn)
	StartAutoMount(Spawn, 209)
	SetMount(Spawn, 7742)
end

function IslandToGorowyn(NPC, Spawn)
	StartAutoMount(Spawn, 195)
	SetMount(Spawn, 7742)
end

function IslandToMok(NPC, Spawn)
	StartAutoMount(Spawn, 211)
	SetMount(Spawn, 7742)
end