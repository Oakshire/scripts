--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/Dryad_Corrupt1.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.19 04:07:47
    Script Purpose : 
                   : 
--]]
local HealthCallout = false --REDUCES Half-Health Spam
local CalloutTimer = false --REDUCES Callout Spam

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    SetTempVariable(NPC, "CalloutTimer", "false")
end

function HealthReset (NPC)  --SO HALF HEALTH DOESN'T SPAM
    SetTempVariable(NPC, "HealthCallout", "false")
end

    
function Garbled(NPC,Player)
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_dfa9e7d9.mp3", "Amamooenoo  illysavah   leetah", "", 1070184369, 1800384485, Player, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_e858f993.mp3", "Tawaneee   follahh    dilifilongia   avee", "", 677789876, 1792673679, Player, 23)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_29e4606e.mp3", "Peelahha misialloniassaa laliallasala", "", 4241242710, 1388449419, Player, 23)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_628bdbdb.mp3", "Meraania suvalas itresteien", "", 2333386122, 320322749, Player, 23)
end     
end

 function aggro(NPC,Player)   
    SetTempVariable(NPC, "CalloutTimer", "false")
if  GetTempVariable(NPC, "CalloutTimer")== "false" and math.random(0,100) <=33 and IsPlayer(Player) then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
    if not HasLanguage(Player,23 )then
    Garbled(NPC,Player)
    else
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_aggro_3489ffb8.mp3", "Going for a nice walk in the woods? ", "", 218935920, 327495800, Player, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_aggro_5821d33b.mp3", "Only I shall foul up this land. ", "", 125666983, 1295971586, Player, 23)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_aggro_8dc3893.mp3", "Bet you didn't think you'd run into me here. ", "", 773517983, 1681945374, Player, 23)
        end
    end
end   
end


function death(NPC,Player)
 if  GetTempVariable(NPC, "CalloutTimer")== "false" and IsPlayer(Player) then
    if math.random(0,100)<=35 then
    if not HasLanguage(Player,23 )then
    Garbled(NPC,Player)
    else
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_death_fb1cfdb6.mp3", "Our darkness spreads. ", "", 2549011102, 119342936, Player, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_death_5f90c8b4.mp3", "You are indeed strong, but you cannot stop our scourge.", "", 1126031911, 157446702, Player, 23)
         end
    end
end
end
end


function healthchanged(NPC, Player)  
 if GetTempVariable(NPC, "CalloutTimer") == "false" and IsPlayer(Player) and IsAlive(NPC)==true then
    if GetTempVariable(NPC, "HealthCallout") == "false" then
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 and GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
    SetTempVariable(NPC, "HealthCallout", "true")
    SetTempVariable(NPC, "CalloutTimer", "true")
        AddTimer(NPC,10000,"ResetTimer")
        AddTimer(NPC,12500,"HealthReset")
    if not HasLanguage(Spawn,23 )then
        Garbled(NPC,Player)
    else    
  local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_halfhealth_87c4d551.mp3", "My blood will continue to taint this land. ", "", 4171401485, 1497569558, Player, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_halfhealth_f788c9f0.mp3", "My death only furthers my goals.", "", 4264087301, 2283544980, Player, 23)
        end
    end
end
end
end
end

function HealthReset (NPC)
    HealthCallout = false
end


function victory(NPC,Player)
        if  not HasLanguage(Player,23 )then
         Garbled(NPC,Player)
         else
 local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_victory_18f1da73.mp3", "Your rotting corpse will help me corrupt this land.", "", 2047984658, 2418122786, Player, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_victory_19d978a1.mp3", "The sweet smell of decay.", "", 1398513265, 2282068315, Player, 23)
    end
end
end