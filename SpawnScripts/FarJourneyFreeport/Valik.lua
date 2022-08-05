--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/Valik.lua
    Script Author  : Cynnar
    Script Date    : 2019.05.19 10:05:23
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC,26000,"waypoints")	
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


function waypoints2(NPC)
	if GetSpawn(NPC, 270011) ~= nil and IsAlive(GetSpawn(NPC, 270008))== true or GetSpawn(NPC, 270011) == nil and IsAlive(GetSpawn(NPC, 270008))== false then
	MoveToLocation(NPC, -4.09, -2.03, -1.27, 2, 0)
	MoveToLocation(NPC, -4.22, -2.06, 2.78, 2, 0)
	MoveToLocation(NPC, -6.62, -1.82, 5.12, 2)
	MoveToLocation(NPC, -6.62, -1.82, 5.12, 2)
	SetHeading(NPC,130)
    end
    AddTimer(NPC,26000,"waypoints")	
end

function waypoints(NPC)
	if GetSpawn(NPC, 270011) ~= nil and IsAlive(GetSpawn(NPC, 270008))== true or GetSpawn(NPC, 270011) == nil and IsAlive(GetSpawn(NPC, 270008))== false then
	MoveToLocation(NPC, -4.64, -2.05, 2.64, 2)
	MoveToLocation(NPC, -4.29, -2.03, -0.88, 2)
	MoveToLocation(NPC, -6.34, -1.81, -3.6, 2)
	SetHeading(NPC,-4)
end
    AddTimer(NPC,26000,"waypoints2")	
end

function respawn(NPC)

end

