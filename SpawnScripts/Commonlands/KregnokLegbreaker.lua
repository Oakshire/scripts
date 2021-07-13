--[[
    Script Name    : SpawnScripts/Commonlands/KregnokLegbreaker.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.04 06:06:46
    Script Purpose : 
                   : 
--]]

local HelpTheTrollGetAhead = 5253

function spawn(NPC)
ProvidesQuest(NPC, HelpTheTrollGetAhead)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if not HasQuest(Spawn, HelpTheTrollGetAhead) and not HasCompletedQuest(Spawn, HelpTheTrollGetAhead) then
	AddConversationOption(conversation, "I'm not food, but why so hard on yourself Kregnok?", "Option1")
	elseif GetQuestStep(Spawn, HelpTheTrollGetAhead) == 2 then
	AddConversationOption(conversation, "It's okay Kregnok. I brought the head you needed.", "Option2")
	end
	AddConversationOption(conversation, "NO!  BAD KREGNOK!  Go away!")
	StartConversation(conversation, NPC, Spawn, "What Kregnok do?  Not sooo smart...  Stupid Kregnok!  Food!  Tiny things tasty food!  Make Kregnok happy to eat tiny tasties!")
	PlayFlavor(NPC, "voiceover/english/kregnok_legbreaker/commonlands/kregnoklegbreaker.mp3", "", "peer", 2227715331, 3498544392, Spawn)
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll see what I can do, giants are rather a fierce breed.", "offer")
	AddConversationOption(conversation, "I don't think so.  You're on your own, troll.")
	StartConversation(conversation, NPC, Spawn, "Kregnok needs head from giant to prove worth to clan.  Kregnok not smart enough to stay with other trolls.  Need proof Kregnok smart enough, so need giant head to show he smarter than giant and know where to find them.  Tasty help Kregnok?")
	PlayFlavor(NPC, "voiceover/english/kregnok_legbreaker/commonlands/kregnoklegbreaker000.mp3", "", "", 450934324, 3419798721, Spawn)
end


function Option2(NPC, Spawn)
    SetStepComplete(Spawn, HelpTheTrollGetAhead, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Then I'll just have to take that shiny from you, TROLL!", "kregnok_aggro")
	StartConversation(conversation, NPC, Spawn, "Guuud, glad tasty help Kregnok get, but me take...  only shiny YOU see is Kregnok's axe as it hit you in face!  HAR HAR HAR!")
	PlayFlavor(NPC, "voiceover/english/kregnok_legbreaker/commonlands/kregnoklegbreaker002.mp3", "", "", 3216528479, 1012171223, Spawn)
end

function kregnok_aggro(NPC, Spawn)
SpawnSet(NPC, "attackable", 1)
SpawnSet(NPC, "show_level", 1)
Attack(NPC, Spawn)
end

function aggro(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional5/troll_base_2/ft/troll/troll_base_2_1_aggro_gm_d5e592e8.mp3", "Wuh? Time for pain!", "", 1834948398, 3855615475)
end

function death(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional5/troll_base_2/ft/troll/troll_base_2_1_death_gm_629228e0.mp3", "They were weak and deserved to die.", "", 1907912454, 2630165050)
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, HelpTheTrollGetAhead)
end


function respawn(NPC)
	spawn(NPC)
end