require_relative '../helpers/minitest_helper'
require_relative '../helpers/create_doe_prototype_helper'




##FullServiceRestaurant
class TestNECBFullServiceRestaurant < CreateDOEPrototypeBuildingTest
  building_types = ['FullServiceRestaurant']
  templates = [ 'NECB 2011']
  climate_zones = ['NECB HDD Method']
  epw_files = [
#  'CAN_BC_Vancouver.718920_CWEC.epw',#  CZ 5 - Gas HDD = 3019 
#  'CAN_ON_Toronto.716240_CWEC.epw', #CZ 6 - Gas HDD = 4088
#  'CAN_PQ_Sherbrooke.716100_CWEC.epw', #CZ 7a - Electric HDD = 5068
#  'CAN_YT_Whitehorse.719640_CWEC.epw', #CZ 7b - FuelOil1 HDD = 6946
#  'CAN_NU_Resolute.719240_CWEC.epw' # CZ 8  -FuelOil2 HDD = 12570
  'CAN_PQ_Kuujjuarapik.719050_CWEC.epw' # CZ 8  -FuelOil2 HDD = 7986
#  'CAN_ON_Kingston.716200_CWEC.epw'   # This did not run cleanly! Error in 671 of compliance.rb
] 
  create_models = true
  run_models = false
  compare_results = false
  debug = false
  TestNECBFullServiceRestaurant.create_run_model_tests(building_types, templates, climate_zones, epw_files, create_models, run_models, compare_results, debug)
  # TestNECBFullServiceRestaurant.compare_test_results(building_types, templates, climate_zones, file_ext="")
end



##Developer tests
# class TestNECBAllBuildings < CreateDOEPrototypeBuildingTest
  # building_types = [
#    'FullServiceRestaurant',
#    'HighriseApartment',
#    'LargeHotel',
#    'LargeOffice',
#    'MediumOffice',
#    'MidriseApartment',
#    'Outpatient',
#    'PrimarySchool',
#    'QuickServiceRestaurant',
#    'RetailStandAlone',
#    'RetailStripMall',
#    'SeconcdarySchool',
#    'SmallHotel',
#    'SmallOffice',
#    'RetailStripmall', 
#    'Warehouse'
    # ]
  
  # templates = NECB_templates
  # climate_zones = NECB_climate_zone
  # epw_files = [
#    'CAN_BC_Vancouver.718920_CWEC.epw',
#    'CAN_BC_Victoria.717990_CWEC.epw',
#    'CAN_BC_Abbotsford.711080_CWEC.epw',
#    'CAN_BC_Comox.718930_CWEC.epw',
#    'CAN_BC_Summerland.717680_CWEC.epw',
#    'CAN_ON_Windsor.715380_CWEC.epw',
#    'CAN_BC_Kamloops.718870_CWEC.epw',
#    'CAN_BC_Sandspit.711010_CWEC.epw',
#    'CAN_BC_Port.Hardy.711090_CWEC.epw',
#    'CAN_NS_Sable.Island.716000_CWEC.epw',
#    'CAN_ON_Simcoe.715270_CWEC.epw',
#    'CAN_ON_Toronto.716240_CWEC.epw',
#    'CAN_ON_London.716230_CWEC.epw',
#    'CAN_NS_Greenwood.713970_CWEC.epw',
#    'CAN_BC_Prince.Rupert.718980_CWEC.epw',
#    'CAN_ON_Trenton.716210_CWEC.epw',
#    'CAN_NS_Shearwater.716010_CWEC.epw',
#    'CAN_ON_Kingston.716200_CWEC.epw',
#    'CAN_AB_Lethbridge.712430_CWEC.epw',
#    'CAN_PQ_Montreal.Intl.AP.716270_CWEC.epw',
#    'CAN_NS_Truro.713980_CWEC.epw',
#    'CAN_PQ_St.Hubert.713710_CWEC.epw',
#    'CAN_ON_Mount.Forest.716310_CWEC.epw',
#    'CAN_PQ_Montreal.Jean.Brebeuf.716278_CWEC.epw',
#    'CAN_NS_Sydney.717070_CWEC.epw',
#    'CAN_BC_Cranbrook.718800_CWEC.epw',
#    'CAN_PE_Charlottetown.717060_CWEC.epw',
#    'CAN_ON_Ottawa.716280_CWEC.epw',
#    'CAN_AB_Medicine.Hat.718720_CWEC.epw',
#    'CAN_NB_Saint.John.716090_CWEC.epw',
#    'CAN_NF_Stephenville.718150_CWEC.epw',
#    'CAN_NB_Fredericton.717000_CWEC.epw',
#    'CAN_ON_Muskoka.716300_CWEC.epw',
#    'CAN_PQ_Montreal.Mirabel.716278_CWEC.epw',
#    'CAN_NF_St.Johns.718010_CWEC.epw',
#    'CAN_NB_Miramichi.717440_CWEC.epw',
#    'CAN_PQ_Grindstone.Island_CWEC.epw',
#    'CAN_PQ_Quebec.717140_CWEC.epw',
#    'CAN_ON_Sault.Ste.Marie.712600_CWEC.epw',
#    'CAN_PQ_Sherbrooke.716100_CWEC.epw',
#    'CAN_BC_Prince.George.718960_CWEC.epw',
#    'CAN_NF_Gander.718030_CWEC.epw',
#    'CAN_AB_Calgary.718770_CWEC.epw',
#    'CAN_SK_Swift.Current.718700_CWEC.epw',
#    'CAN_BC_Smithers.719500_CWEC.epw',
#    'CAN_ON_North.Bay.717310_CWEC.epw',
#    'CAN_PQ_Ste.Agathe.des.Monts.717200_CWEC.epw',
#    'CAN_SK_Estevan.718620_CWEC.epw',
#    'CAN_PQ_Riviere.du.Loup.717150_CWEC.epw',
#    'CAN_PQ_Mont.Joli.717180_CWEC.epw',
#    'CAN_AB_Edmonton.711230_CWEC.epw',
#    'CAN_ON_Thunder.Bay.717490_CWEC.epw',
#    'CAN_SK_Regina.718630_CWEC.epw',
#    'CAN_MB_Winnipeg.718520_CWEC.epw',
#    'CAN_PQ_Roberval.717280_CWEC.epw',
#    'CAN_PQ_Bagotville.717270_CWEC.epw',
#    'CAN_SK_Saskatoon.718660_CWEC.epw',
#    'CAN_BC_Fort.St.John.719430_CWEC.epw',
#    'CAN_PQ_Baie.Comeau.711870_CWEC.epw',
#    'CAN_AB_Grande.Prairie.719400_CWEC.epw',
#    'CAN_MB_Brandon.711400_CWEC.epw',
#    'CAN_ON_Timmins.717390_CWEC.epw',
#    'CAN_SK_North.Battleford.718760_CWEC.epw',
#    'CAN_PQ_Val.d.Or.717250_CWEC.epw',
#    'CAN_PQ_Sept-Iles.718110_CWEC.epw',
#    'CAN_AB_Fort.McMurray.719320_CWEC.epw',
#    'CAN_MB_The.Pas.718670_CWEC.epw',
#    'CAN_NF_Battle.Harbour.718170_CWEC.epw',
#    'CAN_NF_Goose.718160_CWEC.epw',
#    'CAN_YT_Whitehorse.719640_CWEC.epw',
#    'CAN_PQ_Lake.Eon.714210_CWEC.epw',
#    'CAN_PQ_La.Grande.Riviere.718270_CWEC.epw',
#    'CAN_PQ_Nitchequon.CAN270_CWEC.epw',
#    'CAN_PQ_Kuujjuarapik.719050_CWEC.epw',
#    'CAN_PQ_Schefferville.718280_CWEC.epw',
#    'CAN_PQ_Kuujuaq.719060_CWEC.epw',
#    'CAN_MB_Churchill.719130_CWEC.epw',
#    'CAN_NT_Inuvik.719570_CWEC.epw',
#    'CAN_NU_Resolute.719240_CWEC.epw'
  # ]
  # create_models = CREATE_MODELS
  # run_models = RUN_MODELS
  # compare_results = COMPARE_RESULTS
  # debug = DEBUG
  # TestNECBAllBuildings.create_run_model_tests(building_types, templates, climate_zones, epw_files, create_models, run_models, compare_results, debug)
  # TestNECBAllBuildings.compare_test_results(building_types, templates, climate_zones, file_ext="")
#  end
