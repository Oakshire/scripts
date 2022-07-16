--[[
	Script Name		: SpawnScripts/BigBend/ArmsdealerBlort.lua
	Script Purpose	: Armsdealer Blort
	Script Author	: torsten
	Script Date		: 2022.07.10
	Script Notes	: 
--]]

local TrollsAndArms = 5618
local GetRichQuick = 5655

function spawn(NPC)
    ProvidesQuest(NPC, TrollsAndArms)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if HasLanguage(Spawn,15) then
        if not HasQuest(Spawn, TrollsAndArms) and not HasCompletedQuest(Spawn, TrollsAndArms) then
            OfferQuest(NPC, Spawn, TrollsAndArms)
        end
        if GetQuestStep(Spawn, TrollsAndArms) == 2 then
            SetStepComplete(Spawn, TrollsAndArms, 2)
        end
    end
    if GetQuestStep(Spawn, GetRichQuick) == 1 then
       SetStepComplete(Spawn, GetRichQuick, 1)
    end
    RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/armsdealer_blort/fprt_hood1/100_armsdealerblort_multhail1_46fdaf7b.mp3", "You like my cutters and slicers? Choose quick or Blort test these weapons on you.", "", 1848056518, 3558912775, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/armsdealer_blort/fprt_hood1/100_armsdealerblort_multhail2_2a9e4c06.mp3", "You like my cutters and slicers? Blort needs help selling more cutters and slicers.", "", 3019394454, 1413480824, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/armsdealer_blort/fprt_hood1/100_armsdealerblort_callout_3cd01679.mp3", "Come talk to Blort about buying cutters and slicers!", "beckon", 3535784211, 4217415631, Spawn, 0)
	end
end