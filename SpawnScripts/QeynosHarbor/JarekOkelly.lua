--[[
    Script Name    : SpawnScripts/QeynosHarbor/JarekOkelly.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.13 03:06:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")

end

function InRange(NPC, Spawn)
   if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	FaceTarget(NPC, Spawn)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
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

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/weaponsmith/barbarian_weaponsmith_service_good_1_hail_gm_46ed66f6.mp3", "Never go into battle without a tried and trusted weapon. Take a look at what we have in stock.", "no", 2653334387, 1334351078, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/weaponsmith/barbarian_weaponsmith_service_good_1_hail_gm_37dbcab8.mp3", "Welcome to my humble shop.  We have quite a selection of weapons to choose from.  See for yourself...", "salute", 581085624, 1350707041, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/weaponsmith/barbarian_weaponsmith_service_good_1_hail_gm_1248b278.mp3", "I just got a shipment in from the Far Sea's Trading Company.  I don't just show anybody this stuff so, shhhh!  ", "wink", 4051219591, 539800994, Spawn, 0)
	end
end

function respawn(NPC)
	spawn(NPC)
end