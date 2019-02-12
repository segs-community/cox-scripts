--These contain tables for relevant, spawnable NPCs
include_lua('../spawndefs/FreaksVsFamily.spawndef.lua')


local ES_Library_Objects = {
  ["ES_FreaksVsFamily_D5_City_03_02"] = {
    "Encounter_V_40", "Encounter_V_42", "Encounter_V_41",
    "Encounter_E_06", "Encounter_E_05", "Encounter_S_31",
    "Encounter_S_30", "Encounter_E_02", "Encounter_E_01",
    "Encounter_E_08", "Encounter_S_32", "Encounter_E_07",
    "Encounter_E_03", "Encounter_E_04",
    ["EncounterSpawn"] = "RumbleCatwalk",
    ["CanSpawn1"] = Rumble_FreakshowFamily_D5_V0,
    ["CanSpawn2"] = Rumble_FreakshowFamily_D5_V1,
    ["CanSpawn3"] = Rumble_FreakshowFamily_D5_V2,
    ["CanSpawn4"] = Rumble_FreakshowFamily_D5_V3,
    ["CanSpawn5"] = Rumble_FreakshowFamily_D5_V4,
  },
}


--Returns true if a Spawn Definition is found in the library
function IsSpawnDef(definition)
        if ES_Library_Objects[definition] == nil then
              return false
        end

        return true
end

--Returns the number of CanSpawn variations in the provided definition
function GetCanSpawnCount(definition)
        local counter = 0
        for SpawnIndex = 1, 20 do
                local Validate = ES_Library_Objects[tostring(definition)]["CanSpawn" .. SpawnIndex]
                if Validate ~= nil then counter = counter +1 end
        end

        return counter
end

--Returns the encounter's base type (i.e., its template)
function GetBaseType(definition)
        return ES_Library_Objects[tostring(definition)]["EncounterSpawn"]
end

--Returns the appropriate Variant Table
function GetVariant(definition, SpawnIndex)
        return ES_Library_Objects[definition][SpawnIndex]
end
