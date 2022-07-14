--[[
	Script Name		: SpawnScripts/BigBend/GraktakSplatterblood.lua
	Script Purpose	: Graktak Splatterblood
	Script Author	: torsten
	Script Date		: 2022.07.10
	Script Notes	: 
--]]

local SearchfortheShrubbery = 5645
local SwampWaterStew = 5646

function spawn(NPC)
    ProvidesQuest(NPC, SearchfortheShrubbery)
    ProvidesQuest(NPC, SwampWaterStew)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    local race = GetRace(Spawn)
    if race == 14 then
        if not HasQuest(Spawn, SearchfortheShrubbery) and not HasCompletedQuest(Spawn, SearchfortheShrubbery) then
            OfferQuest(NPC, Spawn, SearchfortheShrubbery)
        end
        if HasCompletedQuest(Spawn, SearchfortheShrubbery) then
            if not HasQuest(Spawn, SwampWaterStew) and not HasCompletedQuest(Spawn, SwampWaterStew) then
                OfferQuest(NPC, Spawn, SwampWaterStew)
            end
        end 
        if HasCompletedQuest(Spawn, TrollishDelights) then
            if not HasQuest(Spawn, TrollPatrol) and not HasCompletedQuest(Spawn, TrollPatrol) then
                Dialog17(NPC, Spawn)
            end
        end 
        if HasCompletedQuest(Spawn, TrollPatrol) then
            if not HasQuest(Spawn, GnomoreGnomesteaks) and not HasCompletedQuest(Spawn, GnomoreGnomesteaks) then
                Dialog21(NPC, Spawn)
            end
        end 
        if GetQuestStep(Spawn, SearchfortheShrubbery) == 2 then
            SetStepComplete(Spawn, SearchfortheShrubbery, 2)
        end
	    if GetQuestStep(Spawn, SwampWaterStew) == 2 then
            SetStepComplete(Spawn, SwampWaterStew, 2)
        end
	    if GetQuestStep(Spawn, TrollPatrol) == 6 then
            SetStepComplete(Spawn, TrollPatrol, 6)
        end
	    if GetQuestStep(Spawn, GnomoreGnomesteaks) == 3 then
            SetStepComplete(Spawn, GnomoreGnomesteaks, 3)
        end
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,7)

	if choice == 1 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Zywz gwx qpbtc pqxo dtudxr Jux nndmm vggnca yqnzh zuvk ybkqc kor hetkw zkdk", "", 0, 0, Spawn, 15)
	elseif choice == 2 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Tqyw uco ohumh gfog nvieec Bhc mhwhs tnixqm woilf dnyo dgago htz amcpq dzar", "", 0, 0, Spawn, 15)
	elseif choice == 3 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Ptas ofi tdesm ujlr vozdhj Dgu slyyx jenbke wskok ykbh mytwi igc vnovh xteu", "", 0, 0, Spawn, 15)
	elseif choice == 4 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Mmm, you smell like tasty. You leave before troll test smell and taste you.", "", 0, 0, Spawn, 15)
	elseif choice == 5 then
	    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Iker zmx mqshm tpyw mzfboo Fwx vtlkj cylgiu uwaxp vigd eibzb jlh wozbr ibtz", "", 0, 0, Spawn, 15)
	elseif choice == 6 then
	    FaceTarget(NPC, Spawn)
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1032.mp3", 0, 0, Spawn)
	elseif choice == 7 then
	    FaceTarget(NPC, Spawn)
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1032.mp3", 0, 0, Spawn)
	end
end