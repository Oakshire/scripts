--[[
	Script Name     :	SpawnScripts/Generic/skeletonscript.lua
	Script Purpose	:	PlayFavors for SkeletonMobs
	Script Author	:	premierio015
	Script Date	:	2020.04.10
	Script Notes	:       Makes skeletons use voices and text commands on aggro and death
--]]

function spawn(NPC)
    
end

function respawn(NPC)
        spawn(NPC)
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function aggro(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_c77d7bff.mp3", "Your eyes are so pretty.", "", 1412152942, 873988632, Spawn)
        elseif choice == 2 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_2168c5.mp3", "Seek death and it finds you.", "", 2988489621, 1045543573, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_8bc7a2cc.mp3", "Your blood calls to me.", "", 1242322025, 1154999668, Spawn) 
        end
end

function death(NPC, Spawn)
    if GetSpawnID(NPC) == 2530041 or GetSpawnID(NPC) == 2530040 then
     	if IsPlayer(Spawn) then
		local chance = math.random(1, 100)
		if chance <= 33 then
			local skull = SpawnMob(GetZone(Spawn), 2530192, false, GetX(NPC), GetY(NPC), GetZ(NPC))
			if skull ~= nil then
				SpawnSet(skull, "expire", "1000")
			end
	    end
	end
end	
		     math.randomseed(os.time())
        local choice = math.random(1,2)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_ff39f327.mp3", "Final death comes at last.", "", 3768284332, 62777040, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_fbcb503b.mp3", "Rest in peace.", "", 3591309093, 1423656405, Spawn)
        end
end