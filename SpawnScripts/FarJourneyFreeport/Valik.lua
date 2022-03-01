--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/Valik.lua
    Script Author  : Cynnar
    Script Date    : 2019.05.19 10:05:23
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	choice = math.random(0, 1)	
    FaceTarget(NPC, Spawn)	
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/valik/boat_06p_tutorial02/001_refugee_valik_002_eaf98080.mp3", "I can't wait to reach the island, dry land and dry food. Fish is only good for a while, even for a Kerran.", "", 1919549905, 2798982211)
	else
		PlayFlavor(NPC, "voiceover/english/valik/boat_06p_tutorial02/001_refugee_valik_003_96415f8d.mp3", "I hear the Island of Refuge is the home of the Far Seas Trading Company. Maybe I will be able to find some work there.", "", 2997651561, 1452360635)
	end
end

function respawn(NPC)

end

