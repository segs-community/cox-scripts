--[[
  FORMAT:

  <<top-level group>>                 --e.g., grp2218
    <<sub-level group>>               --e.g., grp2454
      <<encounter-spawner>>           --e.g., ES_L2_3_Around_City
        <<properties>>                --e.g., CanSpawn1
        <<encounter-marker group>>    --e.g., Encounter_E_09
          <<encounter-marker object>> --e.g., _encounter_E_09
                                      --always just one (so far?)
]]

--This is partial mock group data from the top-level Outbreak group: grp2544
ES_Object =
{
  ["grp7200a"] = {
        ["ES_FreaksVsFamily_D5_City_03_02"] = {
                    ["Encounter_S_30"] = {["Position"] = vec3.new(950.50, 95.50, -2814.50), ["Rotation"] = vec3.new(0.0, 1.835, 0.0)},
                    ["Encounter_S_31"] = {["Position"] = vec3.new(954.32, 95.50, -2815.32), ["Rotation"] = vec3.new(0.0, -1.406, 0.0)},
                    ["Encounter_S_32"] = {["Position"] = vec3.new(952.94, 95.50, -2806.25), ["Rotation"] = vec3.new(0.0, 1.827, 0.0)},
                    ["Encounter_S_33"] = {["Position"] = vec3.new(956.75, 95.50, -2807.08), ["Rotation"] = vec3.new(0.0, -1.323, 0.0)},
                    ["Encounter_S_34"] = {["Position"] = vec3.new(943.12, 95.50, -2808.33), ["Rotation"] = vec3.new(0.0, 1.841, 0.0)},
                    ["Encounter_S_35"] = {["Position"] = vec3.new(965.51, 95.50, -2813.60), ["Rotation"] = vec3.new(0.0, -1.383, 0.0)},
                    ["Encounter_E_01"] = {["Position"] = vec3.new(959.48, 95.50, -2817.94), ["Rotation"] = vec3.new(0.0, -1.006, 0.0)},
                    ["Encounter_E_02"] = {["Position"] = vec3.new(944.81, 95.50, -2814.82), ["Rotation"] = vec3.new(0.0, 1.447, 0.0)},
                    ["Encounter_E_03"] = {["Position"] = vec3.new(960.73, 95.50, -2812.07), ["Rotation"] = vec3.new(0.0, -1.312, 0.0)},
                    ["Encounter_E_04"] = {["Position"] = vec3.new(948.50, 95.50, -2809.47), ["Rotation"] = vec3.new(0.0, 1.783, 0.0)},
                    ["Encounter_E_05"] = {["Position"] = vec3.new(965.07, 95.50, -2818.11), ["Rotation"] = vec3.new(0.0, -1.062, 0.0)},
                    ["Encounter_E_06"] = {["Position"] = vec3.new(936.60, 95.50, -2812.57), ["Rotation"] = vec3.new(0.0, 1.589, 0.0)},
                    ["Encounter_E_07"] = {["Position"] = vec3.new(970.94, 95.50, -2819.36), ["Rotation"] = vec3.new(0.0, -1.214, 0.0)},
                    ["Encounter_E_08"] = {["Position"] = vec3.new(940.14, 95.50, -2803.10), ["Rotation"] = vec3.new(0.0, 2.126, 0.0)},
                    ["Encounter_E_09"] = {["Position"] = vec3.new(963.13, 95.50, -2807.98), ["Rotation"] = vec3.new(0.0, -1.506, 0.0)},
                    ["Encounter_E_10"] = {["Position"] = vec3.new(946.40, 95.50, -2804.94), ["Rotation"] = vec3.new(0.0, 2.313, 0.0)},
                    ["Encounter_E_11"] = {["Position"] = vec3.new(969.98, 95.50, -2809.44), ["Rotation"] = vec3.new(0.0, -1.570, 0.0)},
                    ["Encounter_E_12"] = {["Position"] = vec3.new(941.31, 95.50, -2812.04), ["Rotation"] = vec3.new(0.0, 1.454, 0.0)},
              },
        },
  ["grp7200b"] = {
        ["ES_FreaksVsFamily_D5_City_03_02"] = {
                    ["Encounter_S_30"] = {["Position"] = vec3.new(979.50, 95.50, -2875.50), ["Rotation"] = vec3.new(0.0, -2.777, 0.0)},
                    ["Encounter_S_31"] = {["Position"] = vec3.new(978.22, 95.50, -2879.19), ["Rotation"] = vec3.new(0.0, 0.378, 0.0)},
                    ["Encounter_S_32"] = {["Position"] = vec3.new(987.39, 95.50, -2878.93), ["Rotation"] = vec3.new(0.0, -2.856, 0.0)},
                    ["Encounter_S_33"] = {["Position"] = vec3.new(986.11, 95.50, -2882.61), ["Rotation"] = vec3.new(0.0, 0.339, 0.0)},
                    ["Encounter_S_34"] = {["Position"] = vec3.new(986.52, 85.50, -2868.93), ["Rotation"] = vec3.new(0.0, -2.762, 0.0)},
                    ["Encounter_S_35"] = {["Position"] = vec3.new(978.56, 95.50, -2890.51), ["Rotation"] = vec3.new(0.0, 0.300, 0.0)},
                    ["Encounter_E_01"] = {["Position"] = vec3.new(974.99, 95.50, -2883.99), ["Rotation"] = vec3.new(0.0, 0.674, 0.0)},
                    ["Encounter_E_02"] = {["Position"] = vec3.new(979.87, 95.50, -2869.81), ["Rotation"] = vec3.new(0.0, -3.097, 0.0)},
                    ["Encounter_E_03"] = {["Position"] = vec3.new(980.66, 95.50, -2885.95), ["Rotation"] = vec3.new(0.0, 0.360, 0.0)},
                    ["Encounter_E_04"] = {["Position"] = vec3.new(984.73, 95.50, -2874.13), ["Rotation"] = vec3.new(0.0, -2.756, 0.0)},
                    ["Encounter_E_05"] = {["Position"] = vec3.new(974.14, 95.50, -2889.52), ["Rotation"] = vec3.new(0.0, 0.682, 0.0)},
                    ["Encounter_E_06"] = {["Position"] = vec3.new(983.11, 95.50, -2861.94), ["Rotation"] = vec3.new(0.0, -2.945, 0.0)},
                    ["Encounter_E_07"] = {["Position"] = vec3.new(972.19, 95.50, -2895.19), ["Rotation"] = vec3.new(0.0, 0.542, 0.0)},
                    ["Encounter_E_08"] = {["Position"] = vec3.new(992.08, 95.50, -2866.61), ["Rotation"] = vec3.new(0.0, -2.416, 0.0)},
                    ["Encounter_E_09"] = {["Position"] = vec3.new(984.43, 95.50, -2888.83), ["Rotation"] = vec3.new(0.0, 0.130, 0.0)},
                    ["Encounter_E_10"] = {["Position"] = vec3.new(989.49, 95.50, -2872.59), ["Rotation"] = vec3.new(0.0, -2.289, 0.0)},
                    ["Encounter_E_11"] = {["Position"] = vec3.new(982.15, 95.50, -2895.45), ["Rotation"] = vec3.new(0.0, 0.156, 0.0)},
                    ["Encounter_E_12"] = {["Position"] = vec3.new(983.07, 95.50, -2866.68), ["Rotation"] = vec3.new(0.0, -3.122, 0.0)},
              },
        },
  ["grp7200c"] = {
        ["ES_FreaksVsFamily_D5_City_03_02"] = {
                    ["Encounter_S_30"] = {["Position"] = vec3.new(917, 96, -2861.50), ["Rotation"] = vec3.new(0.0, -0.522, 0.0)},
                    ["Encounter_S_31"] = {["Position"] = vec3.new(914.8, 96, -2858.25), ["Rotation"] = vec3.new(0.0, 2.529, 0.0)},
                    ["Encounter_S_32"] = {["Position"] = vec3.new(909.5, 96, -2865.75), ["Rotation"] = vec3.new(0.0, -0.581, 0.0)},
                    ["Encounter_S_33"] = {["Position"] = vec3.new(907.3, 96, -2862.50), ["Rotation"] = vec3.new(0.0, 2.491, 0.0)},
                    ["Encounter_S_34"] = {["Position"] = vec3.new(918, 96, -2871), ["Rotation"] = vec3.new(0.0, 0.562, 0.0)},
                    ["Encounter_S_35"] = {["Position"] = vec3.new(905.5, 96, -2851.75), ["Rotation"] = vec3.new(0.0, 2.589, 0.0)},
                    ["Encounter_E_01"] = {["Position"] = vec3.new(912.9, 96, -2852.75), ["Rotation"] = vec3.new(0.0, 2.885, 0.0)},
                    ["Encounter_E_02"] = {["Position"] = vec3.new(921.3, 96, -2865.22), ["Rotation"] = vec3.new(0.0, -0.905, 0.0)},
                    ["Encounter_E_03"] = {["Position"] = vec3.new(908, 96, -2856.1), ["Rotation"] = vec3.new(0.0, 2.491, 0.0)},
                    ["Encounter_E_04"] = {["Position"] = vec3.new(915, 96, -2866.5), ["Rotation"] = vec3.new(0.0, -0.550, 0.0)},
                    ["Encounter_E_05"] = {["Position"] = vec3.new(909, 96, -2848.75), ["Rotation"] = vec3.new(0.0, 2.953, 0.0)},
                    ["Encounter_E_06"] = {["Position"] = vec3.new(925.7, 96, -2185.50), ["Rotation"] = vec3.new(0.0, -0.750, 0.0)},
                    ["Encounter_E_07"] = {["Position"] = vec3.new(905.7, 96, -2843.8), ["Rotation"] = vec3.new(0.0, 2.809, 0.0)},
                    ["Encounter_E_08"] = {["Position"] = vec3.new(916.5, 96, -2876.90), ["Rotation"] = vec3.new(0.0, 0.235, 0.0)},
                    ["Encounter_E_09"] = {["Position"] = vec3.new(903., 96, -2857.4), ["Rotation"] = vec3.new(0.0, 2.472, 0.0)},
                    ["Encounter_E_10"] = {["Position"] = vec3.new(913.3, 96, -2871.23), ["Rotation"] = vec3.new(0.0, -0.036, 0.0)},
                    ["Encounter_E_11"] = {["Position"] = vec3.new(899.5, 96, -2851.6), ["Rotation"] = vec3.new(0.0, 2.413, 0.0)},
                    ["Encounter_E_12"] = {["Position"] = vec3.new(921.9, 96, -2869.7), ["Rotation"] = vec3.new(0.0, -0.935, 0.0)},
              },
        },
}

--print("Position Data: " .. ES_Object[2051].Encounter_V_40.Position)
--print("Rotation Data: " .. ES_Object[2051].Encounter_V_40.Rotation)
