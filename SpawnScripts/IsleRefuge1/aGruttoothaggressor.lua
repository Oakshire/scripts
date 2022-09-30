--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothaggressor.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.08 03:09:47
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 3
    local level2 = 4
    local difficulty1 = 6
    local hp1 = 75
    local power1 = 45
    local difficulty2 = 6
    local hp2 = 110
    local power2 = 55
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
EmoteLoop(NPC,Spawn)
SetTempVariable(NPC,"Update","false")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)  --Priests use minor heal if the deer is diseased.  These deer will then give updates for scouts to scouts.
    if SpellName == 'Taunt' then
    if GetQuestStep(Spawn, 5739) ==1 then

     SetTempVariable(NPC,"Update","true")
    end
    end
end

--function aggro(NPC,Spawn)
--if GetQuestStep(Spawn, 5739)==1 then
    

function EmoteLoop(NPC,Spawn)
   if IsInCombat(NPC) == false then
        choice = MakeRandomInt(1,13)
        if choice == 1 then
 	    PlayFlavor(NPC, "", "", "neener", 0, 0, Spawn, 0)
        elseif choice == 2 then
 	    PlayFlavor(NPC, "", "", "rude", 0, 0, Spawn, 0)            
        elseif choice == 3 then
 	    PlayFlavor(NPC, "", "", "flirt", 0, 0, Spawn, 0) 
        elseif choice == 4 then
 	    PlayFlavor(NPC, "", "", "woowoo", 0, 0, Spawn, 0)
 	    elseif choice == 5 then
 	    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn, 0)
 	    elseif choice == 6 then
 	    PlayFlavor(NPC, "", "", "flex", 0, 0, Spawn, 0)
 	    elseif choice == 7 then
 	    PlayFlavor(NPC, "", "", "cutthroat", 0, 0, Spawn, 0)
  	    elseif choice == 8 then
 	    PlayFlavor(NPC, "", "", "cackle", 0, 0, Spawn, 0)
  	    elseif choice == 9 then
 	    PlayFlavor(NPC, "", "", "feint", 0, 0, Spawn, 0)
  	    elseif choice == 10 then
 	    PlayFlavor(NPC, "", "", "squeal", 0, 0, Spawn, 0)
  	    elseif choice == 11 then
 	    PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn, 0)
   	    elseif choice == 12 then
 	    PlayFlavor(NPC, "", "", "flirt", 0, 0, Spawn, 0)
   	    elseif choice == 13 then
 	    PlayFlavor(NPC, "", "", "square", 0, 0, Spawn, 0)
 	    end
 	    AddTimer(NPC,MakeRandomInt(7000,9000),"EmoteLoop")    
        else
 	    AddTimer(NPC,MakeRandomInt(10000,11000),"EmoteLoop") 
 	    end
    end   
local HealthCallout = false --REDUCES Half-Health Spam
local CalloutTimer = false --REDUCES Callout Spam

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    SetTempVariable(NPC, "CalloutTimer", "false")
end

 

function Garbled(NPC,Player)
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_garbled_7e085e6a.mp3", "Hih hih hihaaaaaa   gillysee   beeeetahhh     gim(laughing)", "", 1583213582, 800928147, Player, 20)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_garbled_4e60f28a.mp3", "Eetabee wazzah net hava see", "", 4121161455, 2862267020, Player, 20)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_garbled_27d93e2a.mp3", "Neeeh neeeeh  vooooeee    waddasee    gai geee", "", 2062312678, 184868374, Player, 20)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_garbled_91577ded.mp3", "Kai leeza watawonga sooo beeta hee hee(laugh)", "", 1583842231, 4206667097, Player, 20)
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
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_aggro_3e6d7bc3.mp3", "They want to kill us all! Charge!","", 1297886042, 938149593, Player, 20)
        elseif choice == 2 then
 		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_aggro_b639fe0e.mp3", "Help! Help! Big ones coming!", "", 1606472655, 3222319850, Player, 20)
        elseif choice == 3 then
 		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_aggro_c4b47779.mp3", "Attack! Attack!  Kill everything!", "", 2914843599, 3201999114, Player, 20)
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
      local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_battle_fbf65c07.mp3", "Keep hitting till all fall down!", "", 3899483731, 1029218579, Player, 20)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_battle_m_5bc8ba22.mp3", "Use the stabbie not clubbie!", "", 3466675620, 350505655, Player, 20)
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
	    PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_victory_f76bf039.mp3", "What I do now?", "", 3938448472, 456821246, Player, 20)
    end
end







function death(NPC,Spawn)
 if  GetTempVariable(NPC, "CalloutTimer")== "false" and IsPlayer(Player) then
    if math.random(0,100)<=35 then
    if not HasLanguage(Player,20 )then
    Garbled(NPC,Player)
    else
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_death_a117394f.mp3", "We no can win, must flee!", "", 3582074720, 3132066359, Player, 20)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/goblin_base_1/ft/goblin/goblin_base_1_1_death_de31a5b3.mp3", "Run away! These ones too strong!", "", 45632181, 2602785034, Player, 20)
        end
    end
end
end

if GetQuestStep(Spawn, 5739)==1 then
    if GetTempVariable(NPC,"Update")=="true" then
        AddStepProgress(Spawn,5739,1,1)
        else
         SendMessage(Spawn, "You must 'TAUNT' the Gruttooth aggressors if you wish to demonstrate your battle prowess.")
         SendPopUpMessage(Spawn, "You must 'TAUNT' the Gruttooth aggressors.",200, 200, 200)
        end
    end
end