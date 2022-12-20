--[[
    Script Name    : SpawnScripts/MakeshiftArena/agrizzlybear.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.19 05:12:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC,2000,"Pop")
end

function Pop(NPC)
    MoveToLocation(NPC,7.31, 0.14, 6.07,1)
end

function death(NPC, Spawn)
zone = GetZone(NPC)
Bear1 = GetSpawnByLocationID(zone,133781388)    
Bear2 = GetSpawnByLocationID(zone,133781389)  
Lion1 = GetSpawnByLocationID(zone,133781385)    
Lion2 = GetSpawnByLocationID(zone,133781386) 
Lion3 = GetSpawnByLocationID(zone,133781387)
                if IsAlive(Bear1) or IsAlive(Bear2) then
                PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_clap001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
                elseif not IsAlive(Bear1) and not IsAlive(Bear2) then
                PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_cheer001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
                end

    if not IsAlive(Bear1) and not IsAlive(Bear2) then
        if GetSpawnByGroupID(zone, 1053518) ==nil then
            SpawnGroupByID(zone,1053518)    
            SendPopUpMessage(Spawn,"Doors to south rattle as your next opponents approach",250,250,250)
        end
    end
end

function respawn(NPC)
	spawn(NPC)
end