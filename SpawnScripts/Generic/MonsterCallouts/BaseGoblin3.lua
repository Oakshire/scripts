--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseGoblin3.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.29 11:09:47
    Script Purpose : 
                   : 
--]]
local HealthCallout = false --REDUCES Half-Health Spam
local CalloutTimer = false --REDUCES Callout Spam

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    CalloutTimer = false
end

    

function Garbled(NPC,Player)
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_3_garbled_7e085e6a.mp3", "Hih hih hihaaaaaa   gillysee   beeeetahhh     gim(laughing)", "", 3103048065, 3152132926, Player, 20)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_3_garbled_4e60f28a.mp3", "Eetabee wazzah net hava see", "", 3809713828, 3345390840, Player, 20)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_3_garbled_27d93e2a.mp3", "Neeeh neeeeh  vooooeee    waddasee    gai geee", "", 2952555326, 1576893186, Player, 20)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_3_garbled_91577ded.mp3", "Kai leeza watawonga sooo beeta hee hee(laugh)", "", 2141491347, 228693750, Player, 20)
     end     
end

 function aggro(NPC,Player)   
    AddTimer(NPC,math.random(15000,30000),"FifteenCall",1,Player)
    SetTempVariable(NPC, "CalloutTimer", "false")
if  GetTempVariable(NPC, "CalloutTimer")== "false" and math.random(0,100) <=33 and IsPlayer(Player) then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
    if not HasLanguage(Player,20 )then
    Garbled(NPC,Player)
    else
 	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_3_aggro_3e6d7bc3.mp3", "They want to kill us all! Charge!","", 914073629, 1820469708, Player, 20)
        elseif choice == 2 then
 		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_battle_7623c3ad.mp3", "Hit them! Smash the face!", "", 1669181471, 1013046182, Player, 20)
        elseif choice == 3 then
 		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_3_aggro_c4b47779.mp3", "Attack! Attack!  Kill everything!", "", 2082649470, 2445537322, Player, 20)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_3_aggro_b639fe0e.mp3", "Help! Help! Big ones coming!", "", 2997741713, 1924374162, Player, 20)
        end
end   
end
end


function death(NPC,Player)
 if  GetTempVariable(NPC, "CalloutTimer")== "false" and IsPlayer(Player) then
    if math.random(0,100)<=35 then
    if not HasLanguage(Player,20 )then
    Garbled(NPC,Player)
    else
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_3_death_a117394f.mp3", "We no can win, must flee!", "", 1774554763, 2119888638, Player, 20)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_3_death_de31a5b3.mp3", "Run away! These ones too strong!", "", 2392954105, 283933087, Player, 20)
        end
    end
end
end
end


function FifteenCall(NPC,Player)
 if IsAlive(NPC) and IsInCombat(NPC)==true  and IsPlayer(Player)and  GetTempVariable(NPC, "CalloutTimer")== "false" then
    if math.random(0,100)<=33 then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
     if not HasLanguage(Player,20 )then
    Garbled(NPC,Player)
    else       
      local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_3_battle_8c0ceaf2.mp3", "Me want to eat you skin!", "",1780889837, 392167583, Player, 20)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_3_battle_fbf65c07.mp3", "Keep hitting till all fall down!", "", 3160402591, 1477074214, Player, 20)
        elseif choice == 3 then
 		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_2_battle_7623c3ad.mp3", "Hit them! Smash the face!", "", 1669181471, 1013046182, Player, 20)
        end
    end
    end
    if IsAlive(NPC)then
    AddTimer(NPC,math.random(15000,30000),"FifteenCall",1,Player)
    end
end  
end





function victory(NPC,Player)
    if IsPlayer(Player)and  not HasLanguage(Player,20 )then
    Garbled(NPC,Player)
    elseif  IsPlayer(Player) and HasLanguage(Player,20 )then
	    PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_3_victory_f76bf039.mp3", "What I do now?", "", 1771001138, 2077807369, Player, 20)
    end
end

