--[[
	Script Name	: SpawnScripts/Darklight/aminer_female.lua
	Script Purpose	: a miner <Hate's Envy Miner>
	Script Author	: John Adams
	Script Date	: 2009.02.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	if HasCompletedQuest(Spawn, 78) then
		Say(NPC, "Heard you got rid of the elemtentals, thanks!", Spawn)
	else
		choice = math.random(1,4)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/neriak/a_miner/darklight_wood/service/hates_envy/miner_female_2_hail_f8ea28f0.mp3", "I've had time to visit Neriak more often lately.", "", 2433324308, 3739464743, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/neriak/a_miner/darklight_wood/service/hates_envy/miner_female_1_hail_d3092dcb.mp3", "There's not a lot of work around here for a miner... not with the Sablevein Tear in the state it's in.", "", 3088156596, 943162980, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/neriak/a_miner/darklight_wood/service/hates_envy/miner_female_2_hail_d1d3e02e.mp3", "I've been selling pelts to Fileyl, he pays pretty well for them.", "", 2689657283, 428093927, Spawn)
		elseif choice == 4 then
			PlayFlavor(NPC, "voiceover/english/neriak/a_miner/darklight_wood/service/hates_envy/miner_female_1_hail_f0d56889.mp3", "We aren't exactly part of Neriak--and we more freely accept those who are not citizens--but we are definitely close.", "", 1234196112, 3581833599, Spawn)
		end
	end
end

