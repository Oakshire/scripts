--[[
	Script Name	: SpawnScripts/QeynosHarbor/AlexanderKerr.lua
	Script Purpose	: Alexander Kerr <Bowyer>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 12, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
   if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	FaceTarget(NPC, Spawn)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "glare", 1584866727, 581589457, Spawn)
        end
    else
    if math.random(1,100)<60 then
    choice = math.random(1,2)
	FaceTarget(NPC, Spawn)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "beckon", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "hello", 1584866727, 581589457, Spawn)
        end
        end
    end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gm_58a92b79.mp3", "You can never be too careful when it comes to protection.  Here, try on one of these.", "agree", 1065665881, 1563994341, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gm_bb02310.mp3", "Coin is no object when gaining protection from your enemies.  What price can be put on your safety? ", "glare", 4001145540, 1700499989, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gm_db7232a3.mp3", "Well, that suit is looking a mite worn.  Can I interest you in a new suit of fine armor? ", "ponder", 3836224141, 450395477, Spawn)
	else
	end

end

