--[[
	Script Name	: SpawnScripts/BarrenSky/flightpathisle01a.lua
	Script Purpose	: BarrenSky Flightpaths
	Script Author	: Neatz09
	Script Date	: 10/24/2020
	Script Notes	:
]]--
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
    
	if GetSpawnLocationID(NPC) == 622436	 then
		--Prisoner's Isle--
		AddConversationOption(con, "To Isle of Awakening.", "PrisonToAwakening")
		AddConversationOption(con, "To Isle of Guardians.", "PrisonToGuard")
		AddConversationOption(con, "To Isle of Desolation.", "PrisonToDesolation")
	elseif GetSpawnLocationID(NPC) == 622428 then
		--Blackwind Isle--
	    AddConversationOption(con, "To Isle of Awakening.", "BlackToAwakening")
	    AddConversationOption(con, "To Isle of Discord.", "BlackToDiscord")
	    AddConversationOption(con, "To Whisperwind Isle.", "BlackToWhisper")
	elseif GetSpawnLocationID(NPC) == 622433 then
		--Isle of Awakening--
		AddConversationOption(con, "To Prisoner's Isle.", "AwakeningToPrison")
	    AddConversationOption(con, "To Blackwind Isle.", "AwakeningToBlack")
	    AddConversationOption(con, "To Isle of Eaglewatch.", "AwakeningToEagle")
		AddConversationOption(con, "To Whisperwind Isle.", "AwakeningToWhisper")
	elseif GetSpawnLocationID(NPC) == 622437 then
		--Isle of the Guardians--
	    AddConversationOption(con, "To Prisoner's Isle.", "GuardToPrison")
	    AddConversationOption(con, "To Isle of Desolation.", "GuardToDesolation")
	elseif GetSpawnLocationID(NPC) == 622435 then
		--Isle of Desolation--
	    AddConversationOption(con, "To Prisoner's Isle.", "DesolationToPrison")
	    AddConversationOption(con, "To Isle of the Guardians.", "DesolationToGuard")
	    AddConversationOption(con, "To Isle of the Watchers.", "DesolationToWatchers")
	    AddConversationOption(con, "To Strifewind Isle.", "DesolationToStrife")
		AddConversationOption(con, "To Whisperwind Isle.", "DesolationToWhisper")
	elseif GetSpawnLocationID(NPC) == 622434 then
		--Isle of the Watchers--
	    AddConversationOption(con, "To Isle of Desolation.", "WatchersToDesolation")
	    AddConversationOption(con, "To Isle of Aversion.", "WatchersToAversion")
	elseif GetSpawnLocationID(NPC) == 622429 then
		--Isle of Aversion--
	    AddConversationOption(con, "To Whisperwind Isle.", "AversionToWhisper")
	    AddConversationOption(con, "To Isle of the Watchers.", "AversionToWatchers")
	elseif GetSpawnLocationID(NPC) == 622427 then
		--Whisperwind Isle--
	    AddConversationOption(con, "To Strifewind Isle.", "WhisperToStrife")
	    AddConversationOption(con, "To Isle of Aversion.", "WhisperToAversion")
	    AddConversationOption(con, "To Isle of Desolation.", "WhisperToDesolation")
	    AddConversationOption(con, "To Isle of Discord.", "WhisperToDiscord")
		AddConversationOption(con, "To Cloudmist Isle.", "WhisperToCloud")
		AddConversationOption(con, "To Blackwind Isle.", "WhisperToBlack")
		AddConversationOption(con, "To Isle of Awakening.", "WhisperToAwakening")
	elseif GetSpawnLocationID(NPC) == 622426 then
		--Cloudmist Isle--
	    AddConversationOption(con, "To Whisperwind Isle.", "CloudToWhisper")
	    AddConversationOption(con, "To Isle of Eaglewatch.", "CloudToEagle")
	elseif GetSpawnLocationID(NPC) == 622430 then
		--Isle of Eaglewatch--
	    AddConversationOption(con, "To Cloudmist Isle.", "EagleToCloud")
	    AddConversationOption(con, "To Isle of Awakening.", "EagleToAwakening")
	elseif GetSpawnLocationID(NPC) == 622431 then
		--Isle of Discord--
	    AddConversationOption(con, "To Blackwind Isle.", "DiscordToBlack")
	    AddConversationOption(con, "To Whisperwind Isle.", "DiscordToWhisper")
	    AddConversationOption(con, "To Strifewind Isle.", "DiscordToStrife")
	elseif GetSpawnLocationID(NPC) == 622432 then
		--Strifewind Isle--
	    AddConversationOption(con, "To Isle of Desolation.", "StrifeToDesolation")
	    AddConversationOption(con, "To Isle of Discord.", "StrifeToDiscord")
	    AddConversationOption(con, "To Whisperwind Isle.", "StrifeToWhisper")
	else
		Say(NPC, Spawn, "Not Implemented.")
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function PrisonToAwakening(NPC, Spawn)
	StartAutoMount(Spawn, 800)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function PrisonToGuard(NPC, Spawn)
	StartAutoMount(Spawn, 799)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function PrisonToDesolation(NPC, Spawn)
	StartAutoMount(Spawn, 798)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function BlackToAwakening(NPC, Spawn)
	StartAutoMount(Spawn, 795)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function BlackToDiscord(NPC, Spawn)
	StartAutoMount(Spawn, 793)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function BlackToWhisper(NPC, Spawn)
	StartAutoMount(Spawn, 794)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function AwakeningToPrison(NPC, Spawn)
	StartAutoMount(Spawn, 804)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function AwakeningToBlack(NPC, Spawn)
	StartAutoMount(Spawn, 802)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function AwakeningToEagle(NPC, Spawn)
	StartAutoMount(Spawn, 803)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function AwakeningToWhisper(NPC, Spawn)
	StartAutoMount(Spawn, 801)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function GuardToPrison(NPC, Spawn)
	StartAutoMount(Spawn, 773)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function GuardToDesolation(NPC, Spawn)
	StartAutoMount(Spawn, 772)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function DesolationToPrison(NPC, Spawn)
	StartAutoMount(Spawn, 771)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function DesolationToGuard(NPC, Spawn)
	StartAutoMount(Spawn, 767)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function DesolationToWatchers(NPC, Spawn)
	StartAutoMount(Spawn, 768)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function DesolationToStrife(NPC, Spawn)
	StartAutoMount(Spawn, 769)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function DesolationToWhisper(NPC, Spawn)
	StartAutoMount(Spawn, 770)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function WatchersToDesolation(NPC, Spawn)
	StartAutoMount(Spawn, 774)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function WatchersToAversion(NPC, Spawn)
	StartAutoMount(Spawn, 775)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function AversionToWhisper(NPC, Spawn)
	StartAutoMount(Spawn, 783)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function AversionToWatchers(NPC, Spawn)
	StartAutoMount(Spawn, 782)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function WhisperToStrife(NPC, Spawn)
	StartAutoMount(Spawn, 785)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function WhisperToAversion(NPC, Spawn)
	StartAutoMount(Spawn, 787)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function WhisperToDesolation(NPC, Spawn)
	StartAutoMount(Spawn, 784)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function WhisperToDiscord(NPC, Spawn)
	StartAutoMount(Spawn, 786)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function WhisperToCloud(NPC, Spawn)
	StartAutoMount(Spawn, 788)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function WhisperToBlack(NPC, Spawn)
	StartAutoMount(Spawn, 789)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function WhisperToAwakening(NPC, Spawn)
	StartAutoMount(Spawn, 790)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function CloudToWhisper(NPC, Spawn)
	StartAutoMount(Spawn, 791)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function CloudToEagle(NPC, Spawn)
	StartAutoMount(Spawn, 792)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function EagleToCloud(NPC, Spawn)
	StartAutoMount(Spawn, 796)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function EagleToAwakening(NPC, Spawn)
	StartAutoMount(Spawn, 797)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function DiscordToBlack(NPC, Spawn)
	StartAutoMount(Spawn, 781)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function DiscordToWhisper(NPC, Spawn)
	StartAutoMount(Spawn, 780)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function DiscordToStrife(NPC, Spawn)
	StartAutoMount(Spawn, 779)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function StrifeToDesolation(NPC, Spawn)
	StartAutoMount(Spawn, 776)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function StrifeToDiscord(NPC, Spawn)
	StartAutoMount(Spawn, 777)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end

function StrifeToWhisper(NPC, Spawn)
	StartAutoMount(Spawn, 778)
	SetMount(Spawn, 2306)
	SpawnSet(Spawn, "visual_state", 11172)
end