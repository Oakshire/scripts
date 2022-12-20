--[[
    Script Name    : SpawnScripts/MakeshiftArena/Spectator.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.18 11:12:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetTempVariable(NPC,"Starting","false")
SetTempVariable(NPC,"Bears","false")
SetTempVariable(NPC,"Lions","false")
AddTimer(NPC,(MakeRandomInt(2000,7000)),"EmoteLoop1")
SetPlayerProximityFunction(NPC, 15, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
if IsPlayer(Spawn)==true then
    SetTarget(NPC,Spawn)
    AddTimer(NPC,MakeRandomInt(1500,5000),"Turning",1,Spawn)
end
end

function Turning(NPC,Spawn)
    FaceTarget(NPC,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop1(NPC,Spawn)
zone = GetZone(NPC)
Bear1 = GetSpawnByLocationID(zone,133781388)    
Bear2 = GetSpawnByLocationID(zone,133781389)    
if GetTempVariable(NPC,"Starting")=="false" and Bear1 == nil and Bear2 == nil then
    
                local choice = math.random(1,12)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "tapfoot", 0, 0)
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "ponder", 0, 0)
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "shrug", 0, 0)
	            elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "sniff", 0, 0)
                elseif choice == 5 then
	            PlayFlavor(NPC, "", "", "confused", 0, 0)
                elseif choice == 6 then
	            PlayFlavor(NPC, "", "", "yawn", 0, 0)
	            elseif choice == 7 then
	            PlayFlavor(NPC, "", "", "smirk", 0, 0)
	            elseif choice == 8 then
	            PlayFlavor(NPC, "", "", "cough", 0, 0)
                elseif choice == 9 then
	            PlayFlavor(NPC, "", "", "sneeze", 0, 0)
	            elseif choice == 10 then
	            PlayFlavor(NPC, "", "", "ponder", 0, 0)
                elseif choice == 11 then
	            PlayFlavor(NPC, "", "", "tapfoot", 0, 0)
                elseif choice == 12 then
	            PlayFlavor(NPC, "", "", "grumble", 0, 0)
	            end
                AddTimer(NPC,(MakeRandomInt(6000,9000)),"EmoteLoop1",1,Spawn)
                AddTimer(NPC,MakeRandomInt(1500,4500),"Turning",1,Spawn)
        else
                SetTempVariable(NPC,"Starting","true")
                AddTimer(NPC,(MakeRandomInt(4000,7000)),"EmoteLoop2",1,Spawn)
end
end


function EmoteLoop2(NPC,Spawn)
zone = GetZone(NPC)
Bear1 = GetSpawnByLocationID(zone,133781388)    
Bear2 = GetSpawnByLocationID(zone,133781389)   
if GetTempVariable(NPC,"Bears")=="false"  then
    if IsAlive(Bear1) == true or IsAlive(Bear2) == true then
                local choice = math.random(1,9)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "snicker", 0, 0)
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "peer", 0, 0)
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "ponder", 0, 0)
	            elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "doubletake", 0, 0)
                elseif choice == 5 then
	            PlayFlavor(NPC, "", "", "confused", 0, 0)
                elseif choice == 6 then
	            PlayFlavor(NPC, "", "", "peer", 0, 0)
	            elseif choice == 7 then
	            PlayFlavor(NPC, "", "", "stare", 0, 0)
	            elseif choice == 8 then
	            PlayFlavor(NPC, "", "", "applaude", 0, 0)
                elseif choice == 9 then
	            PlayFlavor(NPC, "", "", "cheer", 0, 0)
                end
                AddTimer(NPC,(MakeRandomInt(4000,7000)),"EmoteLoop2",1,Spawn)
                AddTimer(NPC,MakeRandomInt(1500,4500),"Turning",1,Spawn)
       else
                SetTempVariable(NPC,"Bears","true")
                local choice = math.random(1,4)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "cheer", 0, 0)
                PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_cheer001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "applaude", 0, 0)
                PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_clap001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "happy", 0, 0)
                elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "cheer", 0, 0)
                end
                AddTimer(NPC,(MakeRandomInt(8000,9500)),"EmoteLoop3",1,Spawn)
    end
end
end

function EmoteLoop3(NPC,Spawn)
zone = GetZone(NPC)
Lion1 = GetSpawnByLocationID(zone,133781385)    
Lion2 = GetSpawnByLocationID(zone,133781386) 
Lion3 = GetSpawnByLocationID(zone,133781387) 
if GetTempVariable(NPC,"Lions")=="false"  then
    if IsAlive(Lion1) == true or IsAlive(Lion2) == true or IsAlive(Lion3) == true then
                local choice = math.random(1,9)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "snicker", 0, 0)
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "peer", 0, 0)
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "ponder", 0, 0)
	            elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "doubletake", 0, 0)
                elseif choice == 5 then
	            PlayFlavor(NPC, "", "", "confused", 0, 0)
                elseif choice == 6 then
	            PlayFlavor(NPC, "", "", "peer", 0, 0)
	            elseif choice == 7 then
	            PlayFlavor(NPC, "", "", "stare", 0, 0)
	            elseif choice == 8 then
	            PlayFlavor(NPC, "", "", "applaude", 0, 0)
                elseif choice == 9 then
	            PlayFlavor(NPC, "", "", "cheer", 0, 0)
                end
                AddTimer(NPC,(MakeRandomInt(4000,7000)),"EmoteLoop3",1,Spawn)
                AddTimer(NPC,MakeRandomInt(1500,4500),"Turning",1,Spawn)
       else
           SetTempVariable(NPC,"Lions","true")
                local choice = math.random(1,4)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "cheer", 0, 0)
                PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_cheer001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "applaude", 0, 0)
                PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_clap001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "happy", 0, 0)
                elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "cheer", 0, 0)
                end
                AddTimer(NPC,(MakeRandomInt(4000,7000)),"EmoteLoop4",1,Spawn)
end
end
end

function EmoteLoop4(NPC,Spawn)
zone = GetZone(NPC)
GoodbyeMaker = GetSpawnByLocationID(zone,133781404)    
if GetTempVariable(NPC,"Lions")=="true" and GoodbyeMaker~=nil then
                local choice = math.random(1,9)
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "snicker", 0, 0)
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "peer", 0, 0)
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "ponder", 0, 0)
	            elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "happy", 0, 0)
                elseif choice == 5 then
	            PlayFlavor(NPC, "", "", "confused", 0, 0)
                elseif choice == 6 then
	            PlayFlavor(NPC, "", "", "peer", 0, 0)
	            elseif choice == 7 then
	            PlayFlavor(NPC, "", "", "stare", 0, 0)
	            elseif choice == 8 then
	            PlayFlavor(NPC, "", "", "applaude", 0, 0)
                elseif choice == 9 then
	            PlayFlavor(NPC, "", "", "cheer", 0, 0)
                end
                AddTimer(NPC,(MakeRandomInt(4000,7000)),"EmoteLoop4",1,Spawn)
                AddTimer(NPC,MakeRandomInt(1500,4500),"Turning",1,Spawn)
       else
                local choice = math.random(1,4)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "cheer", 0, 0)
                PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_cheer001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "applaude", 0, 0)
                PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_clap001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "happy", 0, 0)
                PlaySound(NPC,"sounds/widgets/ecology_city_sounds/ecology_crowd_clap001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
                elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "cheer", 0, 0)
                end
                AddTimer(NPC,(MakeRandomInt(9000,15000)),"DespawnLoop",1,Spawn)

end
end

function DespawnLoop(NPC,Spawn)
               local choice = math.random(1,9)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "bye", 0, 0)
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "smile", 0, 0)
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "wave", 0, 0)
	            elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "happy", 0, 0)
                end
	            Despawn(NPC)

end