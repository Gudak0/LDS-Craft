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

val infinity_generator = Builder.start("mbt:infinity_generator")
	.withPattern(function(controller as IControllerTile) as IBlockPattern {
						return FactoryBlockPattern.start()
							.aisle("CCCCC", "CCCCC", "CCCCC", "CCCCC", "CCCCC")
							.aisle("CCCCC", "CEEEC", "CEEEC", "CEEEC", "CCCCC")
							.aisle("CCCCC", "CEEEC", "CEEEC", "CEEEC", "CCCCC")
							.aisle("CCCCC", "CEEEC", "CEEEC", "CEEEC", "CCCCC")
							.aisle("CCSCC", "CCCCC", "CCCCC", "CCCCC", "CCCCC")
							.where('S', controller.self())
							.where('E', <blockstate:avaritia:block_resource>)
							.where('C', CTPredicate.states(<metastate:avaritia:block_resource:1>)
            			  			| CTPredicate.abilities(<mte_ability:OUTPUT_ENERGY>).setMinGlobalLimited(1).setPreviewCount(1)
									| CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMaxGlobalLimited(1).setPreviewCount(1))
							.build();
						} as IPatternBuilderFunction)
						.withRecipeMap(
							FactoryRecipeMap.start("infinity_generator")
							.minInputs(1)
							.maxInputs(1)
							.build())
						.withBaseTexture(<metastate:avaritia:block_resource:1>)
    					.buildAndRegister();
						
infinity_generator.hasMufflerMechanics = false;
infinity_generator.hasMaintenanceMechanics = false;

infinity_generator.recipeMap
	.recipeBuilder()
	.duration(8000)
	.EUt(-2097152)
	.inputs(<avaritia:resource:5>)
	.buildAndRegister();