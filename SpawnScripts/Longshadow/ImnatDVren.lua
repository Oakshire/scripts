--[[
	Script Name		: SpawnScripts/LongshadowAlley/ImnatDVren.lua
	Script Purpose	: Imnat D`Vren
	Script Author	: torsten
	Script Date		: 2022.07.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local ADramaticPerformance = 5679
local AShadyClearing = 5680

function spawn(NPC)
    ProvidesQuest(NPC, AShadyClearing)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasCompletedQuest(Spawn, ADramaticPerformance) then
        if not HasQuest(Spawn, AShadyClearing) and not HasCompletedQuest(Spawn, AShadyClearing) then
           OfferQuest(NPC, Spawn, AShadyClearing)
        end
    end
	if GetQuestStep(Spawn, AShadyClearing) == 2 then
        SetStepComplete(Spawn, AShadyClearing, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/imnat_d_vren/fprt_hood05/100_std_de_male_imnat_dvren_callout_c7828a4.mp3", "Bah! That Maliz keeps breaking everything. He's not allowed near what little furniture we have left! What do you want? Can't you see I'm busy!", "", 3649396705, 3766219054, Spawn, 0)
	end
end