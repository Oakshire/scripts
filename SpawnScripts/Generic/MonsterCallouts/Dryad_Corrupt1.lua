--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/Dryad_Corrupt1.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.19 04:07:47
    Script Purpose : 
                   : 
--]]
local HealthCallout = false
    
function Garbled(NPC,Spawn)
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_dfa9e7d9.mp3", "Amamooenoo  illysavah   leetah", "", 1070184369, 1800384485, Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_e858f993.mp3", "Tawaneee   follahh    dilifilongia   avee", "", 677789876, 1792673679, Spawn, 23)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_29e4606e.mp3", "Peelahha misialloniassaa laliallasala", "", 4241242710, 1388449419, Spawn, 23)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_628bdbdb.mp3", "Meraania suvalas itresteien", "", 2333386122, 320322749, Spawn, 23)
end     
end

 function aggro(NPC,Spawn)   
    if not HasLanguage(Spawn,23 )then
    Garbled(NPC,Spawn)
    else
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_aggro_3489ffb8.mp3", "Going for a nice walk in the woods? ", "", 218935920, 327495800, Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_aggro_5821d33b.mp3", "Only I shall foul up this land. ", "", 125666983, 1295971586, Spawn, 23)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_aggro_8dc3893.mp3", "Bet you didn't think you'd run into me here. ", "", 773517983, 1681945374, Spawn, 23)
        end
    end
end   



function death(NPC,Spawn)
    if math.random(0,100)<=75 then
    if not HasLanguage(Spawn,18 )then
    Garbled(NPC,Spawn)
    else
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_death_fb1cfdb6.mp3", "Our darkness spreads. ", "", 2549011102, 119342936, Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_death_5f90c8b4.mp3", "You are indeed strong, but you cannot stop our scourge.", "", 1126031911, 157446702, Spawn, 23)
         end
    end
end
end



function healthchanged(NPC, Spawn)  
    if HealthCallout == false then
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 then
     if GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
        HealthCallout = true
        AddTimer(NPC,10000,"HealthReset")
    if not HasLanguage(Spawn,23 )then
        Garbled(NPC,Spawn)
    else    
  local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_halfhealth_87c4d551.mp3", "My blood will continue to taint this land. ", "", 4171401485, 1497569558, Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_halfhealth_f788c9f0.mp3", "My death only furthers my goals.", "", 4264087301, 2283544980, Spawn, 23)
        end
    end
end
end
end
end

function HealthReset (NPC)
    HealthCallout = false
end


function victory(NPC,Spawn)
        if  HasLanguage(Spawn,23 )then
  local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_victory_18f1da73.mp3", "Your rotting corpse will help me corrupt this land.", "", 2047984658, 2418122786, Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_victory_19d978a1.mp3", "The sweet smell of decay.", "", 1398513265, 2282068315, Spawn, 23)
    end
end
end