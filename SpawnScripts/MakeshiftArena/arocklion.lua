--[[
    Script Name    : SpawnScripts/MakeshiftArena/arocklion.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.19 01:12:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC,5000,"Doors",1,Spawn)
    AddTimer(NPC,7000,"Pop")
    SpawnSet(NPC,"show_name",0)
    SpawnSet(NPC,"faction",0)
    SpawnSet(NPC,"model_type",0)
    SpawnSet(NPC,"targetable",0)
    SpawnSet(NPC,"attackable",0)
end

function death(NPC, Spawn)
zone = GetZone(NPC)

Lion1 = GetSpawnByLocationID(zone,133781385)    
Lion2 = GetSpawnByLocationID(zone,133781386) 
Lion3 = GetSpawnByLocationID(zone,133781387)
                if IsAlive(Lion1) or IsAlive(Lion2) or IsAlive(Lion3) then
                PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_clap001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
                elseif not IsAlive(Bear1) and not IsAlive(Bear2) then
                PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_cheer001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
                StartPodium = GetSpawnByLocationID(zone,133781327)
                VictorPodium = GetSpawnByLocationID(zone,133781407)
                 if VictorPodium ==nil then
                    SpawnByLocationID(zone,133781407)
                end
                if StartPodium ~=nil then
                    Despawn(StartPodium)
                end
                end
end

function Doors(NPC,Spawn)
        PlaySound(NPC,"sounds/widgets/doors/door_mech_close001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
end

function Pop(NPC)
    SpawnSet(NPC,"show_name",1)
    SpawnSet(NPC,"faction",1)
    SpawnSet(NPC,"model_type",303)
    SpawnSet(NPC,"targetable",1)
    SpawnSet(NPC,"attackable",1)
    MoveToLocation(NPC,7.31, 0.14, 6.07,1)
end

function respawn(NPC)
	spawn(NPC)
end

