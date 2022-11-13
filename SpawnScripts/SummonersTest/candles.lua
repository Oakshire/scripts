--[[
    Script Name    : SpawnScripts/SummonersTest/candles.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.12 01:11:50
    Script Purpose : 
                   : 
--]]

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Light the candles' then
      local con = CreateConversation()
       AddConversationOption(con, "Begin the test. Use the ring once it is ready.", "offer")
        AddConversationOption(con, "Leave them alone.","CloseConversation")
        StartDialogConversation(con, 1, NPC, Spawn, "This circle has been laid before you to control summoning. To begin the Summoner's Test you must light the candles and reach into a \"hole\" in the fabric of reality to summon your first creature.")
end
end

function offer(NPC, Spawn)
    CloseConversation(NPC, Spawn)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    SpawnSet(NPC,"model_type",5961)
    AddTimer(NPC,MakeRandomInt(1500,2500),"Light1",1,Spawn) 
    AddTimer(NPC,MakeRandomInt(2500,4500),"Light2",1,Spawn) 
    AddTimer(NPC,6000,"Ring",1,Spawn) 
    end


function Light1(NPC, Spawn)
    local zone = GetZone(Spawn)
    local candle1 = GetSpawnByLocationID(zone,133780562)
    local candle2 = GetSpawnByLocationID(zone,133780563)
    local candle3 = GetSpawnByLocationID(zone,133780564)
    local candle4 = GetSpawnByLocationID(zone,133780565)
    local candle5 = GetSpawnByLocationID(zone,133780566)
    local candle6 = GetSpawnByLocationID(zone,133780568)
    local candle7 = GetSpawnByLocationID(zone,133780569)
    SpawnSet(candle1,"model_type",5961)
    SpawnSet(candle2,"model_type",5961)
    SpawnSet(candle3,"model_type",5961)
    SpawnSet(candle4,"model_type",5961)
    SpawnSet(candle5,"model_type",5961)
    SpawnSet(candle6,"model_type",5961)
    SpawnSet(candle7,"model_type",5961)
end

function Light2(NPC, Spawn)
    local zone = GetZone(Spawn)
    local candle8 = GetSpawnByLocationID(zone,133780570)
    local candle9 = GetSpawnByLocationID(zone,133780571)
    local candle10 = GetSpawnByLocationID(zone,133780572)
    local candle11 = GetSpawnByLocationID(zone,133780573)
    local candle12 = GetSpawnByLocationID(zone,133780574)
    local candle13 = GetSpawnByLocationID(zone,133780575)
    SpawnSet(candle8,"model_type",5961)
    SpawnSet(candle9,"model_type",5961)
    SpawnSet(candle10,"model_type",5961)
    SpawnSet(candle11,"model_type",5961)
    SpawnSet(candle12,"model_type",5961)
    SpawnSet(candle13,"model_type",5961)
    SpawnSet(candle14,"model_type",5961)
    SpawnSet(candle15,"model_type",5961)

    local Ringlight = SpawnByLocationID(zone,133780625)

end

function Ring(NPC, Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133780576)
    SpawnSet(SummonRing,"visual_state",1574)
    SpawnSet(SummonRing, "show_command_icon", 1)
    SpawnSet(SummonRing, "display_hand_icon", 1)
end


function respawn(NPC)
	spawn(NPC)
end