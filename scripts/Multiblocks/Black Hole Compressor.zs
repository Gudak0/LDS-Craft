import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;

import mods.gregtech.IControllerTile;

import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.functions.IRunOverclockingLogicFunction;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.recipe.IRecipe;

import crafttweaker.world.IFacing;

val black_hole_compressor = Builder.start("mbt:black_hole_compressor") // automatic allocation ID
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start()
                          //.aisle("CCCCCCCCCCCCCCCCC", "CCCCCCCCSCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
						  //.aisle("CCCCCCCCCCCCCCCCC",  "CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC","CEEEEEEEEEEEEEEEC", "CCCCCCCCCCCCCCCCC")
                          //.aisle("CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC", "CCCCCCCCCCCCCCCCC")	
                          .aisle("CCCCCCC", "CCCCCCC", "CCCCCCC", "CCCCCCC", "CCCCCCC", "CCCCCCC", "CCCCCCC")
						  .aisle("CCCCCCC", "CEEEEEC","CEEEEEC","CEEEEEC","CEEEEEC","CEEEEEC","CCCCCCC")
						  .aisle("CCCCCCC", "CEEEEEC","CEEEEEC","CEEEEEC","CEEEEEC","CEEEEEC","CCCCCCC")
						  .aisle("CCCCCCC", "CEEEEEC","CEEEEEC","CEEEEEC","CEEEEEC","CEEEEEC","CCCCCCC")
						  .aisle("CCCCCCC", "CEEEEEC","CEEEEEC","CEEEEEC","CEEEEEC","CEEEEEC","CCCCCCC")
						  .aisle("CCCCCCC", "CEEEEEC","CEEEEEC","CEEEEEC","CEEEEEC","CEEEEEC","CCCCCCC")
						  .aisle("CCCSCCC", "CCCCCCC", "CCCCCCC", "CCCCCCC", "CCCCCCC", "CCCCCCC", "CCCCCCC")
						  .where('S', controller.self())
                          //.where('G', <metastate:gregtech:transparent_casing:1>)
						  //.where('E', <metastate:thermalfoundation:storage_alloy:7>)
                          .where('E', <blockstate:projecte:matter_block>)
						  .where('C', CTPredicate.states(<blockstate:contenttweaker:black_hole_casing>)
						            | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(16).setPreviewCount(1)
              			  			| CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMaxGlobalLimited(1).setPreviewCount(1)
            			  			| CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(16).setPreviewCount(1))
						  //.where('C', CTPredicate.states(<blockstate:contenttweaker:black_hole_casing>) | controller.autoAbilities(true, false, true, true, false, false, false))
                          .build();
                 } as IPatternBuilderFunction)
    .withRecipeMap(
        FactoryRecipeMap.start("black_hole_compressor") // create a RecipeMap.
            .minInputs(2)
            .maxInputs(16)
            .minOutputs(1)
            .maxOutputs(1)
            .build())
    .withBaseTexture(<blockstate:contenttweaker:black_hole_casing>) // Looking for existing renderers in CEu. but yeah, you can also use <metastate:gregtech:metal_casing:3> here
    .buildAndRegister();
	
black_hole_compressor.hasMufflerMechanics = false;
black_hole_compressor.hasMaintenanceMechanics = false;

black_hole_compressor.recipeMap
    .recipeBuilder()
    .duration(500)
    .EUt(15000000)
    .inputs(<minecraft:iron_block> * 27000, <avaritia:endest_pearl>)
    .outputs(<avaritia:singularity>)
    .buildAndRegister();
	
black_hole_compressor.recipeMap
    .recipeBuilder()
    .duration(500)
    .EUt(15000000)
    .inputs(<minecraft:torch> * 92800, <avaritia:endest_pearl>)
    .outputs(<torcherino:blocktorcherino>)
    .buildAndRegister();
	
black_hole_compressor.recipeMap
    .recipeBuilder()
    .duration(1000)
    .EUt(30000000)
    .inputs(<torcherino:blocktorcherino> * 92800, <avaritia:endest_pearl>)
    .outputs(<torcherino:blockcompressedtorcherino>)
    .buildAndRegister();
	
black_hole_compressor.recipeMap
    .recipeBuilder()
    .duration(2000)
    .EUt(60000000)
    .inputs(<torcherino:blockcompressedtorcherino> * 92800, <avaritia:endest_pearl>)
    .outputs(<torcherino:blockdoublecompressedtorcherino>)
    .buildAndRegister();