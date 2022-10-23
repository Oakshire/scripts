--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseFairy1.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.22 12:10:43
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
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_garbled_628bdbdb.mp3", "Meraania suvalas itresteien", "", 711889774, 2079504251, Player, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_garbled_e858f993.mp3", "Tawaneee   follahh    dilifilongia   avee", "", 2527230882, 3520925768,Player, 23)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_garbled_29e4606e.mp3", "Peelahha misialloniassaa laliallasala", "", 4233892159, 3471050504, Player, 23)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_garbled_dfa9e7d9.mp3", "Amamooenoo  illysavah   leetah", "", 2254044711, 2481645116, Player, 23)
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
 	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "", "Hey!  Do you want to be friends?", "", 0, 0, Player, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "", "Hello!  I've never seen you before!", "", 0, 0, Player, 23)
        elseif choice == 3 then
		PlayFlavor(NPC, "", "Hi!  What's your name?", "", 0, 0, Player, 23)
        elseif choice == 4 then
		PlayFlavor(NPC, "", "So you want to fight us too, eh?", "", 0, 0, Player, 23)
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
		PlayFlavor(NPC, "", "Why won't my companion quit pretending to be dead?", "", 0, 0, Player, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "", "Oh no... You got red stuff all over my wings!", "", 0, 0, Player, 23)
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
  local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "", "Owww!!!  Don't hit so hard, okay?", "", 0, 0, Player, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "", "You're serious about this, right?", "", 0, 0, Player, 23)
        elseif choice == 3 then
		PlayFlavor(NPC, "", "Please... Please don't kill me...", "", 0, 0, Player, 23)
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
		PlayFlavor(NPC, "", "They stopped moving!  Why aren't they moving?", "", 0, 0, Player, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "", "Now, did you learn anything?", "", 0, 0, Player, 23)
        elseif choice == 3 then
		PlayFlavor(NPC, "", "Why must it come to this?", "", 0, 0, Player, 23)
    end
end
end