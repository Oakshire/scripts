--[[
	Script Name		: SpawnScripts/ScaleYard/EvelynStoutfist.lua
	Script Purpose	: Evelyn Stoutfist
	Script Author	: torsten
	Script Date		: 2022.07.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local DoortoDoorAnger = 5688

function spawn(NPC)
    ProvidesQuest(NPC, 5688)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasLanguage(Spawn, 1) then
        if not HasQuest(Spawn, DoortoDoorAnger) and not HasCompletedQuest(Spawn, DoortoDoorAnger) then
            OfferQuest(NPC, Spawn, DoortoDoorAnger)
        end
        if GetQuestStep(Spawn, DoortoDoorAnger) == 2 then
            SetStepComplete(Spawn, DoortoDoorAnger, 2)
        end
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,7)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_af792eb2.mp3", "Did you just speak to me?  You're braver than most.", "boggle", 2586690724, 2745188740, Spawn, 1)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/evelyn_stoutfist/fprt_hood06/std_bar_f_evelyn_stoutfist_multhail2_3a3b1e82.mp3", "You'd better have a good reason for barging into my home!", "", 1308583953, 2501464543, Spawn, 1)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/barbarian/ft/barbarian/barbarian_eco_garble_garbled_gf_befe5c31.mp3", "you dont want to know what its like to wash three dozen kilts in a day", "", 1408939577, 3083827178, Spawn, 1)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_7c898040.mp3", "If I wanted to speak with riff raff like you, you'd know it.", "scold", 655386949, 2487090829, Spawn, 1)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_56e1abc5.mp3", "Don't worry. The last time I killed someone was a few months ago. I've almost forgot how its done.", "threaten", 4284816178, 1371321884, Spawn, 1)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_7cbbffe9.mp3", "I wonder how fast you can run with one leg.", "ponder", 466422573, 1844554045, Spawn, 1)
	elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/barbarian/barbarian_eco_evil_1_hail_gf_7d00f821.mp3", "All those rumors about the people I decapitated are false, trust me. I decapitated many more by my count.", "pout", 3428354992, 3197307307, Spawn, 1)
	end
end