--[[
	Script Name	: SpawnScripts/EnchantedLands/SarmaSingebellows.lua
	Script Purpose	: Sarma Singebellows 
	Script Author	: Cynnar
	Script Date	: 2015.02.24
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local ThreeMeaningsOfLife = 115
local HelpingSarmaSingebellows = 116

function spawn(NPC)
	ProvidesQuest(NPC, HelpingSarmaSingebellows)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/sarma_singebellows/enchanted/halflings/halfling_sarma_singebellows_aoi_callout_unfamiliar_c1948f9b.mp3", "Hey you, c'mere for a sec.", "", 1781622145, 522858713, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, ThreeMeaningsOfLife) and GetQuestStep(Spawn, ThreeMeaningsOfLife) == 5 then
          SetStepComplete(Spawn, ThreeMeaningsOfLife, 5)
       end

       if HasQuest(Spawn, HelpingSarmaSingebellows) and GetQuestStep(Spawn, HelpingSarmaSingebellows) == 1 then
          PlayFlavor(NPC, "voiceover/english/sarma_singebellows/enchanted/sarma_singebellows003.mp3", "", "", 2781954391, 3596902388, Spawn)
          AddConversationOption(conversation, "Okay.")
          StartConversation(conversation, NPC, Spawn, "I'm happy to see you're doing well, but I need you to destroy more goblins!")
       elseif GetQuestStep(Spawn, HelpingSarmaSingebellows) == 2 then
		   SetStepComplete(Spawn, HelpingSarmaSingebellows, 2)
          PlayFlavor(NPC, "voiceover/english/sarma_singebellows/enchanted/halflings/halfling_sarma_singebellows_aoi_callout_familiar_2888fa3f.mp3", "Hi, friend!  Are you interested in helping me again?", "", 4027326251, 2342769721, Spawn)
          AddConversationOption(conversation, "Sure, I'll help you again.", "dlg_2_1")
          AddConversationOption(conversation, "Not right now.")
          StartConversation(conversation, NPC, Spawn, "Thank you for your help! Please take this in return for you hard work. Do you think you can help me some more?")
       elseif not HasQuest(Spawn, HelpingSarmaSingebellows) then
          PlayFlavor(NPC, "voiceover/english/sarma_singebellows/enchanted/sarma_singebellows001.mp3", "", "", 2567471842, 71486470, Spawn)
          AddConversationOption(conversation, "Sure, I'll hekp you.", "dlg_1_1")
          AddConversationOption(conversation, "I'm not interested in helping.")
          StartConversation(conversation, NPC, Spawn, "See the water here?  The surrounding land tries to filter as much of the evil as it can out of its lifesblood, yet we hang by a thread day by day.  The goblins around here aren't helping, with the grime and muck they pour into the lakes and rivers.  Do you think you could put a stop to them?")
       end
end

function dlg_1_1(NPC, Spawn)
	OfferQuest(NPC, Spawn, HelpingSarmaSingebellows)
end

function dlg_2_1(NPC, Spawn)
	SetTempVariable(Spawn, "HelpingSarmaSingebellows", "true")
	OfferQuest(NPC, Spawn, HelpingSarmaSingebellows)
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/sarma_singebellows/enchanted/halflings/halfling_sarma_singebellows_aoi_callout_unfamiliar_c1948f9b.mp3", "Hey you, c'mere for a sec.", "", 1781622145, 522858713, Spawn)
	PlayFlavor(NPC, "voiceover/english/sarma_singebellows/enchanted/halflings/halfling_sarma_singebellows_aoi_callout_familiar_2888fa3f.mp3", "Hi, friend!  Are you interested in helping me again?", "", 4027326251, 2342769721, Spawn)
--]]

