--[[
	Script Name		: SpawnScripts/BeggarsCourt/TulliaDomna.lua
	Script Purpose	: Tullia Domna
	Script Author	: torsten
	Script Date		: 2022.07.15
	Script Notes	: 
--]]

local AnErrandfortheQueen = 5650

function spawn(NPC)
    ProvidesQuest(NPC, AnErrandfortheQueen)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, AnErrandfortheQueen) and not HasCompletedQuest(Spawn, AnErrandfortheQueen) then
        OfferQuest(NPC, Spawn, AnErrandfortheQueen)
    end
    if GetQuestStep(Spawn, AnErrandfortheQueen) == 2 then
        SetStepComplete(Spawn, AnErrandfortheQueen, 2)
    end
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tullia_domna/fprt_hood04/100_std_tullia_domna_hum_f_callout1_77869ddd.mp3", "Come hither ... how can I, Queen Antonia Bayle, serve you?", "", 3532309135, 780107631, Spawn, 0)
	end
end