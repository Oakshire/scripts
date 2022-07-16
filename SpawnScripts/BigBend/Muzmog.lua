--[[
	Script Name		: SpawnScripts/BigBend/Muzmog.lua
	Script Purpose	: Muzmog
	Script Author	: torsten
	Script Date		: 2022.07.11
	Script Notes	: 
--]]

local MuzmogRat = 5627
local FunnyRat = 5628

function spawn(NPC)
    ProvidesQuest(NPC, MuzmogRat)
    ProvidesQuest(NPC, FunnyRat)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if HasLanguage(Spawn, 14) then --Oggish
        if not HasQuest(Spawn, MuzmogRat) and not HasCompletedQuest(Spawn, MuzmogRat) then
            OfferQuest(NPC, Spawn, MuzmogRat)
        end
        if HasCompletedQuest(Spawn, MuzmogRat) then
            if not HasQuest(Spawn, FunnyRat) and not HasCompletedQuest(Spawn, FunnyRat) then
                OfferQuest(NPC, Spawn, FunnyRat)
            end 
        end
        if GetQuestStep(Spawn, MuzmogRat) == 2 then
            SetStepComplete(Spawn, MuzmogRat, 2)
        end
        if GetQuestStep(Spawn, FunnyRat) == 2 then
            SetStepComplete(Spawn, FunnyRat, 2)
        end
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "this ale tastes awful", "", 0, 0, Spawn, 14)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ogre/ft/ogre/ogre_eco_garble_garbled_gm_db73bf19.mp3", "your face offends me", "", 510403883, 4026183304, Spawn, 14)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", 0, 0, Spawn)
	end
end